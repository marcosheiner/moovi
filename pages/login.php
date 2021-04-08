<?php

// Initialize sessions
session_start();

// Check if the user is already logged in, if yes then redirect him to welcome page
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
  header("location: ../pages/dashboard.php");
  exit;
}

// conexao do banco
require_once "../config/config.php";


// Define variables and initialize with empty values
$username = $password = '';
$username_err = $password_err = '';

// Process submitted form data
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

  // Check if username is empty
  if(empty(trim($_POST['username']))){
    $username_err = 'Insira um usuário.';
  } else{
    $username = trim($_POST['username']);
  }

  // Check if password is empty
  if(empty(trim($_POST['password']))){
    $password_err = 'Insira uma senha.';
  } else{
    $password = trim($_POST['password']);
  }

  // Validate credentials
  if (empty($username_err) && empty($password_err)) {
    // Prepare a select statement
    $sql = 'SELECT id, username, password FROM users WHERE username = ?';

    if ($stmt = $mysql_db->prepare($sql)) {

      // Set parmater
      $param_username = $username;

      // Bind param to statement
      $stmt->bind_param('s', $param_username);

      // Attempt to execute
      if ($stmt->execute()) {

        // Store result
        $stmt->store_result();

        // Check if username exists. Verify user exists then verify
        if ($stmt->num_rows == 1) {
          // Bind result into variables
          $stmt->bind_result($id, $username, $hashed_password);

          if ($stmt->fetch()) {
            if (password_verify($password, $hashed_password)) {

              // Start a new session
              session_start();

              // Store data in sessions
              $_SESSION['loggedin'] = true;
              $_SESSION['id'] = $id;
              $_SESSION['username'] = $username;

              // Redirect to user to page
              header('location: ../pages/dashboard.php');
            } else {
              // Display an error for passord mismatch
              $password_err = 'Senha Inválida.';
            }
          }
        } else {
          $username_err = "Usuário não existe.";
        }
      } else {
        echo "Oops! Algo deu errado, por favor, tente de novo.";
      }
      // Close statement
      $stmt->close();
    }

    // Close connection
    $mysql_db->close();
  }
}

?>

<?php include '../includes/menuhome.php'; ?>

<div class="container">
    <div class="flexbox-login">
        <div class="login-item">
            <h2 class="title-login">Moovi</h2>
            <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
                <div class="form-group">
                    <label for="">Usuário</label>
                    <hr class="linha">
                    <div class="<?php (!empty($username_err))?'has_error':'';?>">
                        <input type="text" class="form-control" name="username" id="username" value="<?php echo $username ?>"  placeholder="Nome de Usuário" require>
                        <span class="help-block" style="color: white;"><small><?php echo $username_err;?></small></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="">Senha</label>
                    <hr class="linha">
                    <div class="<?php (!empty($password_err))?'has_error':'';?>">
                        <input type="password" class="form-control"  name="password" id="password" value="<?php echo $password ?>" placeholder="Senha" require>
                        <span class="help-block" style="color: white;"><small><?php echo $password_err;?></small></span>
                    </div>
                </div>
                <input type="submit" class="btn btn-lg btn-login btn-block" value="Entrar">
            </form>
            <a href="../pages/suporte.php" class="link-senha"><small>Esqueceu a senha?</small></a>
        </div>
    </div>
</div>

<?php include '../includes/footerhome.php'; ?>