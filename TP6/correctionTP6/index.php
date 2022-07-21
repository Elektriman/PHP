<?php

use app\Personne;
use app\Database;
use app\PersonneManager;




function chargerClasse($classe){
    $classe=str_replace('\\','/',$classe);
    require $classe . '.php';
}


spl_autoload_register('chargerClasse'); //Autoload

//////////////////////////////

$db = new Database();
$connex = $db->getConnection();


//////////////////



$bob = new Personne(
    array(
    'nom'=>'durand',
    'prenom'=>'toto',
    'age'=> 20
    )
);

$autre = new Personne(array());

$newP = new Personne(
    array(
        'nom' => 'jjjjjj',
        'prenom' => 'jjjjjj',
        'age' => 56
    )
);

// Manager de Personne

$manageP = new PersonneManager($connex);
$info = $manageP->add($newP);
//echo $info;

$donneesBD = $manageP->getAll();

//var_dump($donneesBD);

//echo $bob;

//echo $autre;
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <ul>
        <?php foreach ($donneesBD as $p) :?>
        <li><?=$p?></li>
        <?php endforeach; ?>
    </ul>
</body>
</html>
