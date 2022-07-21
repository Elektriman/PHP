<?php 

	namespace app\Entity;


	class ParcZoe implements \Countable{

		private $_mesZoe;

		public function __construct(){
			$this->_mesZoe[]=new Zoe("blanc", "AAA 11 ZZZ");
			$this->_mesZoe[]=new Zoe("gris", "BBB 22 YYY");
			$this->_mesZoe[]=new Zoe("noir", "CCC 33 XXX ");
		}

		public function count(){
			return count($this->_mesZoe);
		}

	}

 ?>