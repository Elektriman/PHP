<?php

namespace app;


class PersonneManager{
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }


    public function add(Personne $pers){
        //verifier que la personne n'existe pas

        $sql = 'INSERT INTO personne(nom, prenom) VALUES(:nom, :prenom)';

        $q = $this->db->prepare($sql);

        $q->bindValue(':nom', $pers->getNom());
        $q->bindValue(':prenom', $pers->getPrenom());

        $r=$q->execute();

        return $r;
    }


    public function getAll()
    {
        //renvoyer le tableau de toutes les personnes

        $data=array();

        $sql="select * from personne ";

        $res=$this->db->query($sql);


        $donnees=$res->fetchAll(\PDO::FETCH_ASSOC);

        foreach($donnees as $k=>$v){
            $data[]=new Personne($v);
        }

        return $data;
    }




}