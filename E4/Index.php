<?php
session_start();

//connexion a la base de donnée 
$serverName="localhost";
$user="Easyloc_user";
$password="pass123";
$database="Easyloc";
$bdd = new PDO("mysql:host=$serverName;dbname=$database;charset=utf8", $user, $password); 
 ?>

<!DOCTYPE html>
<html>
<head>
    <!-- Bootstrap CSS -->
    <meta charset="utf-8">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="..\E4\css\index.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script type="text/javascript" src="index.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">

    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

    <!------ Include the above in your HEAD tag ---------->
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
     <script src="../js/animMenu.js"></script>


                  <!-- NAVBAR !-->
  <header>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top "
                   style="padding: 0; margin: 0;">
                  <div class="container-fluid">
                <a class="navbar-brand" href="Index.php"  style="color: white; font-size: 1.5em;"><h1 id="EasyLoc">EasyLoc</h1></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="margin-left: 27%">


                    <li class="nav-item ">
                      <a class="nav-link"  class="nav-link js-scroll-trigger" href="#Appartement" style="color: white">Appartement</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" class="nav-link js-scroll-trigger" href="#Maison" style="color: white">Maison</a>
                    </li>
                     <li class="nav-item">
                      <a class="nav-link" class="nav-link js-scroll-trigger" href="#Bateau" style="color: white">Bateau</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" class="nav-link js-scroll-trigger" href="#Camping" style="color: white">Camping</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" class="nav-link js-scroll-trigger" href="#Studio" style="color: white">Studio</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" class="nav-link js-scroll-trigger" href="PHP/commentaire.php" style="color: white">Commentaires</a>
                    </li>                  
                  </ul>
                  <form class="form-inline my-2 my-lg-0">
                  <li class="nav-item" id="MonCompteButtonNavBarre">                                 
                    <a class="nav-link" href="PHP/login.php" style="color: white">Connexion/Inscription</a>
                  <li class="nav-item" id="MonCompteButtonNavBarre">                                 
                    <a class="nav-link" href="PHP/deconnexion.php" style="color: white">Deconnexion</a>
                </li>
                  </form>
                </div>
              </nav>  
    
  </header>
</head>


<body>          
  <!-- SLIDE!-->
  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="margin-left: -11px;">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="../E4/image/Slide/slide1.jpg" class="d-block w-100" style="height: 338px;" alt="...">
      </div>
      <div class="carousel-item">
        <img src="../E4/image/Slide/slide2.jpg" class="d-block w-100" style="height: 338px;" alt="...">
      </div>
      <div class="carousel-item">
        <img src="../E4/image/Slide/slide3.jpg" class="d-block w-100" style="height: 338px;" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

<!-- APPART CARD -->
<h2 id="Appartement">Appartement</h2>
<div class='d-flex justify-content-center'>
<?php
  $request = $bdd->query("SELECT * FROM appartement"); // requete qui interoge la bases de donnée
  $nb_data = $request->rowCount(); // recupere le nombre de colone dans la tables Appartement

  echo "<br><br>";
  while ($data = $request->fetch()){  //boucle qui parcoure la table appartement, pour chaque collone on affiche la card 
    $uid=$data["id"]; // je stocke l'id de chaque colone
    echo "<div class='card text-white bg-dark mb-3' style='width:500px; margin: 10px 10px 10px 10px ;'>";
        echo "<img src=".$data["Image"]." class='card-img-top' style='width:500px; height:215px;'>";
          echo "<div class='card-body'>";
              echo "<h5 class='card-title'></h5>";
              echo "<p class='card-text'>".$data["Titre"]."</p>";
              echo "<a href='PHP/appartement.php?id=".$uid."'class='btn btn-light d-grid gap-2 col-13 mx-auto'>En savoir plus</a>"; // je crée un lien vers la page Appartement qui decrie en detail l'appartement, j'utilise la Methode GET pour y passer un parametre qui sera l'id de l'appartement en question, que je vais récuperer dans la page page appartement 
          echo "</div>";
    echo "</div>"; 

  }
?>      
</div>  

<!-- MAISON CARD -->
<h2 id="Maison">Maison</h2> 
<div class='d-flex justify-content-center'>
<?php
  $request = $bdd->query("SELECT * FROM maison ");
  $nb_data = $request->rowCount();
  echo "<br><br>";
  while ($data = $request->fetch()){ 
    $uid=$data["id"];
    echo "<div class='card text-white bg-dark mb-3' style='width:500px; margin: 10px 10px 10px 10px ;'>";
        echo "<img src=".$data["Image"]." class='card-img-top' style='width:500px; height:215px;';>";
          echo "<div class='card-body'>";
              echo "<h5 class='card-title'></h5>";
              echo "<p class='card-text'>".$data["Titre"]."</p>";
             echo "<a href='PHP/maison.php?id=".$uid."'class='btn btn-light d-grid gap-2 col-13 mx-auto'>En savoir plus </a>";
          echo "</div>";
    echo "</div>"; 

  }
?>      
</div> 

<!-- BATEAU CARD -->
<h2 id="Bateau">Yacht</h2> 
<div class='d-flex justify-content-center'>
<?php
  $request = $bdd->query("SELECT * FROM bateau");
  $nb_data = $request->rowCount();
  echo "<br><br>";
  while ($data = $request->fetch()){ 
    $uid=$data["id"];
    echo "<div class='card text-white bg-dark mb-3' style='width:500px; margin: 10px 10px 10px 10px ;'>";
        echo "<img src=".$data["Image"]." class='card-img-top' style='width:500px; height:215px;'>";
          echo "<div class='card-body'>";
              echo "<h5 class='card-title'></h5>";
              echo "<p class='card-text'>".$data["Titre"]."</p>";
              echo "<a href='PHP/bateau.php?id=".$uid."'class='btn btn-light d-grid gap-2 col-13 mx-auto'>En savoir plus </a>";
          echo "</div>";
    echo "</div>"; 

  }
?>      
</div> 

<!-- CAMPIN CARD -->
<h2 id="Camping">Penthouse</h2> 
<div class='d-flex justify-content-center'>
<?php
  $request = $bdd->query("SELECT * FROM penthouse");
  $nb_data = $request->rowCount();
  echo "<br><br>";
  while ($data = $request->fetch()){ 
    $uid=$data["id"];
    echo "<div class='card text-white bg-dark mb-3' style='width:500px; margin: 10px 10px 10px 10px ;'>";
        echo "<img src=".$data["Image"]." class='card-img-top' style='width:500px; height:215px;'>";
          echo "<div class='card-body'>";
              echo "<h5 class='card-title'></h5>";
              echo "<p class='card-text'>".$data["Titre"]."</p>";
              echo "<a href='PHP/penthouse.php?id=".$uid."'class='btn btn-light d-grid gap-2 col-13 mx-auto'>En savoir plus </a>";
          echo "</div>";
    echo "</div>"; 

  }
?>      
</div> 

<!-- STUDIO CARD -->
<h2 id="Studio">Studio</h2> 
<div class='d-flex justify-content-center'>
<?php
  $request = $bdd->query("SELECT * FROM studio");
  $nb_data = $request->rowCount();
  echo "<br><br>";
  while ($data = $request->fetch()){ 
    $uid=$data["id"];
    echo "<div class='card text-white bg-dark mb-3' style='width:500px; margin: 10px 10px 10px 10px ;'>";
        echo "<img src=".$data["Image"]." class='card-img-top' style='width:500px; height:215px;'>";
          echo "<div class='card-body'>";
              echo "<h5 class='card-title'></h5>";
              echo "<p class='card-text'>".$data["Titre"]."</p>";
              echo "<a href='PHP/studio.php?id=".$uid."'class='btn btn-light d-grid gap-2 col-13 mx-auto'>En savoir plus </a>";
          echo "</div>";
    echo "</div>"; 

  }
?>      
</div> 

        <!--FOOTER !-->
        <?php include("include/footer.php")  ?>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <!-- Jquery needed -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="js/scripts.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    <!-- Function used to shrink nav bar removing paddings and adding black background -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>