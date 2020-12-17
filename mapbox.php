<?php
include_once 'database.php';
?>
  <style>
      .marker {
        background-image: url('images/symbol.svg');
        background-size: cover;
        width: 2em;
        height: 2em;
        border-radius: 50%;
        cursor: pointer;
      }
  </style>
  <script>
    mapboxgl.accessToken = 'pk.eyJ1IjoibWljZXVoIiwiYSI6ImNrZXJzdHowNDNpZTQyc283cXZhankybjEifQ.sYks64528rlP7Lk3lBnJnA';
      var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/miceuh/ckerszr6r2txs19qsf8twkegp',
        
        center: [-73.936, 40.706],
        zoom:10.00
    });

    //JSON_NUMERIC_CHECK keeps nums from string
    var geoJson = <?php echo json_encode($geojson, JSON_NUMERIC_CHECK); ?>;

    geoJson.features.forEach(function(marker) {
      // create a HTML element for each feature
      var el = document.createElement('div');
      el.className = 'marker';

      new mapboxgl.Marker(el)
        .setLngLat(marker.geometry.coordinates)
        .setPopup(new mapboxgl.Popup({ offset: 25 })
        .setHTML('<h3>' + marker.properties.title + '</h3>' + '<br> <h5>' + marker.properties.description + '</h5>'))
        .addTo(map);
    }); 

  </script>