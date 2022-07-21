<?php

class Velo {
    private $id ;
    private $date_mise_service ;
    private $dateRevision ;
    private $stationId ;

    function __construct($id, $DMS, $DR, $SID){
        $this->id = $id ;
        $this->date_mise_service = $DMS ;
        $this->dateRevision = $DR ;
        $this->stationId = $SID ;
    }

    function getDateMiseService(){
        return $this->date_mise_service ;
    }

    function setDateMiseService($date){
        $this->date_mise_service = $date ;
    }
}

$V1 = new Velo(0, '10/05/2019', '10/12/2020', 14);

if(isset($_POST['ok'])){
    $V1->setDateMiseService($_POST['date']);
}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="style.css" />
        <title>Title</title>
    </head>
    <body>
        <form action='index.php' method=post>
            <input type='date' name='date' value='date de mise en service' />
            <input type='submit' name='ok' />
        </form>
        <p><?=$V1->getDateMiseService()?></p>
    </body>
</html>