<?php

// importando as dependecias
// dirname(file) é umma variavel que busca arquivos que vc deine, no caso qoe ie concatenei
// NÃO ESQUECER DA BARRA ANTES DE TUDO
require_once(dirname(__FILE__) . '/inc/config.php');
require_once(dirname(__FILE__) . '/inc/api_response.php');
require_once(dirname(__FILE__) . '/inc/api_logic.php');
require_once(dirname(__FILE__) . '/inc/database.php');


// INTANCIA DA api_response
$api_response = new api_response();




//$_SERVER é uma variavel global que tem as informações do servidos 
// REQUEST_METHOD dentro de $_SERVER verifica o method de requisição
// checnado o method pedido é valido
if(!$api_response->check_method($_SERVER['REQUEST_METHOD']))
{   // envia a resposta de erro caso o method for invalido/desconhecido
    $api_response->api_request_error('method de request invalido.');
}

// definando o method que veio para tomar medidaS   
$api_response->set_method($_SERVER['REQUEST_METHOD']);
// DEFINE AS ISPECIFIDADES QUE EU DESEJO/ COMO UM ID DE CLIENTE
$params = null;



// SETA A ENDPOINT(ROTA) DE ACORDO COM O METHOD E GUARDA OS POSSIVEIS PARAMETROS
if ($api_response->get_method() == 'GET') {
    $api_response->set_endpoint($_GET['endpoint']);
    $params = $_GET;
}
elseif ($api_response->get_method() == 'POST'){
    // Captura o JSON bruto do corpo da requisição com
    $raw_data = file_get_contents('php://input');
    $data = json_decode($raw_data, true);
    $api_response->set_endpoint($_GET['endpoint']);
    $params = $data;
}


// preparando a logica da api falando qual endpoint vamos usar e quais parametros
$api_logic = new api_logic($api_response->get_endpoint(), $params);

// verifica se o endpoint existe nos methods 
if(!$api_logic->endpoint_exist()){
    $api_response->api_request_error('endpoint inexistente: ' . $api_response->get_endpoint());
}
    
// o request(requisição) final da api_logic
// pede para api_logic pegar o endpoint setado em api_response e exwcutar sua função de forma dinamica
// stacico seria $result = $api_logic->status();
$result = $api_logic->{$api_response->get_endpoint()}();
$api_response->add_do_data('data', $result);


$api_response->send_response();




?>