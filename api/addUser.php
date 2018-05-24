<?php if($_SERVER['REQUEST_METHOD'] == 'POST'){ ?>

<?php
    require '../config/dbConfig.php';
    session_start();

    $firstName = $_POST["firstName"];
    $latstName = $_POST["lastName"];
    $username = $_POST["username"];
    $pass = $_POST["password"];
    $email = $_POST["email"];
    $phoneNumber = $_POST["phoneNumber"];
    $address = $_POST["address"];
    $options    = ['cost' => 12,];

    /**  Store password in DB  **/
    $pass   = password_hash("$pass", PASSWORD_BCRYPT, $options);
    $sql    = "INSERT INTO user (first_name,last_name,username,password,email,phone_number,address) VALUES('$firstName','$latstName','$username','$pass','$email', '$phoneNumber', '$address')";
    $result = $con->query($sql);

    if($result !== FALSE){
        $_SESSION["firstName"] = $row["first_name"];
        $_SESSION["lastName"] = $row["last_name"];
        $_SESSION["email"] = $row["email"];
        $_SESSION["username"] = $row["username"];
        $_SESSION["phoneNumber"] = $row["phone_number"];
        $_SESSION["address"] = $row["address"];
        header("Location: ../index.html");
    }
?>

<?php } else header('Location: index.php');?>