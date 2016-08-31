using System;
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

            db.StoreToCommLog("RECEIVED: " + input);

            if (inputArrayAll.Length == 2 && inputArrayAll[0].Split(",".ToCharArray())[0] == "##")
            {
                //LOGIN
                DeviceId = db.getDeviceId(IMEI = inputArrayAll[0].Split(",".ToCharArray())[1].Split(":".ToCharArray())[1]);
                if (DeviceId != "")
                {
                    response = "LOAD";
                    db.StoreToCommLog("SENT: " + response);
                    return response;
                }
                else return "";
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
                            //HEARTBEAT
                            DeviceId = db.getDeviceId(IMEI = inputArray[0]);
                            response = "**,imei:" + IMEI + ",C,1m";
                        }
                        else
                        {
                            try
                            {
                                //REGULAR
                                DeviceId = db.getDeviceId(inputArray[0].Split(":".ToCharArray())[1]);
                                DateTime timeOfposition = new DateTime();
                                string formatString = "yyMMddHHmmss";

                                if (inputArray[2].Length > 0)
                                {
                                    timeOfposition = DateTime.ParseExact(inputArray[2], formatString, null);
                                }
                                if (!notEvents.Contains(inputArray[1], StringComparer.OrdinalIgnoreCase))
                                {
                                    db.StoreEvent(new Event(DateTime.UtcNow, inputArray[1].ToString(), DeviceId));
                                    if (inputArray[1] == "move") { response = "**,imei:" + IMEI + ",C,10s"; }
                                }
                                if (inputArray[4] != "L")
                                {
                                    db.StoreCoordinates(new CoordinatesPointInTime(timeOfposition, GeoMath.getLat(inputArray[7]), GeoMath.getLon(inputArray[9]), DeviceId));
                                }
                            }
                            catch { Log.writeError(message); }

                        }
                    }

                    
                }
                db.StoreToCommLog("SENT: " + response);
                return response;
            }
            
 
            //return "**,imei:" + inputArray[1] + ",B";
            //return output.ToString();

        }
    }
}
