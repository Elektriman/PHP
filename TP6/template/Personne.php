<?php
class Personne {
    private int $id ;
    private string $nom ;
    private string $prenom ;

    //constructeur
    function __construct(int $id, string $nom, string $prenom){
        $this->id = $id ;
        $this->nom = $nom ;
        $this->prenom = $prenom ;
    }

    //getters
    function getId(){
        return $this->id ;
    }
    function getNom(){
        return $this->nom ;
    }
    function getPrenom(){
        return $this->prenom ;
    }

    //setters
    function setId(int $id){
        $this->$id = $id ;
    }
    function setNom(string $nom){
        $this->$nom = $nom ;
    }
    function setPrenom(string $prenom){
        $this->$prenom = $nom ;
    }

    function __toString(){
        return sprintf('Personne {id : %d, nom : %s, prenom : %s}', $this->getId(), $this->getNom(), $this->getPrenom()); 
    }

}
?>