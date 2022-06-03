<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css"
          integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ=="
          crossorigin=""/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/opencagedata/leaflet-opencage-geocoding@v2.0.0/dist/css/L.Control.OpenCageGeocoding.min.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.css" />
    <style>
        #map { height: 400px; }
    </style>
    <title>Document</title>
</head>
<body>
<div id="map"></div>
<b>Coordonnées</b>
<form action="ChangeTerrain" method="post" >
<%--    <label class="id">l' ID <input type="number" name="id" id="id" size=12 value=""></label>--%>
    <label>latitude<input type="text" name="lat" id="lat" size=12 value="0.0" onchange="traiterOnChange()"></label>
    <label>longitude<input type="text" name="lon" id="lon" size=12 value="0.0" onchange="traiterOnChange()"></label>
    <label>Ville<input type="text" name="ville" id="ville" value=""  size="58" readonly/></label>
    <label>Région<input type="text" name="region" id="region" value=""  size="58" readonly/></label>
    <label>Addresse<input type="text" name="addr" value="" id="addr" size="58" readonly/></label>
    <input type="submit" name="change" class="changeform_input" value="changer">
</form>


<script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"
        integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ=="
        crossorigin=""></script>

<script src="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.js"></script>


<script>
    var marker;
    var mymap = L.map('map').setView([51.505, -0.09], 13);
    L.tileLayer('https://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png', {
        // Il est toujours bien de laisser le lien vers la source des données
        attribution: 'données © <a href="//osm.org/copyright">OpenStreetMap</a>/ODbL - rendu <a href="//openstreetmap.fr">OSM France</a>',
        minZoom: 1,
        maxZoom: 20
    }).addTo(mymap);
    var iconeClient = L.icon({
        iconUrl: "ressources/location.png",
        iconSize: [50, 50],
        iconAnchor: [25, 50],                //icone pour le client
        popupAnchor: [0, -50]
    });

    function addr_search(inp)
    {
        var xmlhttp = new XMLHttpRequest();
        var url = "https://nominatim.openstreetmap.org/search?format=json&limit=3&q="+inp+"&addressdetails=1";
        xmlhttp.onreadystatechange = function()
        {
            if (this.readyState == 4 && this.status == 200)
            {
                var myArr = JSON.parse(this.responseText);
                console.log(myArr)
                document.getElementById('addr').value = myArr[0].display_name;
                document.getElementById('ville').value = myArr[0].address.city
                document.getElementById('region').value = myArr[0].address.region

            }
        };
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
    }
    function traiterOnChange(e)
    {
        console.log(e);
        latitude = document.getElementById('lat').value
        longitude = document.getElementById('lon').value


        inp = latitude+","+longitude;
        console.log(addr_search(inp));
        if(marker)
        {
            mymap.removeLayer(marker);
            marker = L.marker([latitude,longitude],{icon: iconeClient}).bindPopup("<b>terrain sélectionné</b>");
            marker.addTo(mymap);
            mymap.panTo(new L.LatLng(latitude,longitude));

        }
        else
        {
            marker = L.marker([latitude,longitude],{icon: iconeClient}).bindPopup("<b>terrain sélectionné</b>");
            marker.addTo(mymap);
            mymap.panTo(new L.LatLng(latitude,longitude));

        }

    }


    mymap.on('click', function(e) {
        console.log(e);
        document.getElementById('lat').value = e.latlng.lat;
        document.getElementById('lon').value  = e.latlng.lat;


        inp = e.latlng.lat+","+e.latlng.lng;
        console.log(addr_search(inp));
        if(marker)
        {
            mymap.removeLayer(marker);
            marker = L.marker([e.latlng.lat,e.latlng.lng],{icon: iconeClient}).bindPopup("<b>terrain sélectionné</b>");
            marker.addTo(mymap);
        }
        else
        {
            marker = L.marker([e.latlng.lat,e.latlng.lng],{icon: iconeClient}).bindPopup("<b>terrain sélectionné </b>");
            marker.addTo(mymap);
        }


    });

    L.Control.geocoder().addTo(mymap);
</script>

</body>
</html>