<?php

class database{

    public function QUERY($query, $parameters = null, $debug = true, $close_conn = true){

        $results = null;

        $host = "localhost:3307";
        $user = "root";
        $pass = "";
        $db = "my_database";

        // PDO respomsavel por fazer a conexão com o banco
        $conn = new PDO(
            "mysql:host=$host, 
            dbname=$db", 
            $user, 
            $pass, 
            // array fala que vai ser um array
            // PDO:: define que vamos acessar ao no pdo
            //ATTR_PERSISTENT => true definie que a cenexão com o banco vai persistire que não sera
            // necessario fazer uma nova a toda execução se não for definido como true ele fara umna nova conexão toda vez
            array(PDO::ATTR_PERSISTENT => true)); 
            
            // configuração para  otimizar o debug
            if($debug){
                //setAttribute e o methodo de definir configurações para uma conexao
                //PDO:: acesso isso para copnfigurali
                //ATTR_ERRMODE(alternative_erro_modo) muda o modo de erro paraERRMODE_EXCEPTION
                //ERRMODE_EXCEPTION define que pode ter execoes quando acontecer erros relacionados ao
                // banco de dados durante a consulta   sendo possivel assim capturar esses error e tratalos no catch 
                //ERRMODE_WARNING define que o pdo emitira avisos no output quando ocorrer erros com o banco mas não interromera o script 
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
            }


        try {
             //denfine que se os parametros não forem nulos ele é executado
             //$query é a consulta sql a ser executada
             // prepare pre compila a qery pra ser executada com comando sql
             //parameters são os dados que serao passados na query ou seja os dados da consulta sql
            if ($parameters != null) {
                // inicia a coneccao de gestor com o conn e prepara a query
                $gestor = $conn->prepare($query);
                // executa a conecao do gestor com execute e os parametros
                $gestor->execute($parameters);
                // quarda todos os resultados da consulta em um array asociativo onde as chaves são os nomes da coluna e os valores são os dados
                $results = $gestor->fetchAll(PDO::FETCH_ASSOC);
            } else {
                // a diferença dessa consulta é que não tem parametro, logo é so uma consulta sem modificação do banco
                $gestor = $conn->prepare($query);
                $gestor->execute();
                $results = $gestor->fetchAll(PDO::FETCH_ASSOC);
            }
            // captura qualquer erro que acontece e armazena no $e e retoena false
        } catch (PDOException $e) {        
            return false;
        }
          //dps de executar todos os script anteriores fecha a conexao
          if ($close_connection) {
            $connection = null;
        }

        //retorna os resultadp
        return $results;

    }
}

?>
