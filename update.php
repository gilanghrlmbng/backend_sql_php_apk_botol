<?php
include 'conn.php';

if ($_POST) {
    $id = $_POST['id'];
    $merk_botol = $_POST['merk_botol'];
    $ukuran_botol = $_POST['ukuran_botol'];
    $harga = $_POST['harga'];
    $gambar = $_POST['gambar'];
    mysqli_query($db, "UPDATE botol SET merk_botol = '$merk_botol', ukuran_botol = '$ukuran_botol', harga = '$harga',gambar = '$gambar' WHERE id = '$id'");

}
else{
    $response["error"] = true;
    $response["error_msg"] = "404";

    echo json_encode($response);
}
?>