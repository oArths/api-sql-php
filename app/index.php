<?php

//dependecias 
require_once('inc/config.php');
require_once('inc/api_functions.php');
$variables = [
    'Nome' => 'Arthur', 
    'Sobrenome' => 'Ferreira', 
];

//CHAMA A PI PASSSADNO OS DADOS COMO ENDPOINT/METOFO/VARIAVEIS
$REPOMNSE = api_request('status', 'POST', $variables);

// echo json_encode($REPOMNSE);
echo "Resposta da API: " . json_encode($REPOMNSE);
?>