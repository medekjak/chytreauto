using System.IO;
using System;


namespace ServerLibrary
{
    static class EventLog
    {
        public static void writeLine(string line)
        {
            try
            {
                using (StreamWriter file =
                new StreamWriter(@"Log.txt", true))
                {
                    file.WriteLine(line);
                }
                WebServiceSender.CallWebService("CommHeartBeat", line);
                Console.WriteLine(line);
            }
            catch (Exception e)
            {
                Console.WriteLine("failed to store to log : " + e.ToString());
            }
        
        }
    }
}
