<?php
// pagina dedicda unicamente a resposta da api de forma orgnizada
// ela não se comunica com o banco
class api_response{
    //  vai guardar todas as infromaç~ioes em um array asocicatoivo
    private $data;
    // definimos os methods que a api aceita, no caso get e post
    private $avaible_methods = ['GET', 'POST'];

    //==========================================================================================================
    // inicia o array vazio
    public function __construct()
    {   // inicia $data como um array vazio
        $this->data = [];
    }
    //==========================================================================================================
    // checa se o method parradao na requisição consta em $avaible_methods, se sim retorna true e se não retorna false
    public function check_method($method)
    {
        return in_array($method, $this->avaible_methods);
    }
    //==========================================================================================================
    // set a resposta de acordo com o method
    public function set_method($method)
    {
        $this->data['method'] = $method;
    }
    //==========================================================================================================

    // retorna o method que foi encontrado 
    public function get_method()
    {   
        return $this->data['method'];
    }
    //==========================================================================================================
    // setando  o request(requisição) do endpoint(url espefica que tem funcionalidades especificas ou seja ROTA)
    public function set_endpoint($endpoint)
    {  
            $this->data['endpoint'] = $endpoint;
    }
    //==========================================================================================================
    // retornando current request enpoint ou seja a rota atual que estya sendo requisitada
    public function get_endpoint()
    {  
            return $this->data['endpoint'];
    }
    //==========================================================================================================
    // adiconando uma nova key no data
    public function add_do_data($key, $value)
    {  
            $this->data[$key] = $value;
    }






















    //==========================================================================================================
    // putput do error da api
    public function api_request_error($message = '')
    {   
        $data_error = [
            'status' => 'ERROR',
            'message' => $message,
            'results' => null

        ];

        $this->data['data'] = $data_error;
        $this->send_response();
    }
    //==========================================================================================================
            // mandando o status da api

    public function send_api_status()
    {
        $this->data['status'] = 'SUCCESS';
        $this->data['message'] = 'api RUNNING OKOKOKO!!!!!!!!!!!';
        $this->send_response();

    }
    //==========================================================================================================
    //output DA MENSAGEM final da api

    public function send_response()
    {  
        header("Content-Type:application/json");
        echo json_encode($this->data);
        die(1);

    }






}
?>