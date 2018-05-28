<?php if($_SERVER['REQUEST_METHOD'] == 'GET'){ ?>

<?php
    require '../config/dbConfig.php';
    session_start();
    $response = new \stdClass();
    $id = $_SESSION["id"];

    $sql    = "SELECT * FROM order_food WHERE user_id = '$id'";
    $result = $con->query($sql);

    if($result !== FALSE){
        header('Content-Type: application/json');
        $menuIdArray = array();
        $customIdArray = array();
        $totalPrice = 0;

        while($r = mysqli_fetch_assoc($result)) {
            $menuIdArray[] = $r["menu_id"];
            $customIdArray[] = $r["custom_id"];
            $totalPrice += $r["total_price"];
        }   

        $menuResult = array();
        $customResult = array();

        foreach ($menuIdArray as &$menuId) {
            if($menuId !== "0") {
                $sql = "SELECT * FROM menu WHERE id = '$menuId'";
                $resultMenu = $con->query($sql);
                while($menu = mysqli_fetch_assoc($resultMenu)) {
                    $menuResult[] = $menu;
                }
            }
        }

        foreach ($customIdArray as &$customId) {
            if($customId !== "0") {
                $customResponse = new \stdClass();
                $sql = "SELECT * FROM custom_clean WHERE id = '$customId'";
                $resultCustom = $con->query($sql);
                while($custom = mysqli_fetch_assoc($resultCustom)) {
                    $riceResponse = new \stdClass();
                    $vegetableResponse = new \stdClass();
                    $meetResponse = new \stdClass();
                    $totalCustom = 0;

                    $riceId = $custom["rice_id"];
                    $sql = "SELECT * FROM rice WHERE id = '$riceId'";
                    $resultRice = $con->query($sql);
                    while($rice = mysqli_fetch_assoc($resultRice)) {
                        $riceResponse->name = $rice["name"];
                        $riceResponse->image = $rice["image"];
                        $riceResponse->price = $rice["price"];
                        $totalCustom+=$rice["price"];
                    }

                    $vegetaId = $custom["vegetable_id"];
                    $sql = "SELECT * FROM vegetable WHERE id = '$vegetaId'";
                    $resultVegetable = $con->query($sql);
                    while($vegetable = mysqli_fetch_assoc($resultVegetable)) {
                        $vegetableResponse->name = $vegetable["name"];
                        $vegetableResponse->image = $vegetable["image"];
                        $vegetableResponse->price = $vegetable["price"];
                        $totalCustom+=$vegetable["price"];
                    }

                    $meetId = $custom["meet_id"];
                    $sql = "SELECT * FROM meet WHERE id = '$meetId'";
                    $resultMeet = $con->query($sql);
                    while($meet = mysqli_fetch_assoc($resultMeet)) {
                        $meetResponse->name = $meet["name"];
                        $meetResponse->image = $meet["image"];
                        $meetResponse->price = $meet["price"];
                        $totalCustom+=$meet["price"];
                    }
                    $customResponse->rice = $riceResponse;
                    $customResponse->vegetable = $vegetableResponse;
                    $customResponse->meet = $meetResponse;
                    $customResponse->cook = $custom["cook"];
                    $customResponse->price = $totalCustom;
                    $totalCustom = 0;
                    $customResult[] = $customResponse;
                }
            }
        }

        $response->menu = $menuResult;
        $response->customMenu = $customResult;
        $response->totalPrice = $totalPrice;

        echo json_encode($response);
    }
?>

<?php } else header('Location: index.php');?>