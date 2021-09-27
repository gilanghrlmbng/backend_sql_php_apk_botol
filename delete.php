<?php

include 'conn.php';

if ($_POST) {
    $id = $_POST['id'];
    $sql = mysqli_query($db, "DELETE from botol where id='$id'");

}
else{
    $response["error"] = true;
    $response["error_msg"] = "404";

    echo json_encode($response);

}
?>