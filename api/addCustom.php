<?php if($_SERVER['REQUEST_METHOD'] == 'POST'){ ?>

<?php
    session_start();
    require '../config/dbConfig.php';
    $_POST = json_decode(file_get_contents('php://input'), true);
    $response = new \stdClass();

    if(isset($_SESSION["username"])){
        $riceId = $_POST["riceId"];
        $meetId = $_POST["meetId"];
        $vegetableId = $_POST["vegetableId"];
        $cook = $_POST["cook"];
        $totalPrice = $_POST["totalPrice"];
        $quantity = $_POST["quantity"];
        $id = $_SESSION["id"];

        $sql = "INSERT INTO custom_clean (rice_id, meet_id, vegetable_id, cook) VALUES ('$riceId', '$meetId', '$vegetableId', '$cook')";
        $result = $con->query($sql);
        if($result !== FALSE){
            $customId = $con->insert_id;
            $sql2 = "INSERT INTO order_food (menu_id, custom_id, user_id, total_price, quantity) VALUES ('', '$customId', '$id', '$totalPrice', '$quantity')";
            $result2 = $con->query($sql2);
            if($result2 !== FALSE){
                $response->message = "ok";
                $response->status = 200;
                echo json_encode($response);
            } else {
                echo $result2 ;
            }
        }
    } else {
            $response->message = "please login";
            $response->status = 403;
            echo json_encode($response);
    }
    
?>

<?php } else header('Location: index.php');?>