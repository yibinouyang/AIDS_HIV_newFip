<?php
function createUser($fname, $username, $password, $email)
{
    $pdo = Database::getInstance()->getConnection();
    //TODO: finish the below so that it can run a SQL query
    // to create a new user with provided data
    $create_user_query = "INSERT INTO tbl_user (first_name, user_name, user_password, user_email)";
    $create_user_query .= " VALUES (:fname, :username, :password, :email )";
    $create_user_set = $pdo->prepare($create_user_query);
    $create_user_result = $create_user_set->execute(
        array(
            ':fname' => $fname,
            ':username' => $username,
            ':password' => $password,
            ':email' => $email,
        )
    );

    //TODO: redirect to index.php if creat user successfully
    // otherwise, return a error message
    if ($create_user_result) {
        redirect_to('admin_createuser.php');
    } else {
        return 'The user did not go through';
    }
} 