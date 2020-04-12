<?php
require_once '../load.php';
$pdo = Database::getInstance()->getConnection();

$id = $_GET['id'];
// pull all user list from tbl_user
$user_tbl = 'tbl_user';
$sql = "delete from {$user_tbl} where user_id={$id}";
$user = $pdo->prepare($sql);
$user->execute();

header("Location:admin_users.php");
?>