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
    $open_serie = $_GET['open_serie'];
    $dados_serie_get = "SELECT * FROM series WHERE id='$open_serie'";
    $result_dados = mysqli_query($mysql_db, $dados_serie_get);
    $row_dados_serie = mysqli_fetch_assoc($result_dados);

?>

<?php include '../includes/menudashboard.php'; ?>

    <div class="container">
        <br>

        <h3 class="title-filme-home"><?php echo $row_dados_serie['nome']; ?></h3>
        <span class="badge badge-light"><?php echo $row_dados_serie['genero_serie']; ?></span>
        <span class="badge badge-grupo"><?php echo $row_dados_serie['tipo_grupo']; ?></span>
        <br>
        <br>
        <hr class="linha">
        <div class="container" style="margin-bottom: 3em;">

            <div class="area-descricao">
                <h6 class="title-descricao">Sinopse</h6>
                <p class="text-descricao"><?php echo $row_dados_serie['sinopse']; ?></p>
            </div>

            <div class="flexbox-video">
                <div class="flex-video">
                    <iframe frameborder="0" src="<?php echo $row_dados_serie['embed']; ?>" allowfullscreen></iframe>
                </div>
            </div>
        </div>

    </div><!--container-->

<?php include '../includes/footerdashboard.php'; ?>