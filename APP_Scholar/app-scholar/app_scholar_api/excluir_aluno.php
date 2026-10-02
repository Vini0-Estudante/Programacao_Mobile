<?php
header("Content-Type: application/json; charset=UTF-8");

require_once "conexao.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
    $dados = json_decode(file_get_contents("php://input"), true);
    // Ajustado para capturar o ID_Aluno do JSON enviado
    $id_aluno = $dados['ID_Aluno'] ?? null;

    if (!$id_aluno) {
        http_response_code(400);
        echo json_encode(["erro" => "O ID_Aluno é obrigatório."]);
        exit;
    }

    try {
        // Ajustado com os nomes exatos das colunas da sua imagem
        $sql = "UPDATE Alunos SET status = '0' WHERE ID_Aluno = :id_aluno";
        $stmt = $pdo->prepare($sql);
        
        // Vincula como PARAM_INT porque ID_Aluno é int(10)
        $stmt->bindParam(':id_aluno', $id_aluno, PDO::PARAM_INT);
        
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            http_response_code(200);
            echo json_encode(["sucesso" => "Status do aluno atualizado para '0' com sucesso."]);
        } else {
            http_response_code(404);
            echo json_encode(["aviso" => "Aluno não encontrado ou o status já era '0'."]);
        }

    } catch (PDOException $e) {
        http_response_code(500);
        echo json_encode(["erro" => "Erro ao atualizar o banco de dados: " . $e->getMessage()]);
    }

} else {
    http_response_code(405);
    echo json_encode(["erro" => "Método não permitido. Use POST."]);
}
?>
