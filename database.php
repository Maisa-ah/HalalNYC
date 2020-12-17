<?php

  $servername = "localhost:3308";
  $username = "dev15dbuser";
  $password = "FM15web2020";
  $db = "dev15db";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $db);

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_error());
    } 

    $name = false;
    $nation = false;
    $all = false;
    if(isset($_POST['name'])){
        $name = $_POST['name'];
        $sql= "SELECT * FROM `halal` WHERE `Nationality` LIKE ('%$name%')";
    }
    if(isset($_POST['all_value'])){
      $sql= "SELECT * FROM `halal`";
    }

    // update location with location_status if admin location_status.
      // $sql= "SELECT * FROM `halal` WHERE `Nationality` LIKE ('$name')";

      $restaurant = mysqli_query($conn, $sql);

      $geojson = array( 'type' => 'FeatureCollection', 'features' => array());
      while($row = mysqli_fetch_assoc($restaurant)){
        if($row['Description']==null){
          $row['Description']='';
        }
        $marker = array(
                    'type' => 'Feature',
                    'features' => array(
                        'type' => 'Feature',
                        'properties' => array(
                            'title' => $row['Name'],
                            'description' => $row['Description'],
                            'marker-color' => '#f00',
                            'marker-size' => 'small'
                            ),
                        "geometry" => array(
                            'type' => 'Point',
                            'coordinates' => array( 
                                $row['lng'],
                                $row['lat']
                            )
                        )
                    )
        );
      array_push($geojson['features'], $marker['features']);
      }
      // echo json_encode($geojson, JSON_NUMERIC_CHECK);
    $conn->close();

?>