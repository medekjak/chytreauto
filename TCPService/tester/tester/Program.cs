using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServerLibrary;

namespace tester
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                TCPServersimple tcpServer = new TCPServersimple();
                tcpServer.StartServer();
                HeartBeat hb = new HeartBeat();
                /*
                SeviceLi.TCPServer server = null;
                serviceLib.HeartBeat heartbeat = null;

                server = new TCPServer();
                server.StartServer();
                heartbeat = new HeartBeat();
                */
                Console.ReadLine();
            }
            catch(Exception exc)
            {

                Console.WriteLine(exc.Message);
                Console.ReadLine();
            }
        }
    }
}
