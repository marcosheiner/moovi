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
    $open_filme = $_GET['open_filme'];
    $dados_filme_get = "SELECT * FROM filmes WHERE id='$open_filme'";
    $result_dados = mysqli_query($mysql_db, $dados_filme_get);
    $row_dados_filme = mysqli_fetch_assoc($result_dados);

?>

<?php include '../includes/menudashboard.php'; ?>

    <div class="container">
        <br>

        <h3 class="title-filme-home"><?php echo $row_dados_filme['nome']; ?></h3>
        <span class="badge badge-light"><?php echo $row_dados_filme['genero_filme']; ?></span>
        <span class="badge badge-grupo"><?php echo $row_dados_filme['tipo_grupo']; ?></span>
        <br>
        <br>
        <hr class="linha">

        <div class="container" style="margin-bottom: 3em;">

            <div class="area-descricao">
                <h6 class="title-descricao">Sinopse</h6>
                <p class="text-descricao"><?php echo $row_dados_filme['sinopse']; ?></p>
            </div>

            <div class="flexbox-video">
                <div class="flex-video">
                    <iframe frameborder="0" src="<?php echo $row_dados_filme['embed']; ?>" allowfullscreen></iframe>
                </div>
            </div>
        </div>

    </div><!--container-->

<?php include '../includes/footerdashboard.php'; ?>