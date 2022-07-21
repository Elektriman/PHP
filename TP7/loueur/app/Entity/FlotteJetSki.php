<?php 

	namespace app\Entity;

	class FlotteJetSki implements \Countable{
		private $_mesJetSki;

        
        public function __construct(){
            /* des jets juste pour tester */
            $this->_mesJetSki[]=new jetSki("jetski1");
            $this->_mesJetSki[]=new jetSki("jetski2");
            $this->_mesJetSki[]=new jetSki("jetski3");
        }
        
		public function addJetSki($marque){
			$this->_mesJetSki[]=new jetSki($marque);
        }

		public function count(){
			return count($this->_mesJetSki);
		}
	}

 ?>