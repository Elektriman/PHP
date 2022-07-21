<?php
/**
 * Created by PhpStorm.
 * User: abourmau
 * Date: 17/11/2018
 * Time: 15:27
 */

namespace app\entity;

//use \app\Traits\Geolocalisable;


class Ville{

   //use Geolocalisable;

    private $id;
    private $nom;
    private $pop;
    private  $paysId;

    /**
     * Ville constructor.
     * @param $_nom
     * @param $_pop
     */
    public function __construct(array $data)
    {
        $this->hydrate($data);
    }


    public function hydrate(array $donnees)
    {
        foreach ($donnees as $key => $value)
        {
            $method = 'set'.ucfirst($key);

            if (method_exists($this, $method))
            {
                $this->$method($value);

            }
        }
    }

    /**
     * @return mixed
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * @param mixed $nom
     */
    public function setNom($nom)
    {
        $this->nom = $nom;
    }

    /**
     * @return mixed
     */
    public function getPop()
    {
        return $this->pop;
    }

    /**
     * @param mixed $pop
     */
    public function setPop($pop)
    {
        $this->pop = $pop;
    }





    public function setPaysId($paysID)
    {
        $this->paysId = $paysID;
    }

    public function getPaysId()
    {
        return $this->paysId;
    }

    public function __toString()
    {
        // TODO: Implement __toString() method.
        return $this->nom. " sa population est de ".$this->pop;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }




}