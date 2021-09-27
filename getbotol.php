<?php
include 'conn.php';


    $sql = mysqli_query($db, 'SELECT * FROM botol') or die(mysqli_error($db));

    $botol_array = array();
    while($data = mysqli_fetch_assoc($sql)){
        $botol_array[] = $data;
    }
  
    echo json_encode($botol_array);


?>