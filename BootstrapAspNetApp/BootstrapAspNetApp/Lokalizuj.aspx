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
          var vectorLayer;
          var CurrentPage = 0;
          var nrPages = 0;
          var nrTracks = 0;


          $(document).ready(function () {
              InitMap();
              LoadPoint();

          });


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

              var iconStyle = new ol.style.Style({
                  image: new ol.style.Icon(/** @type {olx.style.IconOptions} */({
                      anchor: [0.5, 46],
                      anchorXUnits: 'fraction',
                      anchorYUnits: 'pixels',
                      opacity: 0.75,
                      src: 'data/icon.png'
                  }))
              });

              vectorLayer = new ol.layer.Vector({
                  style: iconStyle
              });
              map.addLayer(vectorLayer);

          }


          function LoadPoint() {
              $.ajax({
                  type: "POST",
                  url: "GetTracks.asmx/GetLastposition",
                  data: "{}",
                  contentType: "application/json; charset=utf-8",
                  dataType: "json",

                  success: function (data, status) {
                      var points = JSON.parse(data.d);

                      Addpoint(points);

                  },
                  error: function (request, status, error) {
                      console.log(request.statusText);
                  }

              });
          }
          
          function Addpoint(points) {
              var iconFeatures = [];
              if (points.length > 0) {
                  for (var i = 0; i < points.length; i++) {
                      var iconFeature = new ol.Feature({
                          geometry: new ol.geom.Point(ol.proj.transform([Number(points[i].lng.replace(",", ".")), Number(points[i].lat.replace(",", "."))], 'EPSG:4326',     
                          'EPSG:3857')),
                          name: 'Poslední poloha',
                          population: 4000,
                          rainfall: 500
                      });
                     // var point = ol.proj.transform([Number(points[i].lng.replace(",", ".")), Number(points[i].lat.replace(",", "."))], 'EPSG:4326', 'EPSG:3857')
                      iconFeatures.push(iconFeature);
                  }
                  

                  //var featureLine = new ol.Feature({
                  //    geometry: new ol.geom.LineString(pointArray)
                  //});
                  var vectorSource = new ol.source.Vector({
                      features: iconFeatures //add an array of features
                  });

                  vectorLayer.setSource(vectorSource);

                  
                  //var extent = vectorLayer.getSource().getExtent();
                  //map.getView().fit(extent, map.getSize());
                  map.getView().setCenter(iconFeatures[0].getGeometry().getCoordinates());
                  map.getView().setZoom(17);
              }




              




              

          }


            </script>

               <div id="mapCanvas" style="height: 100%;"></div>
          




</asp:Content>
