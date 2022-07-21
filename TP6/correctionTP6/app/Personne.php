<?php

namespace app;


class Personne {
    //attributs

    private $nom;
    private $prenom;
    private $age;

    /**
     * Personne constructor.
     * @param $nom
     * @param $prenom
     * @param $age
     */
 /*   public function __construct($nom="", $prenom="", $age=null)
    {
        $this->nom = $nom;
        $this->prenom = $prenom;
        $this->age = $age;
    }*/


    public function __construct(array $data){
        $this->hydrate($data);
    }


    private function hydrate(array $data){
        foreach ($data as $key => $value) {
            $method = 'set'.ucfirst($key);
            if (method_exists($this, $method)) {
                $this->$method($value);
            }

        }
    }






    public function __toString()
    {
        // TODO: Implement __toString() method.

        return $this->nom. " ". $this->prenom. " ".$this->age;
    }

    /**
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * @param string $nom
     */
    public function setNom($nom)
    {
        $this->nom = $nom;
    }

    /**
     * @return string
     */
    public function getPrenom()
    {
        return $this->prenom;
    }

    /**
     * @param string $prenom
     */
    public function setPrenom($prenom)
    {
        $this->prenom = $prenom;
    }

    /**
     * @return null
     */
    public function getAge()
    {
        return $this->age;
    }

    /**
     * @param null $age
     */
    public function setAge($age)
    {
        $this->age = $age;
    }





}
