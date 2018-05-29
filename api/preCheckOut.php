<?php if($_SERVER['REQUEST_METHOD'] == 'GET'){ ?>

<?php
    session_start();
    $response = new \stdClass();
    $response->address = $_SESSION["address"];
    $response->firstName = $_SESSION["firstName"];
    $response->lastName = $_SESSION["lastName"];
    $response->totalPrice = $_SESSION["totalPrice"];
    header('Content-Type: application/json');
    echo json_encode($response);
?>

<?php } else header('Location: index.php');?>