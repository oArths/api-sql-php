<?php

class api_logic{
    private $endpoint;
    private $params;

    //---------------------------------------------------------
    public function  __construct($endpoint, $params = null ){

        //derfinindo as propriedades das classes
        $this->endpoint = $endpoint;
        $this->params = $params;
    }
    //---------------------------------------------------------
    // CHECA SE O ENDPOINT QUE VEIO EXISTE NAS FUNCÇÕES QUE TEMOS AQ
    public function endpoint_exist(){
        //method_exists checa se existe um meyhod com esse valor, no caso endpoint
        // $this primeiro define que o method vai procurar em toda a class atual ond ele esta
        return method_exists($this, $this->endpoint);
    }













    //---------------------------------------------------------
    // ENDPOINTS
    //---------------------------------------------------------
    public function status(){

        return [
            'status' => 'SUCCESS',
            'message' => 'API DE BOA!!',
            'results' => null

        ];       
    }
    //---------------------------------------------------------
    public function get_all_clients(){
        return [
            'status' => 'SUCCESS',
            'message' => '',
            'results' => [
                'ANA', 'ARTHUR', 'FREDERICO'
            ]
        ];  

    }
    //---------------------------------------------------------
    public function get_all_products(){
        return [
            'status' => 'SUCCESS',
            'message' => '',
            'results' => [
                'anão', 'celular', 'geladeira'
            ]
        ];  

    }
}


?>