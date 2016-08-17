using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Drawing;

namespace BootstrapAspNetApp
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MyDatabase db = new MyDatabase();
            //string userName = "";
            //if (User.Identity.IsAuthenticated)
            //{
            //    userName = User.Identity.Name;
            //}
            //else userName = "Administrator";

            //List<Track> _tracks = db.readTracks(userName, 10);
            //string htt = "";
            //foreach (Track tr in _tracks)
            //{
            //    //var divHtml = new System.Text.StringBuilder();
            //    //divHtml.Append("<a href=\"\" class=\"list-group-item\"><h4 class=\"list-group-item-heading\">");
            //    //divHtml.Append(String.Format("{0}", tr.TrackID));
            //    //System.Web.UI.WebControls.Image img = new System.Web.UI.WebControls.Image();
            //    //img.ImageUrl = "~/userdata/2/uploadedimage/batman-for-facebook.jpg";
            //    //divHtml.Append(img);
            //    //ivHtml.Append("</div>");
            //    byte[] bytes = null;
            //    using (var ms = new MemoryStream())
            //    {
            //        tr.Img.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
            //        bytes = ms.ToArray();
            //    }
            //    string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            //    htt += "<a href=# class=\"list-group-item\" onClick=\"LoadTrack('" + tr.TrackID + "')\"><img ID=\"Image1\" width=\"100%\"  src =\"" + "data:image/jpeg;base64," + base64String + "\"/><p class=\"list-group-item-text\">Delka: " + tr.TraceLenght.ToString() + "</p></a>";

            //}
            //tracks.InnerHtml = htt;
        }
    }
   
    
  
}