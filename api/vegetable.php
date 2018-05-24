<?php if($_SERVER['REQUEST_METHOD'] == 'GET'){ ?>

<?php
    require '../config/dbConfig.php';
    $sql    = "SELECT * FROM vegetable";
    $result = $con->query($sql);

    if($result !== FALSE){
    header('Content-Type: application/json');
    $rows = array();

    while($r = mysqli_fetch_assoc($result)) {
    $rows[] = $r;
    }   
    echo json_encode($rows);
    }
?>

<?php } else header('Location: index.php');?>