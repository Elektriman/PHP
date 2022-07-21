<?php 

	namespace app\Traits;

	trait Rechargeable{
		private $_valeurEnergie = 100;

		public function recharge(){
			$this->_valeurEnergie = 100;
		}

		public function getValeurEnergie(){
			return $this->_valeurEnergie;
		}

		public function setValeurEnergie($val){
		    $this->_valeurEnergie = $val;
        }

		public function depenserEnergie($val){
			if($this->_valeurEnergie<$val){
				$this->_valeurEnergie=0;
			}
			else{
				$this->_valeurEnergie=$this->_valeurEnergie-$val;
			}
		}
	}


?>