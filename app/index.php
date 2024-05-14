<?php

//dependecias 
require_once('inc/config.php');
require_once('inc/api_functions.php');
// $variables = [
//     'Nome' => 'Arthur', 
//     'Sobrenome' => 'Ferreira', 
// ];

//CHAMA A API PASSSADNO OS DADOS COMO ENDPOINT/METOFO/VARIAVEIS
echo '<pre>';
$REPOMNSE = api_request('status', 'GET');
print_r($REPOMNSE);


$REPOMNSE = api_request('stahtus', 'GET');
print_r($REPOMNSE);


$REPOMNSE = api_request('get_all_clients', 'GET');
print_r($REPOMNSE);

$REPOMNSE = api_request('get_all_products', 'GET');
print_r($REPOMNSE);
?>