﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BootstrapAspNetApp
{
    public class CoordinatesPointInTime
    {
        public int CoordinateID;
        public string DeviceID;
        public DateTime Time;
        public double Latitude;
        public double Longitude;

        public CoordinatesPointInTime(DateTime time, double latitude, double longitude, int coordinateID)
        {
            Time = time;
            Latitude = latitude;
            Longitude = longitude;
            CoordinateID = coordinateID;
        }
        public CoordinatesPointInTime(DateTime time, double latitude, double longitude, string deviceID)
        {
            Time = time;
            Latitude = latitude;
            Longitude = longitude;
            DeviceID = deviceID;
        }
    }
}