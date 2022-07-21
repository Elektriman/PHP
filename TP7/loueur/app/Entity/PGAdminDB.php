<?php

namespace app\Entity ;

class PGADB{
 
    // specify your own database credentials
    private $host = "localhost";
    private $db_name = "voyage";
    private $port = "5433";
    private $username = "postgres";
    private $password = "";
    private $conn;

    function __construct($host,  $db_name,  $port,  $username,  $password){
        $this->host = $host;
        $this->db_name = $db_name;
        $this->port = $port;
        $this->username = $username;
        $this->password = $password;
    }
    
     
    // get the database connection
    public function getConnection(){
 
        $this->conn = null;
 
        try{
            $this->conn = pg_connect("host=" . $this->host . " port=" . $this->port . " dbname=" . $this->db_name . " user=" . $this->username . " password=" . $this->password);
        }
        catch(\PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
 
        return $this->conn;
    }
}
?>