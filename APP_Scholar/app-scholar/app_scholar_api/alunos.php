<?php
require_once "conexao.php";
header("Content-Type: application/json; charset=UTF-8");
$sql = "SELECT * FROM alunos";
$stmt = $pdo->query($sql);
$alunos = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($alunos);
?>