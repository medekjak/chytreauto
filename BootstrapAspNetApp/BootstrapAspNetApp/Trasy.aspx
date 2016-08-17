<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Trasy.aspx.cs" Inherits="BootstrapAspNetApp.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_head" runat="server">

        <script type="text/javascript" src="http://www.openlayers.org/api/OpenLayers.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/ol3/3.7.0/ol.js"></script>

    <script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ol3/3.7.0/ol.css" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ol3/3.7.0/ol.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_body" runat="server">
      <script type="text/javascript">

          var map;
          var vectorLineLayer;
          var CurrentPage = 0;
          var nrPages = 0;
          var nrTracks = 0;


          $(document).ready(function () {
              LoadTracks(1);
              InitMap();
              ReadInfo();

              $("#back").click(function () {
                  GoBack();
              });

              $("#next").click(function () {
                  GoNext();
              });
          });

          function ReadInfo() {
              $.ajax({
                  type: "POST",
                  url: "GetTracks.asmx/GetDefaultInfo",
                  data: "{}",
                  contentType: "application/json; charset=utf-8",
                  dataType: "json",

                  success: function (data, status) {
                      var defInfo = JSON.parse(data.d);
                      nrPages = defInfo[0].NrPages;
                      nrTracks = defInfo[0].nrTracks;
                      if (nrPages != 0)
                          {
                          CurrentPage = 1;
                          }
                  },
                  error: function (request, status, error) {
                      console.log(request.statusText);
                  }

              });
          }
          function GoNext() {
              if (CurrentPage < nrPages) {
                  LoadTracks(CurrentPage + 1);
                  CurrentPage = CurrentPage + 1;
              }

          }
          function GoBack() {
              if (CurrentPage > 1) {
                  LoadTracks(CurrentPage - 1);
                  CurrentPage = CurrentPage - 1;
              }
          }
          
          function InitMap() {
              
              
              var czeLonLat = [14.419802, 50.129872];
              var czeWebMercator = ol.proj.fromLonLat(czeLonLat);
              //console.log(czeWebMercator);
              map = new ol.Map({
                  layers: [
                    new ol.layer.Tile({
                        source: new ol.source.OSM()
                    })
                  ],
                  target: 'mapCanvas',
                  view: new ol.View({
                      center: czeWebMercator,
                      zoom: 9
                  })
              });

                  vectorLineLayer = new ol.layer.Vector({
                      style: new ol.style.Style({
                          fill: new ol.style.Fill({ color: '#271f74', weight: 5 }),
                          stroke: new ol.style.Stroke({ color: '#271f74', width: 5 })
                      })
                  });
                  map.addLayer(vectorLineLayer);

              }


          function LoadTrackPoints(TrackID) {
              console.log(TrackID);
                  $.ajax({
                      type: "POST",
                      url: "GetTracks.asmx/GetTrackPoints",
                      data: "{TrackID: '" + TrackID + "'}",
                      contentType: "application/json; charset=utf-8",
                      dataType: "json",
                  
                      success: function (data, status) {
                          var points = JSON.parse(data.d);
                          //console.log(points);
                          Addpoints(points);

                      },
                      error: function (request, status, error) {
                          console.log(request.statusText);
                      }

              });
          }
          function LoadTracks(pageNr) {
              $.ajax({
                  type: "POST",
                  url: "GetTracks.asmx/GetTracks",
                  data: "{PageNr: '" + pageNr + "'}",
                  contentType: "application/json; charset=utf-8",
                  dataType: "json",

                  success: function (data, status) {
                      var tracks = JSON.parse(data.d);
                      AddTracks(tracks);

                  },
                  error: function (request, status, error) {
                      console.log(request.statusText);
                  }

              });
          }
          

          function Addpoints(points) {
              var pointArray = [];
              if (points.length > 0) {
                  for (var i = 0; i < points.length; i++) {
                      var point = ol.proj.transform([Number(points[i].lng.replace(",", ".")), Number(points[i].lat.replace(",", "."))], 'EPSG:4326', 'EPSG:3857')
                      pointArray.push(point);
                  }

                  var featureLine = new ol.Feature({
                      geometry: new ol.geom.LineString(pointArray)
                  });
                  var vectorLine = new ol.source.Vector({});
                  vectorLine.addFeature(featureLine);

                  if (vectorLineLayer != null) {
                      vectorLineLayer.setSource(vectorLine);
                  }
                  
                  var extent = vectorLineLayer.getSource().getExtent();
                  //console.log(extent);
                  map.getView().fit(extent, map.getSize());
                  //console.log(map);
              }

          }
          function AddTracks(tracks) {
              if (tracks.length > 0) {
                  $("#tracks").children().remove();

                  var str1 = "<a href=# class=\"list-group-item\" onClick=\"LoadTrackPoints('";
                  var str2 = "')\"><img ID=\"Image1\" width=\"100%\"  src =\"";
                  var str3 = "data:image/jpeg;base64,";
                  var str4 = "\"/><p class=\"list-group-item-text\"><span class=\"glyphicon glyphicon-road\"></span>";
                  var str5 = "</p></a>";

                  for (var i = 0; i < tracks.length; i++) {
                      var Pointoutput = str1 + tracks[i].TrackID + str2 + str3 + tracks[i].Img + str4 + tracks[i].Endtime + str5;
                      $("#tracks").append(Pointoutput);
                  }
              }


          }

            </script>

           
        <div class="row">
            <div class="col-sm-3">
                <div  id="tracks">
                    </div>
                 <ul class="pager">
    <li><a href="#" id="back">novější</a></li>
    <li><a href="#" id="next">starší</a></li>
  </ul>
                </div>
            <div class="col-sm-9">
               <div id="mapCanvas" style="height: 100%;"></div>
            </div>

        </div>


</asp:Content>
