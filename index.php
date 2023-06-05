<?php 
error_reporting(-1);
ini_set('display_errors', 1);

require_once __DIR__.'/vendor/autoload.php';

$config = ['settings' => ['displayErrorDetails' => true]]; 
$app = new \Slim\App($config);


$app->get('/', function () {
  header('Content-Type: application/json;charset=utf-8');
  header("Access-Control-Allow-Origin: *");
  echo 'go page /city';
});


$app->run();