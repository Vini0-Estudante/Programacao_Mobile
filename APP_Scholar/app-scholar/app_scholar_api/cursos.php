<?php
require_once "conexao.php";
header("Content-Type: application/json; charset=UTF-8");
$sql = "SELECT * FROM cursos";
$stmt = $pdo->query($sql);
$cursos = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($cursos);
?>