<?php 
error_reporting(-1);
ini_set('display_errors', 1);

require_once __DIR__.'/vendor/autoload.php';

$config = ['settings' => ['displayErrorDetails' => true]]; 
$app = new \Slim\App($config);

ORM::configure(array(
  'connection_string' => 'mysql:host=your-host;dbname=your-dbName',
  'username'=> 'your-username',
  'password'=> 'your-pass'
));

$app->get('/', function () {
  header('Content-Type: application/json;charset=utf-8');
  header("Access-Control-Allow-Origin: *");
  echo 'go page /city';
});

$app->get('/city', function () {
  header('Content-Type: application/json;charset=utf-8');
  header("Access-Control-Allow-Origin: *");
  $name = ORM::for_table('city')->find_array();
  echo json_encode($name, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
});

$app->run();