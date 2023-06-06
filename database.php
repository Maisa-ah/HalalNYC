<?php
  require_once 'vendor/autoload.php';
  // use Dotenv\Dotenv;
  $dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
  // $dotenv = new Dotenv(__DIR__);
  // try {
    $dotenv->load();
  // }
  // catch (InvalidPathException $e){
  //   echo "Failed to load env file.";
  // }

  $servername = $_ENV["DB_SERVERNAME"];
  $username = $_ENV["DB_USERNAME"];
  $password = $_ENV["DB_PASSWORD"];
  $db = $_ENV["DB_NAME"];
  echo 'SERVER' . $servername . $db;
  // Create connection
  $conn = mysqli_connect($servername, $username, $password, $db);
  // mysql_select_db($db) or die("Could not open the database '$db'");
  // Check connection
  if (!$conn) {
    die("Connection failed: " . mysqli_error());
  } 

  $name = false;
  $nation = false;
  $all = false;
  if(isset($_POST['name'])){
    $name = $_POST['name'];
    $sql= "SELECT * FROM `HALAL_RESTAURANTS` WHERE `Nationality` LIKE ('%$name%')";
  }
  if(isset($_POST['all_value'])){
    $sql= "SELECT * FROM `HALAL_RESTAURANTS`";
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
                $row['Longitude'],
                $row['Latitude']
              )
            )
        )
      );
    array_push($geojson['features'], $marker['features']);
  }
  // echo json_encode($geojson, JSON_NUMERIC_CHECK);
  $conn->close();

?>