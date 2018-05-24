<?php
    if($_SERVER['REQUEST_METHOD'] == 'DELETE'){
        session_start();
        session_destroy();
        $response = new \stdClass();
        $response->message = "ok";
        $response->status = 200;
        echo json_encode($response);
    }
?>