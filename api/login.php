<?php 
    session_start();
    require '../config/dbConfig.php';

    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $username = $_POST["username"];   
        $password = $_POST["password"];
        
        $sql = "SELECT * FROM user WHERE username = '$username'";
        $result = $con->query($sql);

        if($result->num_rows==1){
            $row        = $result->fetch_assoc();
            $secretPass = $row["password"];
            
            if(password_verify($password,$secretPass)===true){
                $_SESSION["firstName"] = $row["first_name"];
                $_SESSION["lastName"] = $row["last_name"];
                $_SESSION["email"] = $row["email"];
                $_SESSION["username"] = $row["username"];
                $_SESSION["phoneNumber"] = $row["phone_number"];
                $_SESSION["address"] = $row["address"];

                $response->message = "ok";
                $response->status = 200;
                echo json_encode($response);
            }else{
                $response->message = "Password not correct";
                $response->status = 403;
                echo json_encode($response);
            }
        }else{
            $response->message = "User not found";
            $response->status = 403;
            echo json_encode($response);
        }
    }else
        header("Location: ../index.php");


?>