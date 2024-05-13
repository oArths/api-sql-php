<?php

// importando as dependecias
// dirname(file) é umma variavel que busca arquivos que vc deine, no caso qoe ie concatenei
// NÃO ESQUECER DA BARRA ANTES DE TUDO
require_once(dirname(__FILE__) . '/inc/config.php');
require_once(dirname(__FILE__) . '/inc/api_response.php');


// INTANCIA DA api_response
$api = new api_response();




//$_SERVER é uma variavel global que tem as informações do servidos 
// REQUEST_METHOD dentro de $_SERVER verifica o method de requisição
// checnado o method pedido é valido
if(!$api->check_method($_SERVER['REQUEST_METHOD']))
{   // envia a resposta de erro caso o method for invalido/desconhecido
    $api->api_request_error('method de request invalido.');
}

// definando o method que veio para tomar medidaS   
$api->set_method($_SERVER['REQUEST_METHOD']);
// DEFINE AS ISPECIFIDADES QUE EU DESEJO/ COMO UM ID DE CLIENTE
$params = null;



// SETA A ENDPOINT(ROTA) DE ACORDO COM O METHOD E GUARDA OS POSSIVEIS PARAMETROS
if($api->get_method() == 'GET'){
    $api->set_endpoint($_GET['endpoint']);
    $params = $_GET;
}
elseif ($api->get_method() == 'POST'){
    $api->set_endpoint($_POST['endpoint']);
    $params = $_POST;

}

    
// send api response
$api->send_api_status();



?>