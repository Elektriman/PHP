<?php 

	namespace app\Entity;

	use \app\interfaces\Vehicule;
	use \app\traits\Geolocalisable;

	class JetSki implements Vehicule{

        use Geolocalisable;         //utilisation du trait

	    private $_marque;

		public function __construct($marque){
			$this->_marque=$marque;
		}
        
        public function __toString(){
            return "jetski".$this->_marque;
        }

        //Implementation des méthodes de l'interface Vehicule
		public function rouler(){
			return false;
		}

		public function naviguer(){
			return true;
		}

		public function voler(){
			return false;
		}


	}

 ?>