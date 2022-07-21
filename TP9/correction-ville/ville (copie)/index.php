<?php
    use \app\controller\ControllerVille;


    //use \app\entity\Ville;

    //autoload
    function chargerClasse($classe)
      {
	$classe=str_replace('\\','/',$classe);        
	require $classe . '.php';
      }

    spl_autoload_register('chargerClasse'); //fin Autoload

    //code

    // Test villeMOdel
    //$toutesLesVilles = new \app\model\VilleModel();
    //$data = $toutesLesVilles->find();
    //var_dump($data);
    // Test controller
    $toutesLesVilles = new ControllerVille();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="">
</head>
<body>

<?php

/*
//test d'une ville
$ville=new Ville(1,"gggh",12000);

echo $ville;
//$ville->getOne(2);*/



if(isset($_GET['id'])){
    $toutesLesVilles->getOne($_GET['id']);
}
else{
    $toutesLesVilles->getAll();
}
?>

</body>
</html>
