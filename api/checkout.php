<?php if($_SERVER['REQUEST_METHOD'] == 'DELETE'){ ?>

<?php
    require '../config/dbConfig.php';
    session_start();
    $id = $_SESSION["id"];
    $response = new \stdClass();

    $sql    = "DELETE FROM order_food WHERE user_id = '$id'";
    $result = $con->query($sql);

    if($result !== FALSE){
        header('Content-Type: application/json');
        $response->message = "success";
        $response->status = 200;
        echo json_encode($response);
    }
?>

<?php } else header('Location: index.php');?>