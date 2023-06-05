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

$app->get('/city/{id}', function(\Slim\Http\Request $request, \Slim\Http\Response $response) use($app){
header('Content-Type: application/json;charset=utf-8');
header("Access-Control-Allow-Origin: *");

$id = $request->getAttribute('id');
$city = ORM::for_table('city')->find_one($id);

if(!$city){
echo json_encode([
  'data' => [],
  'code' => 1,
  'message' => 'no requested information'
], JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
} else {
echo json_encode ([
  'data' => [
      'id'=> $city->id,
      'name' => $city->name,
      'country_code' => $city->country_code,
      'population'=> $city->population,
      'img'=> $city->img,
  ]
  ], JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
}
});

$app->run();