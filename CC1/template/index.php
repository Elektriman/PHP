<?php

function unique($array){
    $count = array([]);
    foreach($array as $val){
        if(!in_array($val, array_keys($count))){
            $count[$val] = 1 ;
        } else {
            $count[$val]+=1 ;
        }
    }
    $res = array([]);
    foreach($count as $key=>$val){
        if($count[$key]==1){
            array_push($res, $val);
        }
    }
    return $res ;
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
        <?php if($dispo) :?>
            <p class="disponible">Go pro au prix de <span>320€</span><p> 
        <? else : ?>
            <p class="indisponible"><?=$txt?></p>
        <? endif; ?>
    </body>
</html>