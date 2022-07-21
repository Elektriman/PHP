<?php

namespace app\Entity;

require "../Traits/Geolocalisable.php" ;
use app\Traits\Geolocalisable ;

class Ville {

    use Geolocalisable ;

    private  $id ;
    private  $nom ;
    private  $population ;
    private  $pays_id ;

    //constructeur
    public function __construct(array $data){
        $this->hydrate($data) ;
    }

    //setters
    public function setId(int $id){
        $this->id = $id ;
    }
    public function setNom(string $nom){
        $this->nom = $nom ;
    }
    public function setPopulation(int $pop){
        $this->population = $pop ;
    }
    public function setPays_id(int $id){
        $this->pays_id = $id ;
    }

    //getters
    public function getId(){
        return $this->id ;
    }
    public function getNom(){
        return $this->nom ;
    }
    public function getPopulation(){
        return $this->population ;
    }
    public function getPays_id(){
        return $this->pays_id ;
    }

    //fonction hydrate
    public function hydrate(array $donnees)    {
        foreach ($donnees[0] as $key => $value)
        {
            $method = 'set'.ucfirst($key);

            if (method_exists($this, $method))            
            {
                $this->$method($value);
            }
        }    
    }

    public function __toString(){
        return "Ville { id : " . $this->getId() . ", nom : " . $this->getNom() . ", population : " . $this->getPopulation() . ", id pays : " . $this->getPays_id() . "}" ;
    }
}

?>