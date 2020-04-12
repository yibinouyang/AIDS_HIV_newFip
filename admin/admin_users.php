<?php
require_once '../load.php';
$pdo = Database::getInstance()->getConnection();

// pull all user list from tbl_user
$user_tbl = 'tbl_user';
$sql = "select * from {$user_tbl}";
$users = $pdo->prepare($sql);
$users->execute();

?>

<!doctype html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <title>Delete User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<h2> which user you want to delete?</h2>
<?php while ($user = $users->fetch(PDO::FETCH_ASSOC)): ?>
    <?php echo $user['first_name']; ?>
    <a href="admin_deleteuser.php?&id=<?php echo $user['user_id']; ?>">Delete</a>
    <br>
<?php endwhile; ?>


</body>
</html>