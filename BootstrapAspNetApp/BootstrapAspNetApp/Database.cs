using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace BootstrapAspNetApp
{
    public class MyDatabase
    {
        private int dbTimeout = 0;
        //private int DBRecordCountLimit = 1000;
        public SqlConnection connection = null;
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MAINSYSTEMConnectionString"].ConnectionString;

        public MyDatabase()
        {

            try
            {
                connection = new SqlConnection(connectionString);

            }
            catch (Exception es)
            {
                Console.WriteLine("DB connection failed : " + es.ToString());
            }
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
        public string QueryWrapper(string query)
        {
            OpenConnection();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Log.writeError("DB query failed :  " + query + "   " + ex.ToString());
                return "DB query failed :  " + query + "   " + ex.ToString();
            }
            return "";
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
      ,[IMAGE]
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
                    byte[] imgBytes = (byte[])row["IMAGE"];
                    System.ComponentModel.TypeConverter tc = System.ComponentModel.TypeDescriptor.GetConverter(typeof(System.Drawing.Image));
                    track.Img = (System.Drawing.Image)tc.ConvertFrom(imgBytes);
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
  where UserName = ='" + userName + "'))) and TRACKCREATED = '" + TrackID + "'";


//                string query = @"SELECT coords.ID, [TIMESTAMP] ,[LAT] ,[LON]  
//FROM [dbo].[COORDINATES] as coords, [dbo].[TRACKS] as tracks, dbo.CUSTOMER_DEVICE as CD, 
//  dbo.CUSTOMER_USER as CU, dbo.aspnet_Users as U
//where CD.DEVICEID = tracks.DEVICEID AND CD.CUSTOMERID = CU.CUSTOMERID 
//AND CU.USERID = U.UserId AND U.UserName ='" + userName + "' AND coords.TRACKCREATED = '" + TrackID + "'";

                return QueryWrapper(query, "points");
            }
            else return null;
        }
    }
}