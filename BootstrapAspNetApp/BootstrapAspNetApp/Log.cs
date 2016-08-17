using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BootstrapAspNetApp
{
    public static class Log
    {
        public static void writeError(string message)
        {
            write(message);
        }
        public static void writeDebug(string message)
        {
            bool debug = false;
            bool.TryParse(System.Configuration.ConfigurationManager.AppSettings["debug"].ToString(), out debug);
            if (debug)
            {
                write(message);
            }
        }
        private static void write(string message)
        {
            using (System.IO.StreamWriter file =
            new System.IO.StreamWriter(System.Web.Hosting.HostingEnvironment.MapPath("~/Log.txt"), true))
            {
                file.WriteLine(DateTime.Now.ToString() + " : " + message);
            }
            //System.IO.File.WriteLine(System.Web.Hosting.HostingEnvironment.MapPath("~/Log.txt"), DateTime.Now.ToString() + " : " + message);
        }
    }
}