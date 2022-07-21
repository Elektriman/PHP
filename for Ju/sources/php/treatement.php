<?php

include 'orbitals.php';

$Orbitals = createOrbs();

$extract = file('atoms.txt');
$Atoms = array();
foreach($extract as $line){
    array_push($Atoms, array_combine(array("Atomic Number", "Symbol", "Name"), explode ("\t" , $line)));
}

function fill(int $z){
    global $Orbitals ;

    $Estruct = "";
    $u = $z ;
    $copy = True ;
    foreach($Orbitals as $o){
        if($copy){
            if($u > $o->subOrb()){
                $Estruct .= $o->__toString() . " " ;
                $u-=$o->subOrb();
            } else {
                $Estruct .= $o->getPeriod().$o->getLayer().$u ;
                $u=0 ;
                $copy = False ;
            }
        }
    }
    return $Estruct ;
}

function NNG($z){
    $NGs = array(1=>2, 2=>10, 3=>18, 4=>36, 5=>54, 6=>86, 7=>118);
    $i=7 ;
    while($NGs[$i] > $z){
        $i-- ;
    }
    if($z==1){
        return array("z"=>1, "p"=>1) ;
    } else {
        return array("z"=>$NGs[$i], "p"=>$i) ;
    }
}

function cut($NG, $Estruct){
    $i=0 ;
    while(substr($Estruct, $i, 3)!=$NG["p"]."p6" && $i<strlen($Estruct)){
        $i++ ;
    }
    return substr($Estruct, $i+3);
}

//↑↓
function representation($Estruct){
    $parts = explode(" ", $Estruct);
    $res = array();
    $max = 2 ;
    foreach($parts as $p){
        if($max < 4*orbital::$layers[$p[1]]+2){
            $max = 4*orbital::$layers[$p[1]]+2 ;
        }
    }
    foreach($parts as $p){
        $m = (int) substr($p, 2);
        $lay = 4*(orbital::$layers[$p[1]])+2;
        $res[substr($p, 0, 2)] = orbLine($m, $max, $lay);
    }
    $res = array_reverse($res);
    return $res ;
}

function orbLine($m, $max, $lay){
    $res = array() ;
    $semil = (int) $lay/2 ;
    for($i=0; $i<$semil; $i++){
        array_push($res, "  ");
    }
    $i=0 ;
    while($i<$m){
        if($i<$semil){
            $res[$i] = "↑ " ;
        } else {
            $res[$i-$semil] = "↑↓" ;
        }
        $i++ ;
    }
    while(count($res)<(int) $max/2){
        $res = array_merge(array("  "), $res, array("  "));
    }
    return $res ;
}

if(isset($_POST['ok'])){
    $z = $_POST['z'];
    $Estruct = fill($z);
    $nearestGas = NNG($z);
    $cutStr = cut($nearestGas, $Estruct);
    $shema = representation($Estruct);
} else {
    header("index.php");
    exit ;
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
    <p><?=$Atoms[$z-1]["Name"]?></p>
    <p>[<?=$Atoms[$z-1]["Symbol"]?>]=<?=$Estruct?></p>
    <p>[<?=$Atoms[$z-1]["Symbol"]?>]=[<?=$Atoms[$nearestGas["z"]-1]["Symbol"]?>]<?=$cutStr?></p>
    <table>
        <?php foreach($shema as $layer=>$line): ?>
            <tr>
                <td><?=$layer?></td><td>|</td>
                <?php foreach($line as $bit): ?>
                    <?php if($bit!="  "): ?>
                        <td><strike><?=$bit?></strike></td>
                    <?php else : ?>
                        <td><?=$bit?></td>
                    <?php endif; ?>
                <?php endforeach; ?>
            </tr>
        <?php endforeach; ?>
    </table>
    </body>
</html>