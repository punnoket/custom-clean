<?php if($_SERVER['REQUEST_METHOD'] == 'POST'){ ?>

<?php
    session_start();
    require '../config/dbConfig.php';
    $_POST = json_decode(file_get_contents('php://input'), true);
    $response = new \stdClass();

    if(isset($_SESSION["username"])){
    
        $menuId = $_POST["menuId"];
        $totalPrice = $_POST["totalPrice"];
        $quantity = $_POST["quantity"];
        $id = $_SESSION["id"];

        $sql = "INSERT INTO order_food (menu_id, custom_id, user_id, total_price, quantity) VALUES ('$menuId', '', '$id', '$totalPrice', '$quantity')";
        $result = $con->query($sql);
        if($result !== FALSE){
            $response->message = "ok";
            $response->status = 200;
            echo json_encode($response);
        }
    } else {
            $response->message = "please login";
            $response->status = 403;
            echo json_encode($response);
    }
    
?>

<?php } else header('Location: index.php');?>