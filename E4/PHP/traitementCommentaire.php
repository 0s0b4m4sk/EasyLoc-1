<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<?php
	include("infoConnection.php");
	$bdd = new PDO("mysql:host=$serverName;dbname=$database;charset=utf8", $user, $password);

	
		$pseudo = htmlspecialchars($_POST['Pseudo']);
		$commentaire = $_POST['Commentaire'];
		$email = $_POST['Email'];

		$request = $bdd->prepare("INSERT INTO Commentaires(Pseudo,Email,Commentaire) VALUES(:pseudo, :email, :commentaire)");
		$request->execute(array( 
			':pseudo' => $pseudo, 
			':email' => $email,
			':commentaire' => $commentaire 
		));
		

			echo 'Commentaire Validé';
			sleep(5);
			header("Locations:http://192.168.1.54/EasyLoc-1/E4/PHP/commentaire.php");

			




?>

</body>
</html>