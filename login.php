<?php

include 'conn.php';

if ($_GET){

    $username = $_GET['username'];
    $email = $_GET['email'];

    $sql = mysqli_query($db, "SELECT * FROM AKUN WHERE USERNAME = '$username'");
    $user = mysqli_fetch_assoc($sql);

    $id = $user['id_user'];
    $username = $user['username'];
    $email = $user['email'];
    $password = $user['password'];

    if ($sql) {
        $response["error"] = false;
        $response["error_msg"] = "Berhasil Login";
        $response["id"] = $id;
        $response["username"] = $username;
        $response["email"] = $email;
        $response["password"] = $password;
        echo json_encode($response);
    } else{
        $response["error"] = false;
        echo json_encode($response);
    }

} else {
    $response["error"] = true;
    $response["error_msg"] = "404";

    echo json_encode($response);
}
?>
