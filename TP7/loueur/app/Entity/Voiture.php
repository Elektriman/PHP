<?php 

	namespace app\Entity;

	use \app\Interfaces\Vehicule;

	abstract class Voiture implements Vehicule{
		private $_couleur;
		private $_type;
		private $_immatriculation;
		private $_constructeur;

		public function __construct($couleur,$type,$immatriculation,$constructeur){
			$this->_couleur=$couleur;
			$this->_type=$type;
			$this->_immatriculation=$immatriculation;
			$this->_constructeur=$constructeur;
		}

		public function getCouleur(){
			return $this->_couleur;
		}

		public function getImmatriculation(){
			return $this->_immatriculation;
		}

		public function getType(){
			return $this->_type;
		}

		public function getConstructeur(){
			return $this->_constructeur;
		}

		public function setCouleur($couleur){
			$this->_couleur=$couleur;
		}

		public function setType($type){
			$this->_type=$type;
		}

		public function setImmatriculation($immatriculation){
			$this->_immatriculation=$immatriculation;
		}

		public function setConstructeur($constructeur){
			$this->_constructeur=$constructeur;
		}

		public function __toString(){
			return "Je suis une voiture";
		}

		public function rouler(){
			return true;
		}

		public function naviguer(){
			return false;
		}

		public function voler(){
			return false;
		}

		abstract public function polluer();

	}
 ?>