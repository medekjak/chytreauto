using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BootstrapAspNetApp
{
    public class Track
    {
        public string TrackID;
        public string StartAddress;
        public string EndAddress;
        public DateTime StartTime;
        public DateTime EndTime;
        public System.Drawing.Image Img;
        public List<CoordinatesPointInTime> Coordinates;
        public string Deviceid;
        public double TraceLenght = 0;

        public Track()
        {
            Coordinates = new List<CoordinatesPointInTime>();
            TrackID = Guid.NewGuid().ToString();
        }
        public void AddMapPicture(System.Drawing.Image picture)
        {
            Img = picture;
        }


    }
}