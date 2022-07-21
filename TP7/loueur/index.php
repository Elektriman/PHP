<?php 

	use app\Entity\Zoe;
	use app\Entity\ParcZoe;
    use app\Entity\JetSki;
	use app\Entity\FlotteJetSki;
	use app\Entity\Ville;
	
	//autoload
    function chargerClasse($classe)
      {
	$classe=str_replace('\\','/',$classe);      
	require $classe . '.php'; 
      }

    spl_autoload_register('chargerClasse'); //fin Autoload
	

    //creation d'une zoe et du parc
	$zoe=new Zoe("Noir", "AAA-11-TTT");
	$parc = new ParcZoe();

    //creation des jetski
    $unJet=new JetSki("marque de jet !!!!");
	$parcJet=new FlotteJetSki();
	
	//creation de la ville
	$Ville1 = new Ville(array(["id"=>1, "nom"=>"La Rochelle", "population"=>20000, "pays_id"=>33]));
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>TP Objet 2</title>
</head>
<body>
	<form action="app/Entity/connexion.php", method='post'>
		<label>mdp :</label>
		<input type='text' name='mdp' value='mot de passe'/>

		<input type='submit' name='valider' value='ok'/>
	</form>
</body>
</html>
