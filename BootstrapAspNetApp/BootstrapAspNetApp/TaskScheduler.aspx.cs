using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BootstrapAspNetApp
{
    public partial class TaskScheduler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Log.writeDebug("taskscheduler run");
            MyDatabase db = new MyDatabase();
            DataTable schedules =  db.readSchedules();
            foreach (DataRow schedule in schedules.Rows)
            {
                DateTime lastRunTime;
                double periodInSeconds = 0;
                if (DateTime.TryParse(schedule["LASTRUNTIME"].ToString(), out lastRunTime) && double.TryParse(schedule["PERIOD"].ToString(), out periodInSeconds))
                {
                    if (lastRunTime.AddSeconds(periodInSeconds) < DateTime.UtcNow)
                    {
                        switch (schedule["NAME"].ToString())
                        {
                            case "ProcessTracks": DataProcessor.ProcessTracks();
                                break;
                            case "DeleteLog": DataProcessor.DeleteLog();
                                break;
                            case "CheckCommServerHeartBeat": DataProcessor.CheckCommServerHeartBeat();
                                break;
                        }

                        db.updateScheduleTime(schedule["NAME"].ToString());
                    }
                }

            }


        }
    }
}