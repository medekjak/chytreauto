﻿using System;
using System.Net;
using System.Net.Sockets;


namespace ServerLibrary
{
    public class TCPServersimple
    {
        private Int32 port = 7070;
        private IPAddress localAddr = IPAddress.Parse("192.168.0.16");
        private TcpListener server = null;
        //public TCPServer()
        //{
        //    this.ServiceName = "GEOlocServer";
        //    this.CanStop = true;
        //    this.CanPauseAndContinue = false;
        //    this.AutoLog = true;
        //}
        //protected override void OnStart(string[] args)
        //{
        //    StartServer();
        //}

        //protected override void OnStop()
        //{
        //    StopServer();
        //}
        public void StartServer()
        {
            EventLog.writeLine("service started");

            try
            {
                // Set the TcpListener on port 


                // TcpListener server = new TcpListener(port);
                server = new TcpListener(localAddr, port);

                // Start listening for client requests.
                server.Start();

                // Buffer for reading data
                Byte[] bytes = new Byte[256];
                String data = null;

                // Enter the listening loop.
                while (true)
                {
                    //Console.WriteLine("Waiting for a connection... ");

                    // Perform a blocking call to accept requests.
                    // You could also user server.AcceptSocket() here.
                    TcpClient client = server.AcceptTcpClient();
                    //Console.WriteLine("Connected!");
                    EventLog.writeLine("Connected!");

                    data = null;

                    // Get a stream object for reading and writing
                    NetworkStream stream = client.GetStream();

                    int i;

                    // Loop to receive all the data sent by the client.
                    while ((i = stream.Read(bytes, 0, bytes.Length)) != 0)
                    {

                        // Translate data bytes to a ASCII string.
                        data = System.Text.Encoding.ASCII.GetString(bytes, 0, i);
                        //Console.WriteLine("Received: " + data);
                        EventLog.writeLine("Received: " + data);

                        // Process the data sent by the client.
                        data = data.ToUpper();
                        string outMessage = WebServiceSender.CallWebService("StoreData", data);
                        if (!string.IsNullOrEmpty(outMessage))
                        {
                            byte[] msg = System.Text.Encoding.ASCII.GetBytes(outMessage);

                            // Send back a response.
                            stream.Write(msg, 0, msg.Length);
                            //Console.WriteLine("Sent: " + outMessage);
                            EventLog.writeLine("Sent: " + outMessage);
                            //tr
                        }
                    }

                    // Shutdown and end connection
                    client.Close();
                }
            }


            catch (Exception e)
            {
                //Console.WriteLine("SocketException: {0}", e);
                EventLog.writeLine("SocketException:" + e.ToString());

            }
            finally
            {
                // Stop listening for new clients.
                RestartServer();

            }


            //Console.WriteLine("\nHit enter to continue...");
            //Console.Read();
        }
        public void StopServer()
        {
            server.Stop();
        }
        public void RestartServer()
        {
            if (server!= null)
            {
                server.Stop();
            }

            StartServer();
        }
    }
}
