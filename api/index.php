<?php

//RESPOSTA TEMPORARIA
header("Content-Type:application/json");

// APRESENTAR AS VARIAVEIS
$data['status'] = 'SUCCESS';
$data['method'] = $_SERVER['REQUEST_METHOD'];

// apresenta as variaveis que vem no pedido
echo json_encode($data);

?>