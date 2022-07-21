<?php
/**
 * Created by PhpStorm.
 * User: abourmau
 * Date: 11/11/2018
 * Time: 14:36
 */

namespace app;

class Ville{
    private $nom;

    public function __construct($n)
    {
        $this->nom=$n;
    }

    public function __toString()
    {
        // TODO: Implement __toString() method.

        return "ville : ".$this->nom;
    }
}