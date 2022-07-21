<?php

namespace app\config;


class Database{
 
    // specify your own database credentials
    private $_host = "localhost";
    private $_db_name = "TP8_mvc";
    private $_username = "root";
    private $_password = "jsa25580";
    private $_conn;
    
     
    // get the database connection
    public function getConnection(){
 
        $this->_conn = null;

        //create the db if it doesn't exists
        try {
            $dbh = new \PDO("mysql:host=$this->_host", $this->_username, $this->_password);
    
            $dbh->exec("
                    DROP DATABASE IF EXISTS `$this->_db_name` ;
                    CREATE DATABASE `$this->_db_name`;
                    CREATE USER '$this->_username'@'localhost' IDENTIFIED BY '$this->_password';
                    GRANT ALL ON `$this->_db_name`.* TO '$this->_username'@'localhost';
                    FLUSH PRIVILEGES;")
            or die(print_r($dbh->errorInfo(), true));
    
        }
        catch (\PDOException $e) {
            die("DB ERROR: " . $e->getMessage());
        }

        //fill database using population document
        try {
            $dbh = new \PDO("mysql:host=" . $this->_host . ";dbname=" . $this->_db_name, $this->_username, $this->_password);
            
            //read the population sql doc
            $myfile = fopen("app\config\peuplement.sql", "r") or die("Unable to open file!");
            $peuplement = fread($myfile, filesize("app\config\peuplement.sql"));
            fclose($myfile);

            $dbh->query($peuplement)
            or die(print_r($dbh->errorInfo(), true));
    
        }
        catch (\PDOException $e) {
            die("DB ERROR: " . $e->getMessage());
        }
        
        //now get the actual connexion
        try{
            $this->_conn = new \PDO("mysql:host=" . $this->_host . ";dbname=" . $this->_db_name, $this->_username, $this->_password);
            $this->_conn->exec("set names utf8");
        }catch(\PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
 
        return $this->_conn;
    }
}
?>