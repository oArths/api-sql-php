<?php
require_once(dirname(__FILE__) . '/database.php');

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
    // mensagem de erro padrao
    public function erro_reponse($message){
        return [
            'status' => 'ERROR',
            'message' => $message,
            'results' => []
        ]; 
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
    public function cretate_new_user(){
        $params = [
            ':name' => $this->params['name'],
            ':email' => $this->params['email'],
            ':username' => $this->params['username'],
            ':password' => $this->params['password'],
        ];
        $db = new database;
        $db-> QUERY("
        INSERT INTO user VALUES
        (:name,:email,:username,:password)", $params);
        return [
            'status' => 'SUCCESS',
            'message' => 'usuario adicionado com sucesso',
            'results' => $params

        ];       
    }
    //---------------------------------------------------------
    public function get_all_clients(){
        //retornado todos os cliaentes da tabela
        $sql = "SELECT * FROM user  WHERE 1 ";

        $db = new database;
        $results = $db->QUERY($sql);
        return [
            'status' => 'SUCCESS',
            'message' => '',
            'results' => $results
        ];  

    }
    //---------------------------------------------------------
    public function get_all_products(){
        //retornado todos os filmes da tabela
        $sql = "SELECT * FROM movie WHERE 1 ";

        $db = new database;
        $results = $db->QUERY($sql);
        return [
            'status' => 'SUCCESS',
            'message' => '',
            'results' => $results
        ];  

    }
    //---------------------------------------------------------
    public function get_products(){
        //retornado todos os filmes da tabela
        $sql = "SELECT * FROM movie WHERE 1 ";

         // checando se  tem a key id nos parametos passados 
        if(key_exists('id', $this->params)){
            // faz um filter baseado em ($this->params['id'] e compara com FILTER_VALIDATE_INT para ver se é interiro 
            if(filter_var($this->params['id'], FILTER_VALIDATE_INT)){    
                // concatena na $sql o valor de id passado, o encontrando com intval que encontra o alor int em uma var
                $sql .= "AND id = " . intval($this->params['id']);
            }

        }else{
            return $this->erro_reponse('id de filme não especificado');
           
        }

        $db = new database;
        $results = $db->QUERY($sql);
        return [
            'status' => 'SUCCESS',
            'message' => '',
            'results' => $results
        ];  

    }
}


?>