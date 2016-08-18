using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Data;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.Xml;
using System.IO;
using System.Drawing;


namespace BootstrapAspNetApp
{
    public class API
    {
        private string callAPI(string _get)
        {

            //lat=23.02951&lon=72.48689
            WebClient webClient = new WebClient();
            webClient.Headers.Add("User-Agent: Other");

            //var jsonData = webClient.DownloadData("http://nominatim.openstreetmap.org/reverse?format=json&" + _get);
            var jsonData = webClient.DownloadData("http://nominatim.openstreetmap.org/reverse?format=json&lat=50.129832&lon=14.419835");

            DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(RootObject));
            var rootObject = ser.ReadObject(new MemoryStream(jsonData));
            RootObject adr = (RootObject)rootObject;
            return adr.address.road + ", " + adr.address.city;

        }
        public string getAddress(string lat, string lon)
        {
            return callAPI("lat=" + lat + "&lon=" + lon);
        }
        public Image getMapAndCalculate(Track tr, out double totalLen)
        {
            totalLen = 0;

            WebClient webClient = new WebClient();
            webClient.Headers.Add("User-Agent: Other");

            string size = "600x200";

                StringBuilder urlParameters = new StringBuilder();
                urlParameters.Append("maptype=roadmap"+ "&size=" + size + "&path=color:0x0000ff|weight:5");
                for (int i = 0; i < tr.Coordinates.Count; i++)
                {
                    urlParameters.Append("|" + tr.Coordinates[i].Latitude.ToString() + "," + tr.Coordinates[i].Longitude.ToString());
                    if (i + 1 < tr.Coordinates.Count)
                    {

                        totalLen += measureDistance(tr.Coordinates[i].Latitude, tr.Coordinates[i].Longitude, tr.Coordinates[i + 1].Latitude, tr.Coordinates[i + 1].Longitude);
                    }
                }

                byte[] buffer = webClient.DownloadData("http://maps.googleapis.com/maps/api/staticmap?" + urlParameters);
                return (Image)((new ImageConverter()).ConvertFrom(buffer));


        }
        public double measureDistance(double lat1, double lon1, double lat2, double lon2)
        {
            // generally used geo measurement function
            var R = 6378.137; // Radius of earth in KM
            var dLat = (lat2 - lat1) * Math.PI / 180;
            var dLon = (lon2 - lon1) * Math.PI / 180;
            var a = Math.Sin(dLat / 2) * Math.Sin(dLat / 2) +
            Math.Cos(lat1 * Math.PI / 180) * Math.Cos(lat2 * Math.PI / 180) *
            Math.Sin(dLon / 2) * Math.Sin(dLon / 2);
            var c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));
            var d = R * c;
            return d * 1000; // meters
        }


        public void GetMinMaxLatLon(double[,] data, out double maxLat, out double maxLon, out double minLat, out double minLon)
        {
            //0 - lat, 1 - lon
            double _maxLat = 0;
            double _maxLon = 0;
            double _minLat = 0;
            double _minLon = 0;
            for (int i = 0; i < data.Length/2; i++)
            {
                if (i == 0)
                {
                    //set first point
                    _maxLat = data[i, 0];
                    _minLat = data[i, 0];
                    _minLon = data[i, 1];
                    _maxLon = data[i, 1];
                }
                else
                {
                    if (data[i, 0] < _minLat) { _minLat = data[i, 0]; }
                    if (data[i, 0] > _maxLat) { _maxLat = data[i, 0]; }
                    if (data[i, 1] < _minLon) { _minLon = data[i, 1]; }
                    if (data[i, 1] > _maxLon) { _maxLon = data[i, 1]; }
                }
            }
            maxLat = _maxLat;
            minLat = _minLat;
            minLon = _minLon;
            maxLon = _maxLon;
        }

   
    }
 
    [DataContract]
    public class Address
    {
        [DataMember]
        public string road { get; set; }
        [DataMember]
        public string suburb { get; set; }
        [DataMember]
        public string city { get; set; }
        [DataMember]
        public string state_district { get; set; }
        [DataMember]
        public string state { get; set; }
        [DataMember]
        public string postcode { get; set; }
        [DataMember]
        public string country { get; set; }
        [DataMember]
        public string country_code { get; set; }
    }

    [DataContract]
    public class RootObject
    {
        [DataMember]
        public string place_id { get; set; }
        [DataMember]
        public string licence { get; set; }
        [DataMember]
        public string osm_type { get; set; }
        [DataMember]
        public string osm_id { get; set; }
        [DataMember]
        public string lat { get; set; }
        [DataMember]
        public string lon { get; set; }
        [DataMember]
        public string display_name { get; set; }
        [DataMember]
        public Address address { get; set; }
    }


}
