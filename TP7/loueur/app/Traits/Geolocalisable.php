<?php 

    namespace app\traits;

    trait Geolocalisable{
        private $_latitude;
        private $_longitude;


        public function getLatitude()
        {
            return $this->_latitude;
        }


        public function setLatitude($latitude)
        {
            $this->_latitude = $latitude;
        }


        public function getLongitude()
        {
            return $this->_longitude;
        }


        public function setLongitude($longitude)
        {
            $this->_longitude = $longitude;
        }

    }

 ?>