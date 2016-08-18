using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Drawing;

namespace BootstrapAspNetApp
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [System.Web.Script.Services.ScriptService]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class WebService1 : System.Web.Services.WebService
    {
        private int pageSize = 3;

        [WebMethod]
        public string GetTrackPoints(string TrackID)
        {
            string userName = "";
            if (User.Identity.IsAuthenticated)
            {
                userName = User.Identity.Name;
            }
            else userName = "Administrator";
            Log.writeDebug("TRACKID: " + TrackID);

            DataTable dtPoints;
            MyDatabase db = new MyDatabase();

            string answer = "[ ";

            if (!string.IsNullOrEmpty(TrackID))
            {
                dtPoints = db.readTrackCoordinates(TrackID, userName);
                Log.writeDebug("nr of points received: " + dtPoints.Rows.Count.ToString());
                if (dtPoints != null && dtPoints.Rows.Count > 0)
                {
                    foreach (DataRow dr in dtPoints.Rows)
                    {
                        string lat = dr["LAT"].ToString();
                        string lng = dr["LON"].ToString();
                        string tmstmp = dr["TIMESTAMP"].ToString();

                        string id = dr["ID"].ToString();

                        answer += @"{ ""lat"":""" + lat + @""", ""lng"": """ + lng + @""", ""time"":""" + tmstmp + @"""},";

                    }
                }
            }
            
            answer = answer.Remove(answer.Length - 1) + " ]";
            Log.writeDebug("coordinates returned: " + answer);
            return answer;
            
        }
        [WebMethod]
        public string GetLastposition()
        {
            string userName = "";
            if (User.Identity.IsAuthenticated)
            {
                userName = User.Identity.Name;
            }
            else userName = "Administrator";
            

            DataTable dtPoints;
            MyDatabase db = new MyDatabase();

            string answer = "[ ";


            dtPoints = db.readLastCoordinate(userName);
                if (dtPoints != null && dtPoints.Rows.Count > 0)
                {
                    foreach (DataRow dr in dtPoints.Rows)
                    {
                        string lat = dr["LAT"].ToString();
                        string lng = dr["LON"].ToString();
                        string tmstmp = dr["TIMESTAMP"].ToString();

                        string id = dr["ID"].ToString();

                        answer += @"{ ""lat"":""" + lat + @""", ""lng"": """ + lng + @""", ""time"":""" + tmstmp + @"""},";

                    }
                }
            

            answer = answer.Remove(answer.Length - 1) + " ]";
            return answer;

        }
        [WebMethod]
        public string GetTracks(int PageNr)
        {
            Log.writeDebug("GetTracks received parameter : " + PageNr.ToString());
            string userName = "";
            if (User.Identity.IsAuthenticated)
            {
                userName = User.Identity.Name;
                Log.writeDebug("Membership found : " + User.Identity.Name);
            }
            else userName = "Administrator";

            MyDatabase db = new MyDatabase();

            int tracksCount = db.readTracksCount(userName);
            Log.writeDebug("received tracks from db : " + tracksCount);
            
            if (tracksCount < 1 || PageNr < 1)
            {
                return "[]";
            }
            else
            {
                if (PageNr > 1 && PageNr > (tracksCount / pageSize) + 1 )
                {
                    return "[]";
                }
                else
                {
                    int startRow = 0;
                    int EndRow = 0;

                        if (PageNr <= tracksCount / pageSize)
                        {
                            startRow = ((PageNr - 1) * pageSize) + 1;
                            EndRow = PageNr * pageSize;
                        }
                        else
                        {
                            startRow = ((PageNr - 1) * pageSize) + 1;
                            EndRow = tracksCount;
                        }
 
                    List<Track> tracks = new List<Track>();
                    tracks = db.readTracks(userName, startRow, EndRow);
                    if (tracks.Count < 1)
                    {
                        return "[]";
                    }
                    else
                    {
                        Log.writeDebug("track count : " + tracks.Count.ToString());
                        StringBuilder outMessage = new StringBuilder();
                        outMessage.Append("[");
                        foreach (Track tr in tracks)
                        {
                            byte[] bytes = null;
                            using (var ms = new MemoryStream())
                            {
                                tr.Img.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                                bytes = ms.ToArray();
                            }
                            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);

                            outMessage.Append("{ ");

                            outMessage.Append("\"TrackID\":\"");
                            outMessage.Append(tr.TrackID);
                            outMessage.Append("\",");

                            outMessage.Append("\"Img\":\"");
                            outMessage.Append(base64String);
                            outMessage.Append("\",");

                            outMessage.Append("\"TraceLenght\":\"");
                            outMessage.Append(tr.TraceLenght);
                            outMessage.Append("\",");

                            outMessage.Append("\"StartAddress\":\"");
                            outMessage.Append(tr.StartAddress);
                            outMessage.Append("\",");

                            outMessage.Append("\"EndAddress\":\"");
                            outMessage.Append(tr.EndAddress);
                            outMessage.Append("\",");

                            outMessage.Append("\"StartTime\":\"");
                            outMessage.Append(tr.StartTime);
                            outMessage.Append("\",");

                            outMessage.Append("\"EndTime\":\"");
                            outMessage.Append(tr.EndTime);
                            outMessage.Append("\"");
                            outMessage.Append("}");

                            if (tracks.IndexOf(tr) < (tracks.Count - 1))
                            {
                                outMessage.Append(",");
                            }

                        }
                        outMessage.Append("]");
                        //Log.writeDebug("output : " + outMessage.ToString());
                        return outMessage.ToString();
                        
                    }
                    

                }

            }

        }
        [WebMethod]
        public int GetTracksCount()
        {
            string userName = "";
            if (User.Identity.IsAuthenticated)
            {
                userName = User.Identity.Name;
            }
            else userName = "Administrator";

            MyDatabase db = new MyDatabase();
            return db.readTracksCount(userName);
        }
        [WebMethod]
        public string GetDefaultInfo()
        {

            string userName = "";
            if (User.Identity.IsAuthenticated)
            {
                userName = User.Identity.Name;
            }
            else userName = "Administrator";

            MyDatabase db = new MyDatabase();
            int nrTracks =  db.readTracksCount(userName);
            int NrPages = 0;
            if (nrTracks ==0)
            {

            }
            else
            {
                if (nrTracks % pageSize == 0)
                {
                    NrPages = nrTracks / pageSize;
                }
                else
                {
                    NrPages = nrTracks / pageSize + 1;
                }           

            }
            return @"[{ ""NrPages"":""" + NrPages + @""", ""nrTracks"": """ + nrTracks +  @"""}]";

            
                        

                
        }
        [WebMethod]
        public string StoreData(string ApiKey, string data)
        {
            return TK102adapter.ReplyMessage(data);
        }
        [WebMethod]
        public void ProcessData(string ApiKey)
        {
            if (!string.Equals(ApiKey, "TestKey", StringComparison.CurrentCultureIgnoreCase))
            {
                
            }
            else
            {
                double timeLimitBetweenTracks = 30;
                MyDatabase DB = new MyDatabase();
                //string ss = api.getAddress("23.02951", "72.48689");
                DataTable procData = DB.GetNotProcessedCoordinates();

                if (procData != null && procData.Rows.Count > 0)
                {
                    List<Track> tracksList = new List<Track>();
                    //List<CoordinatesPointInTime> coordinatesInTrack = new List<CoordinatesPointInTime>();
                    API api = new API();
                    string CurrentDeviceId = "";
                    DateTime CurrentTimeStamp = DateTime.Parse(procData.Rows[0][2].ToString());
                    int rowIndex = 1;
                    Track CurrentTrack = new Track();
                    foreach (DataRow row in procData.Rows) // Loop over the rows.
                    {
                        if (CurrentDeviceId != row[1].ToString() || CurrentTimeStamp.AddMinutes(timeLimitBetweenTracks) < DateTime.Parse(row[2].ToString()))
                        {
                            if (CurrentTrack.Coordinates.Count > 0)
                            {
                                tracksList.Add(CurrentTrack);
                            }
                            CurrentTrack = new Track();
                            CurrentTrack.Deviceid = row[1].ToString();
                            CurrentTrack.Coordinates.Add(new CoordinatesPointInTime(DateTime.Parse(row[2].ToString()), double.Parse(row[3].ToString()), double.Parse(row[4].ToString()), int.Parse(row[0].ToString())));
                            CurrentDeviceId = row[1].ToString();
                        }
                        else
                        {
                            CurrentTrack.Coordinates.Add(new CoordinatesPointInTime(DateTime.Parse(row[2].ToString()), double.Parse(row[3].ToString()), double.Parse(row[4].ToString()), int.Parse(row[0].ToString())));
                        }

                        CurrentTimeStamp = DateTime.Parse(row[2].ToString());
                        if (rowIndex == procData.Rows.Count)
                        {
                            tracksList.Add(CurrentTrack);

                        }


                        rowIndex++;

                    }
                    foreach (Track tr in tracksList)
                    {
                        System.Drawing.Image imageFromMap;
                        double totallenghOfTrack = 0;
                        tr.AddMapPicture(api.getMapAndCalculate(tr, out totallenghOfTrack));
                        tr.StartTime = tr.Coordinates[0].Time;
                        // tr.StartAddress = api.getAddress(tr.Coordinates[0].Latitude.ToString(), tr.Coordinates[0].Longitude.ToString());
                        tr.EndTime = tr.Coordinates[tr.Coordinates.Count - 1].Time;
                        tr.TraceLenght = totallenghOfTrack;
                        DB.storeTrack(tr);
                        DB.markCoordinatesAsProcessed(tr);

                    }
                    List<Track> readTrackBack = DB.readTracks(1, 10);
                    readTrackBack[1].Img.Save("test2.jpg");



                }
               
            
            }

        
        }
    }
    
}
