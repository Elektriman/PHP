<?php

class orbital {
    public static $layers = array("s"=>0, "p"=>1, "d"=>2, "f"=>3, "g"=>4);
    private $layer ;
    private $period ;
    private $value ;

    function __construct(int $p, String $l){
        $this->layer = $l ;
        $this->period = $p ;
        $this->value = $this->createValue();
    }

    public function createValue(){
        $l = 0 ;
        foreach($this::$layers as $letter=>$value){
            if($letter==$this->layer){
                $l = $value ;
            }
        }
        return $this->period + $l ;
    }

    public function getValue(){
        return $this->value ;
    }

    public function getPeriod(){
        return $this->period ;
    }

    public function getLayer(){
        return $this->layer ;
    }

    public function subOrb(){
        return 4*static::$layers[$this->layer]+2 ;
    }

    public function __toString(){
        return ((String) $this->period) . $this->layer . (String) (4*static::$layers[$this->layer]+2) ;
    }
}

function createOrbs(){
    $Orbitals = array();
    for($i=1; $i<8; $i++){
        $j = 0 ;
        foreach(orbital::$layers as $letter=>$value){
            if ($j<$i){
                $o = new orbital($i, $letter);
                if($o->getValue()<=8){
                    array_push($Orbitals, $o);
                }
            }
            $j++ ;
        }
    }

    function kletch(orbital $o1, orbital $o2){
        if($o1->getValue()==$o2->getValue()){
            return $o1->getPeriod() - $o2->getPeriod() ;
        } else {
            return $o1->getValue() - $o2->getValue() ;
        }
    }

    uasort($Orbitals , 'kletch');
    
    return $Orbitals ;
}
?>