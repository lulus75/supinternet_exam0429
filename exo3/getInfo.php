<?php
global $config;
$pdo = new PDO($config['host'], $config['user'], $config['password']);

class info{

    public function getInfo($pdo){
        $req = $pdo->prepare('SELECT * FROM informations');

        $req->execute();
        return $getInfo = $req->fetchAll();
    }
}