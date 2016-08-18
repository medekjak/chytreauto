using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BootstrapAspNetApp
{
    public static class GeoMath
    {
        public static double getLat(string lat)
        {
            double degrees = 0;
            double minutes = 0.0000;

            string[] inputArray = lat.Split(".".ToCharArray());
            try
            {

                degrees = double.Parse(inputArray[0].Substring(0, 2));
                minutes = double.Parse(inputArray[0].Substring(2, 2)) + (double.Parse(inputArray[1]) / 10000);


            }
            catch (Exception e)
            {
                Console.WriteLine("parsing lat failed: " + lat + "   " + e.ToString());
            }
            return degrees + (minutes / 60) ;


        }
        public static double getLon(string lon)
        {
            double degrees = 0;
            double minutes = 0.0000;

            string[] inputArray = lon.Split(".".ToCharArray());
            try
            {

                degrees = double.Parse(inputArray[0].Substring(0, 3));
                minutes = double.Parse(inputArray[0].Substring(3, 2)) + (double.Parse(inputArray[1]) / 10000);


            }
            catch (Exception e)
            {
                Console.WriteLine("parsing lat failed: " + lon + "   " + e.ToString());
            }
            return degrees + (minutes / 60);


        }
    }
}
