<?php
/**
 * Created by PhpStorm.
 * User: abourmau
 * Date: 17/11/2018
 * Time: 15:39
 */
namespace app\model;

use app\entity\Ville;
use app\model\Model;


class VilleModel extends Model{

    public function __construct()
    {
        $this->table = "ville";
        parent::__construct();
    }


    public function findAll(){
        $arrayVille=$this->find();

        $newTab=array();        //$newTab=[];

        foreach ($arrayVille as $uneVille){
            $newTab[]=new Ville($uneVille);   // array_push($newTab,$uneVille);

        }

        return $newTab;

    }


    public function findOne($id){
        $data=$this->read($id);

        //var_dump($data);

        return new Ville($data);
    }




}