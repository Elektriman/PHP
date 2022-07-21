<?php
/**
 * Created by PhpStorm.
 * User: abourmau
 * Date: 18/11/2018
 * Time: 15:14
 */

namespace app\controller;

use \app\model\VilleModel;

class ControllerVille{
    private $model;
    //private $view;

    public function __construct()
    {
        $this->model=new VilleModel();
    }


    public function getAll(){
        $content = $this->model->findAll();
        include('app/view/getAllVilles.php');
    }


    public function getOne($id){
        $monNom = "hkhkjhkj";
        $content = $this->model->findOne($id);
        include('app/view/getUneVille.php');
    }


}