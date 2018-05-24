<?php if($_SERVER['REQUEST_METHOD'] == 'GET'){ ?>

<?php
    session_start();
    require '../config/dbConfig.php';
    $sql    = "SELECT * FROM meet";
    $result = $con->query($sql);
    header('Content-Type: application/json');
    $response = new \stdClass();

    if(isset($_SESSION["username"])){
        $response->isLogin = TRUE;
        $response->firstName = $_SESSION["firstName"];
        $response->lastName = $_SESSION["lastName"];
        $response->email = $_SESSION["email"];
        $response->username = $_SESSION["username"];
        $response->phoneNumber = $_SESSION["phoneNumber"];
        $response->address = $_SESSION["address"];
        echo json_encode($response);
    } else {
        $response->isLogin = FALSE;
        echo json_encode($response);
    }
?>

<?php } else header('Location: index.php');?>