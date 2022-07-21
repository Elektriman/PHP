<?php 

    namespace app\traits;

    trait Geolocalisable{
        private $lat;
        private $long;

        /**
         * @return mixed
         */
        public function getLat()
        {
            return $this->lat;
        }

        /**
         * @param mixed $lat
         */
        public function setLat($lat)
        {
            $this->lat = $lat;
        }

        /**
         * @return mixed
         */
        public function getLong()
        {
            return $this->long;
        }

        /**
         * @param mixed $long
         */
        public function setLong($long)
        {
            $this->long = $long;
        }



    }

 ?>