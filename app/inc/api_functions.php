<?php

function api_request($endpoint, $method = 'GET', $variables = []){

    // iniciando o curl do cliente
    $client = curl_init();
    
    // retornando o resuldo em string
    curl_setopt($client, CURLOPT_RETURNTRANSFER, true);

    //definindo a url
    $url = API_BASE_URL;

    //SE EU NÃO DEFINIR UM METHOD POR PADRAO É GET
    // ENDPOINT É A FUNÇÃO ESPECIFICA QUE QUERO ACESSAR NA MINHA API
    //SE O REQUEST FOR GET
    // verifica primero se o pedido for get e  se  for ele adicona o endporint para que apartir disso possa haver a escolha do que se fazer
    if($method == 'GET'){
        // COM ESSE CODIGO CONSIGO DEFINIR SEMPRE NA URL QUAL O ENDPOINT QUE ESTAO REQUISITANDO JA QUE ELA VAI CONCATENAR ELE NA URL
        $url .= "?endpoint=$endpoint";
        // SE A REQUISIÇÃO VIER COM UMA VARIAVEL ESPECIFICA EUY CONSIGO CONCATENAR ELA NA URL COMO UM DADO
        if(!empty($variables)){
            // http_build_query função que adiciona  a vriavel mandada na requisição  na url
            $url .= "&" . http_build_query($variables);

        }
    }

    // se o metofdo for POST
    if($method == 'POST'){
        // array_merge pega um ou mais array e concatena em um so, a passamos que o endpoit vai ter o index/chave endpoint e o resto das variaveis vao seguir normal
        $variables = array_merge(['endpoint' => $endpoint], $variables);
        //$client defnine quem esta na sesao e quem esta enviando os dados
        //CURLOPT_POSTFIELDS é pra definir que é uma solicitacoao post que vai ter dados no corpo da requisição
        //$variabels são os dados que vem no post anteriormente tratator no array_merge
        curl_setopt($client, CURLOPT_POSTFIELDS, $variables);
    }
    // CURL_SETOP DEFINIE QUE que vc vau configurara algo na seção
    //$client  é o identificador da sesao que esta ocorrendo
    //CURLOPT_URL define para qual a url que vamos mandar
    // $url é a url que vamos mandar
    curl_setopt($client, CURLOPT_URL, $url);
    // retona oq foi feito para o solicitante
    $reponse = curl_exec($client);
    return json_decode($reponse, true);
    
    // echo $url;
}

?>