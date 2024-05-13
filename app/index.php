<?php

//dependecias 
require_once('inc/config.php');
require_once('inc/api_functions.php');
// $variables = [
//     'Nome' => 'Arthur', 
//     'Sobrenome' => 'Ferreira', 
// ];

//CHAMA A API PASSSADNO OS DADOS COMO ENDPOINT/METOFO/VARIAVEIS
// $REPOMNSE = api_request('status', 'POST', $variables);
$REPOMNSE = api_request('status', 'GET');

// echo json_encode($REPOMNSE);
echo '<pre>';
print_r($REPOMNSE);
?>