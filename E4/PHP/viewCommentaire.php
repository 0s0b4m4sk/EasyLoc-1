<?php
session_start(); 
	include("infoConnection.php");
	$bdd = new PDO("mysql:host=$serverName;dbname=$database;charset=utf8", $user, $password, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]); 
	$uid = $_GET["id"];
  @$logged = $_SESSION['logged']; 
	
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="..\css\index.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script type="text/javascript" src="..\js\index.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">

    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
     <script src="../js/animMenu.js"></script>

	
</head>

<body>
    <nav class="navbar navbar-dark" style="margin-top: 4em;">
  <form class="form-inline" action="" method="POST">
    <input class="form-control mr-sm-2" type="search" placeholder="Pseudo" name="Pseudo" id="Pseudo" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav>
</body>

<?php
    $pseudo= $_POST['Pseudo'];
    $request = $bdd->query("SELECT * FROM Commentaires where Pseudo='".$_POST['Pseudo']."'"); // requete qui interoge la bases de donnée
    //print_r($request);
    $nb_data = $request->rowCount(); // recupere le nombre de colone dans la tables Appartement

  

    echo "<br><br>";
        while ($data = $request->fetch()){  //boucle qui parcoure la table appartement, pour chaque collone on affiche la card 
            $uid=$data["id"]; // je stocke l'id de chaque colone
            echo "<div class='card text-white bg-dark mb-3' style='width:500px; margin: 10px 10px 10px 10px ;'>";
                echo "<div class='card-body'>";
                    echo "<h5 class='card-title'></h5>";
                    echo "<p class='card-text'>Pseudo : ".$data["Pseudo"]."</p>";
                    echo "<p class='card-text'>Addresse mail : ".$data["Email"]."</p>";
                    echo "<p class='card-text'>Commentaires : ".$data["Commentaire"]."</p>";
                echo "</div>";
            echo "</div>"; 
        }
    

    
  
?>

</html>