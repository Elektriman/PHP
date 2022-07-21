<?php

namespace app\Entity ;

use app\Entity\VilleModel ;

require "Model.php" ;
require "PGAdminDB.php" ;

if($_POST['valider']){
    //connexion à la BDD postgreSQL via pgAdmin
    $DB = new PGADB("localhost", "voyage", "5433", "postgres", $_POST['mdp']);
    $conn = $DB->getConnection();
    $VilleModel = new VilleModel($conn);
}

$controller = new ControllerVille($VilleModel);
$arres = $controller->getOne(0);
print_r($arres);
printf("a");

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>TP Objet 2</title>
</head>
<body>
    
</body>
</html>