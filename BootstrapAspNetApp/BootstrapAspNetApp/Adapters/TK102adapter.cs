﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace BootstrapAspNetApp
{
    static class TK102adapter
    {
        public static string ReplyMessage(string input)
        {
            

            string response = "";
            string IMEI = "";
            string DeviceId = "";
            MyDatabase db = new MyDatabase();
            string[] notEvents = new string[] { "tracker", "gt", "nt", "dt" };
            string[] inputArrayAll= input.Split(";".ToCharArray());


            if (inputArrayAll.Length == 2 && inputArrayAll[0].Split(",".ToCharArray())[0] == "##")
            {
                //LOGIN
                DeviceId = db.getDeviceId(IMEI = inputArrayAll[0].Split(",".ToCharArray())[1].Split(":".ToCharArray())[1]);
                if (!string.IsNullOrEmpty(DeviceId))
                {
                    response = "LOAD";
                    db.UpdateDeviceLastCommunication(DeviceId);
                    return response;
                }
                else
                {
                    Log.writeError("unknown device IMEI :" + IMEI);
                    return "";
                }
            }
            else
            {
                foreach (string message in inputArrayAll.ToList())
                {
                    if (message != "")
                    {
                        string[] inputArray = message.Split(",".ToCharArray());

                        if (inputArray.Length < 2)
                        {
                            //HEARTBEAT - wait for move command
                            DeviceId = db.getDeviceId(IMEI = inputArray[0]);
                            if (!string.IsNullOrEmpty(DeviceId))
                            {
                                db.UpdateDeviceLastCommunication(DeviceId);
                                response = "**,imei:" + IMEI + ",G";
                            }
                            else
                            {
                                Log.writeError("unknown device IMEI :" + IMEI);
                                return "";
                            }
                            
                        }
                        else
                        {
                            try
                            {
                                //REGULAR
                                DeviceId = db.getDeviceId(IMEI = inputArray[0].Split(":".ToCharArray())[1]);
                                if (string.IsNullOrEmpty(DeviceId))
                                {
                                    Log.writeError("unknown device IMEI :" + IMEI);
                                    return "";
                                }
                                db.UpdateDeviceLastCommunication(DeviceId);
                                DateTime timeOfposition = new DateTime();
                                string formatString = "yyMMddHHmmss";

                                if (inputArray[2].Length > 0)
                                {
                                    timeOfposition = DateTime.ParseExact(inputArray[2], formatString, null);
                                }
                                if (!notEvents.Contains(inputArray[1], StringComparer.OrdinalIgnoreCase))
                                {
                                    db.StoreEvent(new Event(DateTime.UtcNow, inputArray[1].ToString(), DeviceId));
                                    if (inputArray[1] == "move") 
                                    { 
                                        //start tracking 
                                        response = "**,imei:" + IMEI + ",C,10s"; 
                                    }
                                }
                                if (inputArray[4] != "L")
                                {
                                    double Lat = GeoMath.getLat(inputArray[7]);
                                    double lon = GeoMath.getLon(inputArray[9]);
                                    db.StoreCoordinates(new CoordinatesPointInTime(timeOfposition, Lat, lon, DeviceId));
                                }
                            }
                            catch (Exception e) 
                            { 
                                Log.writeError(message + " : " + e.ToString());
                            }

                        }
                    }

                    
                }
                return response;
            }
            
 
            //return "**,imei:" + inputArray[1] + ",B";
            //return output.ToString();

        }
    }
}
