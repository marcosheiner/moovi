<?php
	// Initialize session
	session_start();

	if (!isset($_SESSION['loggedin']) && $_SESSION['loggedin'] !== false) {
		header('location: ../pages/login.php');
		exit;
	}
?>



<?php include '../includes/menudashboard.php'; ?>

<div class="container">
	<br>
    <h1 class="title-moovi">Admin Moovi</h1>
    <hr class="linha">

	<div class="back-text">
		<a href="cad_filme.php" style="text-decoration: none;" class="btn btn-cadastrar">Cadastrar Embed Filme</a><br>
		<a href="cad_serie.php" style="text-decoration: none;" class="btn btn-cadastrar disabled" disabled>Cadastrar Embed Série</a>
	</div>

</div>

<?php include '../includes/footerdashboard.php'; ?>