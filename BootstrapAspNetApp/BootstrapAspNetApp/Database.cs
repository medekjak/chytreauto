using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Globalization;

namespace BootstrapAspNetApp
{
    public class MyDatabase
    {
        //.ToString("yyyy-MM-dd HH:mm:ss.fff")
        private int dbTimeout = 0;
        //private int DBRecordCountLimit = 1000;
        public SqlConnection connection = null;
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MAINSYSTEMConnectionString"].ConnectionString;
        public MyDatabase()
        {

            //try
            //{


            //}
            //catch (Exception es)
            //{
            //    Console.WriteLine("DB connection failed : " + es.ToString());
            //}
        }
        public void OpenConnection()
        {
            if (connection.State == ConnectionState.Closed)
            {
                try
                {
                    connection.Open();
                }
                catch (Exception exe) { Console.WriteLine("DB connection failed : " + exe.ToString()); }
            }
        }
        public DataTable QueryWrapper(string query, string TableName)
        {
            using (connection = new SqlConnection(connectionString))
            {
                DataTable result = new DataTable(TableName);
                OpenConnection();
                try
                {

                    using (SqlDataAdapter dataAdapter = new SqlDataAdapter(query, connection))
                    {
                        dataAdapter.SelectCommand.CommandType = CommandType.Text;
                        dataAdapter.SelectCommand.CommandTimeout = dbTimeout;
                        dataAdapter.Fill(result);
                    }
                    
                }
                catch (Exception ex)
                {
                    Log.writeError("DB query failed :  " + query + "   " + ex.ToString());
                    //Console.WriteLine("DB query failed :  " + query + "   " + ex.ToString());
                    result = null;
                }
                return result;
                
            }
            
        }
        public void QueryWrapper(string query)
        {
            using (connection = new SqlConnection(connectionString))
            {


            //        SqlDataAdapter cmd = new SqlDataAdapter();
            //        using (var Command = new SqlCommand(query))
            //        {
            //            Command.Connection = connection;
            //            cmd.UpdateCommand = Command;
            //            connection.Open();
            //            //.....
            //            // .... you don't need to close the connection explicitely
            //        }
                try
                {                   
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = connection;
                    connection.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Log.writeError("DB query failed :  " + query + "   " + ex.ToString());
                }

            }
            

        }
        public List<Track> readTracks(string userName, int nrRowsStart, int nrRowsEnd)
        {
            List<Track> outputTracks = new List<Track>();
            DataTable container;

            string commandText = @"SELECT  *
FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY [ENDTIMESTAMP] desc ) AS RowNum, tracks.[ID], [STARTTIMESTAMP]
      ,[ENDTIMESTAMP]
      ,[STARTLOCATION]
      ,[ENDLOCATION]
      ,[LENGHT]
  FROM [dbo].[TRACKS] as tracks, dbo.CUSTOMER_DEVICE as CD, 
  dbo.CUSTOMER_USER as CU, dbo.aspnet_Users as U
WHERE CD.DEVICEID = tracks.DEVICEID AND CD.CUSTOMERID = CU.CUSTOMERID 
AND CU.USERID = U.UserId AND U.UserName ='" + userName + @"'
) AS RowConstrainedResult
WHERE   RowNum >= " + nrRowsStart + @" AND RowNum <= " + nrRowsEnd + @"
ORDER BY RowNum";

            container = QueryWrapper(commandText, "tracksFromDB");
            if (container != null && container.Rows.Count > 0)
            {
                foreach (DataRow row in container.Rows)
                {
                    Track track = new Track();
                    track.TrackID = row["ID"].ToString();
                    //byte[] imgBytes = (byte[])row["IMAGE"];
                    //System.ComponentModel.TypeConverter tc = System.ComponentModel.TypeDescriptor.GetConverter(typeof(System.Drawing.Image));
                    if (!string.IsNullOrEmpty(row["STARTTIMESTAMP"].ToString()))
                    {
                        track.StartTime = DateTime.Parse(row["STARTTIMESTAMP"].ToString());
                    }
                    if (!string.IsNullOrEmpty(row["ENDTIMESTAMP"].ToString()))
                    {
                        track.EndTime = DateTime.Parse(row["ENDTIMESTAMP"].ToString());
                    }
                    double trlenght = 0;
                    double.TryParse(row["LENGHT"].ToString(), out trlenght);
                    track.TraceLenght = trlenght;
                    outputTracks.Add(track);
                }
                return outputTracks;
            }
            else return null;
        }
        public int readTracksCount(string userName)
        {
            List<Track> outputTracks = new List<Track>();
            DataTable container;

            string commandText = @"SELECT COUNT(*)
  FROM [dbo].[TRACKS] as tracks, dbo.CUSTOMER_DEVICE as CD, 
  dbo.CUSTOMER_USER as CU, dbo.aspnet_Users as U
WHERE CD.DEVICEID = tracks.DEVICEID AND CD.CUSTOMERID = CU.CUSTOMERID 
AND CU.USERID = U.UserId AND U.UserName ='" + userName + @"'";

            container = QueryWrapper(commandText, "tracksFromDB");
            if (container != null && container.Rows.Count > 0)
            {
                int o = 0;
                int.TryParse(container.Rows[0][0].ToString(), out o);
                return o;
            }
            else return 0;

        }
        public DataTable readTrackCoordinates(string TrackID, string userName)
        {
                   if (!string.IsNullOrEmpty(TrackID))
            {

                       string query = @"SELECT [ID]  ,[DEVICEID],[TIMESTAMP] ,[LAT] ,[LON], [TRACKCREATED]
  FROM [dbo].[COORDINATES]
  where DEVICEID in (SELECT [DEVICEID]
  FROM [dbo].[CUSTOMER_DEVICE]
  where CUSTOMERID in ( SELECT [CUSTOMERID]
  FROM [dbo].[CUSTOMER_USER]
  where userid in  (SELECT [UserId]
  FROM [dbo].[aspnet_Users]
  where UserName ='" + userName + "'))) and TRACKCREATED = '" + TrackID + "'";


//                string query = @"SELECT coords.ID, [TIMESTAMP] ,[LAT] ,[LON]  
//FROM [dbo].[COORDINATES] as coords, [dbo].[TRACKS] as tracks, dbo.CUSTOMER_DEVICE as CD, 
//  dbo.CUSTOMER_USER as CU, dbo.aspnet_Users as U
//where CD.DEVICEID = tracks.DEVICEID AND CD.CUSTOMERID = CU.CUSTOMERID 
//AND CU.USERID = U.UserId AND U.UserName ='" + userName + "' AND coords.TRACKCREATED = '" + TrackID + "'";

                return QueryWrapper(query, "points");
            }
            else return null;
        }
        public DataTable readLastCoordinate(string userName)
        {
            if (!string.IsNullOrEmpty(userName))
            {

                string query = @"SELECT TOP 1 [ID]  ,[DEVICEID],[TIMESTAMP] ,[LAT] ,[LON], [TRACKCREATED]
  FROM [dbo].[COORDINATES]
  where DEVICEID in (SELECT [DEVICEID]
  FROM [dbo].[CUSTOMER_DEVICE]
  where CUSTOMERID in ( SELECT [CUSTOMERID]
  FROM [dbo].[CUSTOMER_USER]
  where userid in  (SELECT [UserId]
  FROM [dbo].[aspnet_Users]
  where UserName ='" + userName + @"')))
                ORDER BY TIMESTAMP DESC";
                return QueryWrapper(query, "points");
            }
            else return null;
        }
        public DataTable readSchedules()
        {
            string query = @"SELECT [NAME], [LASTRUNTIME], [PERIOD] FROM [dbo].[SCHEDULES]";
            return QueryWrapper(query, "schedules");

        }
        public void updateScheduleTime(string scheduleName)
        {
            QueryWrapper("UPDATE [dbo].[SCHEDULES] SET [LASTRUNTIME] = '" + DateTime.UtcNow + "' WHERE [NAME] = '" + scheduleName + "'");
        }
        public void deleteLog(double daysThreshold)
        {
            QueryWrapper("DELETE FROM [dbo].[COMMUNICATIONLOG]  WHERE [TIME] < '" + DateTime.UtcNow.AddDays(-(daysThreshold)) + "'");
        }
        public string getDeviceId(string imei)
        {
            DataTable container;
            string commandText = string.Format(@"SELECT top 1 [ID] FROM [dbo].[DEVICE] Where IMEI = '" + imei + "'");
            container = QueryWrapper(commandText, "deviceId");
            if (container != null && container.Rows.Count > 0)
            {
                
                return container.Rows[0][0].ToString();

            }
            else
            {
                Log.writeError("not known IMEI: " + imei);
                return "";
            }
        }
        public void StoreCoordinates(CoordinatesPointInTime Coordinates)
        {
            QueryWrapper("INSERT INTO [dbo].[COORDINATES]    ([DEVICEID]  ,[TIMESTAMP]  , [LAT]   ,[LON]   ,[TRACKCREATED]) VALUES ('" + Coordinates.DeviceID + "','" + Coordinates.Time + "','" + Coordinates.Latitude.ToString(CultureInfo.InvariantCulture) + "','" + Coordinates.Longitude.ToString(CultureInfo.InvariantCulture) + "',null)");
        }
        public void StoreEvent(Event _event)
        {
            QueryWrapper("INSERT INTO [dbo].[EVENTS] ([EVENTTYPE] ,[TIMESTAMP] ,[STOREDTIMESTAMP] ,[DEVICEID]) VALUES ('" + _event.EventType + "' ,'" + _event.Time + "' ,'" + DateTime.UtcNow + "' ,'" + _event.Deviceid + "')");
        }
        public void StoreToCommLog(string message)
        {
            QueryWrapper("INSERT INTO [dbo].[COMMUNICATIONLOG] ([TIME] ,[MESSAGE]) VALUES ('" + DateTime.UtcNow + "' ,'" + message + "')");
        }
        public void UpdateCommServerLastCommunication()
        {
            QueryWrapper("UPDATE [dbo].[COMMSERVER] SET [LASTCOMMUNICATION] = '" + DateTime.UtcNow + "' ,[ISUP] = 1 WHERE ID = 1");
        }
        public DataTable GetCommServerLastCommunication()
        {
            return QueryWrapper("SELECT * FROM [dbo].[COMMSERVER]", "CommServerLastCommunication");
        }
        public void UpdateCommServerDown()
        {
            QueryWrapper("UPDATE [dbo].[COMMSERVER] SET [ISUP] = 0 WHERE ID = 1");
        }
        public void UpdateDeviceLastCommunication(string deviceId)
        {
            QueryWrapper("UPDATE [dbo].[DEVICE] SET [LASTCOMMUNICATION] = '" + DateTime.UtcNow + "' WHERE ID = " + int.Parse(deviceId) );
        }

        //UPDATE [dbo].[DEVICE] SET [LASTCOMMUNICATION] = '' WHERE ID = ''
        public DataTable GetNotProcessedCoordinates()
        {
            DataTable container;
            string commandText = string.Format(@"SELECT [ID]
      ,[DEVICEID]
      ,[TIMESTAMP]
      ,[LAT]
      ,[LON]
      ,[TRACKCREATED]
  FROM [dbo].[COORDINATES]
  where TRACKCREATED is null and DEVICEID in (SELECT [DEVICEID]
  FROM [dbo].[COORDINATES]
  where TRACKCREATED is null
  group by DEVICEID
  having MAX(TIMESTAMP) < DATEADD(MINUTE, -30, SYSUTCDATETIME()))
  order by DEVICEID asc, TIMESTAMP asc");
            container = QueryWrapper(commandText, "notProcessedData");
            if (container != null && container.Rows.Count > 0)
            {
                return container;
            }
            else return null;
        }
        public void storeTrack(Track _track)
        {
            //Byte[] resultImgInBytes = (Byte[])new System.Drawing.ImageConverter().ConvertTo(_track.Img, typeof(Byte[]));
            StringBuilder commandText = new StringBuilder();

            commandText.Append(@"INSERT INTO [dbo].[TRACKS]
           ([ID],
            [DEVICEID]
           ,[STARTTIMESTAMP]
           ,[ENDTIMESTAMP]
           ,[STARTLOCATION]
           ,[ENDLOCATION]
           ,[LENGHT]) VALUES(");
            commandText.Append("'");
            commandText.Append(_track.TrackID);
            commandText.Append("', '");
            commandText.Append(_track.Deviceid);
            commandText.Append("', '");
            commandText.Append(_track.StartTime);
            commandText.Append("', '");
            commandText.Append(_track.EndTime);
            commandText.Append("', '");
            commandText.Append(_track.StartAddress);
            commandText.Append("', '");
            commandText.Append(_track.EndAddress);
            commandText.Append("', '");
            commandText.Append(_track.TraceLenght.ToString(CultureInfo.InvariantCulture));
            commandText.Append("'");
            commandText.Append(")");

            QueryWrapper(commandText.ToString());

        }
        public void markCoordinatesAsProcessed(Track _track)
        {
            string listOfCoordIDs = "";
            foreach (CoordinatesPointInTime coord in _track.Coordinates)
            {
                listOfCoordIDs += coord.CoordinateID.ToString() + ",";
            }


            StringBuilder commandText = new StringBuilder();

            commandText.Append(@"UPDATE [dbo].[COORDINATES]
   SET [TRACKCREATED] = '");
            commandText.Append(_track.TrackID);
            commandText.Append("' WHERE ID in (");
            commandText.Append(listOfCoordIDs.Remove(listOfCoordIDs.Length - 1));
            commandText.Append(")");

            QueryWrapper(commandText.ToString());
            
        }
        public List<Track> readTracks(int deviceID, int nrRows)
        {
            List<Track> outputTracks = new List<Track>();
            DataTable container;
            string commandText = string.Format(@"SELECT TOP " + nrRows + @" [ID]
      ,[DEVICEID]
      ,[STARTTIMESTAMP]
      ,[ENDTIMESTAMP]
      ,[STARTLOCATION]
      ,[ENDLOCATION]
      ,[IMAGE]
      ,[LENGHT]
  FROM [dbo].[TRACKS]
  WHERE [DEVICEID] = " + deviceID.ToString());
            container = QueryWrapper(commandText, "tracksFromDB");
            if (container != null && container.Rows.Count > 0)
            {
                foreach (DataRow row in container.Rows)
                {
                    Track track = new Track();
                    track.TrackID = row["ID"].ToString();
                    //byte[] imgBytes = (byte[])row["IMAGE"];
                    //System.ComponentModel.TypeConverter tc = System.ComponentModel.TypeDescriptor.GetConverter(typeof(System.Drawing.Image));
                    //track.Img = (System.Drawing.Image)tc.ConvertFrom(imgBytes);
                    if (!string.IsNullOrEmpty(row["STARTTIMESTAMP"].ToString()))
                    {
                        track.StartTime = DateTime.Parse(row["STARTTIMESTAMP"].ToString());
                    }
                    if (!string.IsNullOrEmpty(row["ENDTIMESTAMP"].ToString()))
                    {
                        track.EndTime = DateTime.Parse(row["ENDTIMESTAMP"].ToString());
                    }
                    outputTracks.Add(track);
                }
                return outputTracks;
            }
            else return null;
        }
    }
}