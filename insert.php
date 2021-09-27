<?php
include 'conn.php';

if ($_POST) {

    $merk_botol = $_POST['merk_botol'];
    $ukuran_botol = $_POST['ukuran_botol'];
    $harga = $_POST['harga'];
    $gambar = $_POST['gambar'];


    $sql = "INSERT INTO botol (merk_botol, ukuran_botol, harga, gambar) VALUES ('$merk_botol', '$ukuran_botol', '$harga', '$gambar')";
    mysqli_query($db, $sql);
}
else{
    $response["error"] = true;
    $response["error_msg"] = "404";

    echo json_encode($response);
}

?>

