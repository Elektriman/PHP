<?php

namespace app\Entity ;

use app\Entity\Ville;

require "Ville.php" ;

class Model {
    private $connexion ;
    private $table ;

    function __construct($connexion, $table){
        $this->connexion = $connexion ;
        $this->table = $table ;
    }

    function find(){
        $result = pg_query($this->connexion, 'SELECT * FROM ' . $this->table);
        return pg_fetch_all($result, PGSQL_ASSOC);
    }

    function read($id){
        $query = 'SELECT * FROM $1 WHERE id = $2';
        $result = pg_prepare($this->connexion, "", $query);
        $result = pg_execute($this->connexion, "", array($this->table, (string) $id));
        return pg_fetch_all($result, PGSQL_ASSOC);
    }

}

class VilleModel extends Model {
    function __construct($connexion){
        parent::__construct($connexion, 'ville');
    }

    function fillAll(){
        $findArray = $this->find();
        $l = count($findArray);
        $resultArray = array_fill(0, $l, new Ville(array([0, "", 0, 0])));
        foreach($findArray as $key=>$Ville){
            $resultArray[$key]->setId($Ville['id']);
            $resultArray[$key]->setNom($Ville['nom']);
            $resultArray[$key]->setPopulation($Ville['population']);
            $resultArray[$key]->setPays_id($Ville['pays_id']);
        }
        return $resultArray ;
    }

    function findOne($id){
        $findArray = $this->read($id);
        //return new Ville($findArray['id'], $findArray['nom'], $findArray['population'], $findArray['pays_id']);
    }
}

class ControllerVille {
    private $model ;

    function __construct($model){
        $this->model = $model ;
    }

    function getAll(){
        require "connexion.php" ;
        $this->model->findAll();
    }

    function getOne($id){
        return $this->model->findOne($id);
    }
}
?>