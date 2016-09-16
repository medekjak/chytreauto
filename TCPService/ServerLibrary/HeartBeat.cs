using System;
using System.Threading;

namespace ServerLibrary
{
    public class HeartBeat
    {
        private  Timer timer;
        public HeartBeat()
        {
            timer = new Timer(_ => OnCallBack(), null, 0, 1000 * 1); 
        }

        private void OnCallBack()
        {
            timer.Change(Timeout.Infinite, Timeout.Infinite); //stops the timer
            Console.WriteLine("timer test");
            WebServiceSender.CallWebService("CommHeartBeat", "testCommunication");
            Thread.Sleep(60000);
            timer.Change(0, 1000 * 1);  //restarts the timer
        }
        public void stop()
        {
            timer.Dispose();
        }
    }
}
