<?php

//dependecias 
require_once('inc/config.php');
require_once('inc/api_functions.php');
// $variables = [
//     'Nome' => 'Arthur', 
//     'Sobrenome' => 'Ferreira', 
// ];

//CHAMA A API PASSSADNO OS DADOS COMO ENDPOINT/METOFO/VARIAVEIS
// $results = api_request('status', 'GET');
// print_r($results);


// $results = api_request('stahtus', 'GET');
// print_r($results);


// $results = api_request('get_all_clients', 'GET');
// print_r($results);

// $results = api_request('get_all_products', 'GET');
// print_r($results);


//------------------------------------------------
// fazendo requisição de todos os user ao banco e renderiando apenas o nome e email com o foreach
$results = api_request('get_all_clients', 'GET');

foreach($results['data']['results'] as $client)
{
    echo $client['name'] . ' - ' . $client['email'] . '<br>';
}

echo '<br>';
//------------------------------------------------
// fazendo requisição de todos os filmes ao banco e renderiando o titulo,synopsis e duração com  o foreach
$results = api_request('get_all_products', 'GET');

foreach($results['data']['results'] as $client)
{
    echo $client['title'] . '<br>' . $client['synopsis'] . '<br>' . $client['durationMinutes'] . '<br>';
}
echo '<br>';
echo '<br>';
echo '<br>';
//------------------------------------------------
// fazendo requisição de todos os filmes ao banco e renderiando o titulo,synopsis e duração com  o foreach
$results = api_request('get_products', 'GET', ['only_active' => 1 ]);

foreach($results['data']['results'] as $client)
{
    echo $client['title'] . '<br>' . $client['synopsis'] . '<br>' . $client['durationMinutes'] . '<br>';
}
echo '<br>';

?>