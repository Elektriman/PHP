<?php




/*function chargerClasse($classe)
{
    require 'include/'.$classe . '.php'; 
}

spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
*/

/*use app\Ville as uneVille, app2\Ville as AutreVille;

require 'app/ville.php';
require 'app2/ville.php';


$v=new uneVille('Saintes');

$v2=new AutreVille('La rochelle',80000);
*/

// LIEU
use app\Ville ;
use app2\Ville as AutreVille;


// CHARGEMENT FICHIER
function chargerClasse($classe)    {
    $classe=str_replace('\\','/',$classe);
    require $classe . '.php';
}
spl_autoload_register('chargerClasse'); //Autoload



//CODE
$maVille  = new Ville('la rochelle');
$newVille = new AutreVille('bordeaux', 300000);

?>


<!DOCTYPE html>
<html>
    <head>
        <title>Untitled Document</title>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta name="keywords" content="">
    </head>
    <body>

    <p><?=$maVille?></p>
    <p><?=$newVille?></p>

    </body>
</html>


