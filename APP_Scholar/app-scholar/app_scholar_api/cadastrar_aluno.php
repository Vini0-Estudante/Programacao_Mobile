<?php
header("Content-Type: application/json; charset=UTF-8");

require_once "conexao.php";

// APIs utilizam o método POST para criação de novos registros
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
    // Obtém os dados enviados no corpo da requisição
    $dados = json_decode(file_get_contents("php://input"), true);
    
    // Captura as variáveis (e define null caso não sejam enviadas)
    $nome = $dados['Nome'] ?? null;
    $cpf = $dados['CPF'] ?? null;
    $email = $dados['Email'] ?? null;
    $telefone = $dados['Telefone'] ?? null;
    $data_nascimento = $dados['Data_Nascimento'] ?? null;
    $status = $dados['status'] ?? '1'; // Define '1' (Ativo) por padrão se não for enviado

    // Validação simples de campos obrigatórios
    if (!$nome || !$cpf) {
        http_response_code(400);
        echo json_encode(["erro" => "Os campos 'Nome' e 'CPF' são obrigatórios."]);
        exit;
    }

    try {
        // Monta a query de inserção com placeholders do PDO
        $sql = "INSERT INTO Alunos (Nome, CPF, Email, Telefone, Data_Nascimento, status) 
                VALUES (:nome, :cpf, :email, :telefone, :data_nascimento, :status)";
        
        $stmt = $pdo->prepare($sql);
        
        // Vincula os parâmetros de forma segura
        $stmt->bindParam(':nome', $nome);
        $stmt->bindParam(':cpf', $cpf);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':telefone', $telefone);
        $stmt->bindParam(':data_nascimento', $data_nascimento);
        $stmt->bindParam(':status', $status);
        
        $stmt->execute();

        // Captura o ID gerado automaticamente (AUTO_INCREMENT) para este novo aluno
        $novo_id = $pdo->lastInsertId();

        http_response_code(21); // Created
        echo json_encode([
            "sucesso" => "Aluno cadastrado com sucesso.",
            "ID_Aluno" => (int)$novo_id
        ]);

    } catch (PDOException $e) {
        // Trata erro de duplicidade (ex: CPF ou Email que possuem restrição UNIQUE no banco)
        if ($e->getCode() == 23000) {
            http_response_code(409); // Conflict
            echo json_encode(["erro" => "Erro de duplicidade: O CPF ou E-mail informado já está cadastrado."]);
        } else {
            http_response_code(500);
            echo json_encode(["erro" => "Erro ao realizar o cadastro: " . $e->getMessage()]);
        }
    }

} else {
    http_response_code(405);
    echo json_encode(["erro" => "Método não permitido. Use POST."]);
}
?>
