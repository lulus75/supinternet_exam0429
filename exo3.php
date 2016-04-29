<?php
require_once ('exo3/config/dbconf.php');
require_once ('exo3/getInfo.php');

$display = new info();
$infoDisp = $display->getInfo($pdo);

foreach ($infoDisp as $key){
echo('title: '.$key[1].'<br>'.'Date: '.$key[2].'<br>'.'Type: '.$key[3].'<br>'.'Parution: '.$key[4].'<br>'.'Abonnees: '.$key[5].'<br>'.'Age Moyen : '.$key[6].'<br><br>');
}


