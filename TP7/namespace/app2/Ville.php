<?php
/**
 * Created by PhpStorm.
 * User: abourmau
 * Date: 11/11/2018
 * Time: 14:36
 */

namespace app2;

class Ville{
    private $nom;
    private $population;

    public function __construct($n,$pop)
    {
        $this->nom=$n;
        $this->population=$pop;
    }

    public function __toString()
    {
        // TODO: Implement __toString() method.

        $date=new \DateTime('2018-01-01');

        return "ville : ".$this->nom . " - sa population est de ".$this->population. " personnes -".$date->format('Y');
    }
}