<?php
header("Content-Type: application/json; charset=UTF-8");

require_once "conexao.php";

// Utilizamos o método PUT ou PATCH para atualizações de registros em APIs
if ($_SERVER['REQUEST_METHOD'] === 'PUT' || $_SERVER['REQUEST_METHOD'] === 'POST') {
    
    // Obtém os dados do corpo da requisição
    $dados = json_decode(file_get_contents("php://input"), true);
    
    // O ID_Aluno é obrigatório para saber quem editar
    $id_aluno = $dados['ID_Aluno'] ?? null;

    if (!$id_aluno) {
        http_response_code(400);
        echo json_encode(["erro" => "O campo ID_Aluno é obrigatório para realizar a edição."]);
        exit;
    }

    // Lista de campos permitidos para atualização (exatamente como no seu banco)
    $campos_permitidos = ['Nome', 'CPF', 'Email', 'Telefone', 'status', 'Data_Nascimento'];
    
    $campos_para_atualizar = [];
    $valores_bind = [];

    // Monta dinamicamente as partes da SQL baseada no que foi enviado no JSON
    foreach ($dados as $campo => $valor) {
        if (in_array($campo, $campos_permitidos)) {
            $campos_para_atualizar[] = "{$campo} = :{$campo}";
            $valores_bind[":{$campo}"] = $valor;
        }
    }

    // Se o usuário não enviou nenhum campo válido além do ID
    if (empty($campos_para_atualizar)) {
        http_response_code(400);
        echo json_encode(["erro" => "Nenhum campo válido foi enviado para atualização."]);
        exit;
    }

    try {
        // Junta os campos com vírgulas para formar o comando UPDATE
        $sql = "UPDATE Alunos SET " . implode(", ", $campos_para_atualizar) . " WHERE ID_Aluno = :id_aluno";
        
        $stmt = $pdo->prepare($sql);
        
        // Vincula o ID_Aluno obrigatoriamente
        $stmt->bindValue(':id_aluno', $id_aluno, PDO::PARAM_INT);
        
        // Vincula dinamicamente os outros campos enviados
        foreach ($valores_bind as $parametro => $valor) {
            $stmt->bindValue($parametro, $valor);
        }
        
        $stmt->execute();

        // rowCount() retorna quantas linhas foram alteradas
        if ($stmt->rowCount() > 0) {
            http_response_code(200);
            echo json_encode(["sucesso" => "Cadastro do aluno atualizado com sucesso."]);
        } else {
            http_response_code(200); // Retorna 200, mas avisa que nada mudou
            echo json_encode(["aviso" => "Nenhuma alteração foi feita (os dados enviados já eram idênticos aos do banco)."]);
        }

    } catch (PDOException $e) {
        http_response_code(500);
        echo json_encode(["erro" => "Erro ao atualizar dados: " . $e->getMessage()]);
    }

} else {
    http_response_code(405);
    echo json_encode(["erro" => "Método não permitido. Use PUT ou POST."]);
}
?>
