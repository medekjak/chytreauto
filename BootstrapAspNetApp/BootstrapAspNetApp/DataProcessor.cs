using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace BootstrapAspNetApp
{
    public static class DataProcessor      
    {
        public static void ProcessTracks()
        {
            double timeLimitBetweenTracks = 30;
            MyDatabase DB = new MyDatabase();
            //string ss = api.getAddress("23.02951", "72.48689");
            System.Data.DataTable procData = DB.GetNotProcessedCoordinates();

            if (procData != null && procData.Rows.Count > 0)
            {
                List<Track> tracksList = new List<Track>();
                //List<CoordinatesPointInTime> coordinatesInTrack = new List<CoordinatesPointInTime>();
                API api = new API();
                string CurrentDeviceId = "";
                DateTime CurrentTimeStamp = DateTime.Parse(procData.Rows[0][2].ToString());
                int rowIndex = 1;
                Track CurrentTrack = new Track();
                foreach (System.Data.DataRow row in procData.Rows) // Loop over the rows.
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
                    //System.Drawing.Image imageFromMap;
                    double totallenghOfTrack = api.CalculateLenght(tr);
                    //tr.AddMapPicture(api.getMapAndCalculate(tr, out totallenghOfTrack));
                    tr.StartTime = tr.Coordinates[0].Time;
                    // tr.StartAddress = api.getAddress(tr.Coordinates[0].Latitude.ToString(), tr.Coordinates[0].Longitude.ToString());
                    tr.EndTime = tr.Coordinates[tr.Coordinates.Count - 1].Time;
                    tr.TraceLenght = totallenghOfTrack;
                    DB.storeTrack(tr);
                    DB.markCoordinatesAsProcessed(tr);

                }
                //List<Track> readTrackBack = DB.readTracks(1, 10);
                //readTrackBack[1].Img.Save("test2.jpg");



            }
        }
        public static void DeleteLog()
        {
            MyDatabase DB = new MyDatabase();
            DB.deleteLog(2);
        }
        public static void CheckCommServerHeartBeat()
        {
            MyDatabase DB = new MyDatabase();
            DataTable commInfo = DB.GetCommServerLastCommunication();
            if (commInfo == null || commInfo.Rows.Count < 1)
            {
                Log.writeError("no commInformation in db");
            }
            else
            {
                if ((DateTime)commInfo.Rows[0]["LASTCOMMUNICATION"] < DateTime.UtcNow.AddHours(-2) && (bool)commInfo.Rows[0]["ISUP"] == true)
                {
                    DB.UpdateCommServerDown();
                    Log.writeError("Communication Server is Down!");
                }
            }

        }
    }
}