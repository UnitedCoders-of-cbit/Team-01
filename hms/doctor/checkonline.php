<?php
    if(isset($_POST['online'])){
        echo("You clicked button one!");
        $sql=mysqli_query($con,"Update appointment set of=1 where id='".$_SESSION['id']."'");
    }
    else {
    echo" dhur";
    }
?>