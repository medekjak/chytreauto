using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Net;
using System.IO;


namespace ServerLibrary
{
    public static class WebServiceSender
    {
        public static string CallWebService(string methodName, string data)
        {
            var _url = "http://chytreauto.aspone.cz/GetTracks.asmx";
            var _action = "http://tempuri.org/" + methodName;

            //var _url = "http://localhost/BootstrapAspNetApp/GetTracks.asmx";
            //var _action = "http://tempuri.org/GetDefaultInfo";
            XmlDocument soapEnvelopeXml;
            if (methodName == "StoreData")
            {
                soapEnvelopeXml = CreateSoapEnvelope(data);
            }
            else
            {
                soapEnvelopeXml = CreateSoapEnvelopeHeartBeat(data);
            }
            
            HttpWebRequest webRequest = CreateWebRequest(_url, _action);
            InsertSoapEnvelopeIntoWebRequest(soapEnvelopeXml, webRequest);

            // begin async call to web request.
            IAsyncResult asyncResult = webRequest.BeginGetResponse(null, null);

            // suspend this thread until call is complete. You might want to
            // do something usefull here like update your UI.
            asyncResult.AsyncWaitHandle.WaitOne();

            // get the response from the completed web request.
            string soapResult;
            using (WebResponse webResponse = webRequest.EndGetResponse(asyncResult))
            {
                using (StreamReader rd = new StreamReader(webResponse.GetResponseStream()))
                {
                    soapResult = rd.ReadToEnd();

                }
                //Console.Write(soapResult);
            }
            if (string.IsNullOrEmpty(soapResult))            
            {
                return "";
            }
            else
            {
                XmlDocument soapResponse = new XmlDocument();
                try
                {
                    soapResponse.LoadXml(soapResult);
                    
                    XmlNamespaceManager xmlnsManager = new System.Xml.XmlNamespaceManager(soapResponse.NameTable);
                    xmlnsManager.AddNamespace("soap", "http://www.w3.org/2003/05/soap-envelope");
                    xmlnsManager.AddNamespace("xsi", "http://www.w3.org/2001/XMLSchema-instance");
                    xmlnsManager.AddNamespace("xsd", "http://www.w3.org/2001/XMLSchema");
                    xmlnsManager.AddNamespace("si", "http://tempuri.org/");

                    // You'd access the full path like this
                    return soapResponse.SelectSingleNode("/soap:Envelope/soap:Body/si:" + methodName + "Response/si:" + methodName + "Result", xmlnsManager).InnerText;
 


                    //return soapResponse.SelectSingleNode("//StoreDataResult", manager).InnerText;

                }
                catch(Exception e)
                {
                    return "";
                }
                
            }
            
        }

        private static HttpWebRequest CreateWebRequest(string url, string action)
        {
            HttpWebRequest webRequest = (HttpWebRequest)WebRequest.Create(url);
            webRequest.Headers.Add("SOAPAction", action);
            webRequest.ContentType = "text/xml;charset=\"utf-8\"";
            webRequest.Accept = "text/xml";
            webRequest.Method = "POST";
            return webRequest;
        }

        private static XmlDocument CreateSoapEnvelope(string data)
        {
            XmlDocument soapEnvelop = new XmlDocument();
            soapEnvelop.LoadXml(@"<soap:Envelope xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" xmlns:xsd=""http://www.w3.org/2001/XMLSchema"" xmlns:soap=""http://www.w3.org/2003/05/soap-envelope"">
  <soap:Body>
    <StoreData xmlns=""http://tempuri.org/"">
      <ApiKey>TestKey</ApiKey>
      <data>" + data + @"</data>
    </StoreData>
  </soap:Body>
</soap:Envelope>");

 return soapEnvelop;
        }
        private static XmlDocument CreateSoapEnvelopeHeartBeat(string data)
        {
            XmlDocument soapEnvelop = new XmlDocument();
            soapEnvelop.LoadXml(@"<soap:Envelope xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" xmlns:xsd=""http://www.w3.org/2001/XMLSchema"" xmlns:soap=""http://www.w3.org/2003/05/soap-envelope"">
  <soap:Body>
    <CommHeartBeat  xmlns=""http://tempuri.org/"">
      <ApiKey>TestKey</ApiKey>
      <Message>" + data + @"</Message>
    </CommHeartBeat >
  </soap:Body>
</soap:Envelope>");

            return soapEnvelop;
        }

        private static void InsertSoapEnvelopeIntoWebRequest(XmlDocument soapEnvelopeXml, HttpWebRequest webRequest)
        {
            using (Stream stream = webRequest.GetRequestStream())
            {
                soapEnvelopeXml.Save(stream);
            }
        }
    }
}
