<?php

include 'conn.php';



if ($_POST) {

    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "INSERT INTO akun (username, email, password) VALUES ('$username', '$email', '$password')";

    $query = mysqli_query($db, $sql);
    if ($query){
        $response["error"] = false;
        $response["error_msg"] = "Berhasil Registrasi";
        echo json_encode($response);
    } else{
        $response["error"] = false;
        $response["error_msg"] = "Gagal Mengirim";
        echo json_encode($response);
    }

}
else{
    $response["error"] = true;
    $response["error_msg"] = "404";

    echo json_encode($response);
}
?>