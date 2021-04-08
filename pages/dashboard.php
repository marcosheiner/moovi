<?php
	// Initialize session
	session_start();

	if (!isset($_SESSION['loggedin']) && $_SESSION['loggedin'] !== false) {
		header('location: ../pages/login.php');
		exit;
	}
?>

<?php

require_once "../config/config.php";

$sel_filmes_database = "SELECT * FROM filmes";
$winkel_filmes = $mysql_db->query($sel_filmes_database) or die($mysql_db->error);

?>

<?php include '../includes/menudashboard.php'; ?>

    <div class="container">
        <br>
        <h1 class="title-moovi">Moovi</h1>
        <p class="welcome-user">Bem Vindo, <?php echo $_SESSION['username']; ?>!</p>
        <hr class="linha">
        
        <br>

        <h3 class="title-filme-home">Filmes e Séries</h3>
        <hr class="linha">

       


        <br>
        
        <div class="flexbox">
            <?php while($dados_filme = $winkel_filmes->fetch_array()){ ?>
                <div class="flex-item zoom">
                    <a href="../filmes/areafilme.php"><img src="<?php echo $dados_filme["link_capa"]; ?>" alt="" class="capas"></a>
                    <p class="title-video"><?php echo $dados_filme["nome"]; ?></p>
                    <span class="badge badge-light"><?php echo $dados_filme["genero_filme"]; ?></span>
                    <span class="badge badge-warning"><?php echo $dados_filme["tipo_grupo"]; ?></span>
                    <span class="badge badge-dark"><?php echo $dados_filme["nota"]; ?></span>
                </div>
            <?php }?>
        </div>

        
    </div><!--container-->

<?php include '../includes/footerdashboard.php'; ?>

    