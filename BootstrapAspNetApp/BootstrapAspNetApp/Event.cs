using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BootstrapAspNetApp
{
    public class Event
    {
        public DateTime Time;
        public string EventType;
        public string Deviceid;

        public Event(DateTime time, string eventType, string deviceId)
        {
            Time = time;
            EventType = eventType;
            Deviceid = deviceId;
        }
    }
}
