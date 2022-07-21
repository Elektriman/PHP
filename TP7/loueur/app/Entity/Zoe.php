<?php 
	namespace app\Entity;

	use \app\Traits\Geolocalisable;
	use \app\Traits\Rechargeable;

	class Zoe extends Voiture{

		use Geolocalisable, Rechargeable;
		
		const TYPE_ENERGY="electrique";

		public function __construct($couleur, $immatriculation){
			parent::__construct($couleur, self::TYPE_ENERGY, $immatriculation, "Renault");
		}

		public function __toString(){
			return "Je suis une voiture Zoe de type electrique immaticulee ".$this->getImmatriculation();
		}

		public function polluer(){
			return "je roule propre";
		}

		public static function pub(){
			return "Acheter ma Zoe ::: ECOLO";
		}

		
	}
 ?>