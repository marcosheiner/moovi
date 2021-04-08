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

        <h3 class="title-filme-home">Homi de Lata 3</h3>
        <span class="badge badge-dark">Dublado</span>
        <span class="badge badge-warning">Filme</span>
        <br>
        <br>
        <hr class="linha">

        <div class="container">

            <div class="area-descricao">
                <h6 class="title-descricao">Descrição</h6>
                <p class="text-descricao">O homi tem ropa de ferro kkkkkkkkkkk</p>
            </div>

            <div class="flexbox-video">
                <div class="flex-video">
                    <iframe frameborder="0" src="https://drive.google.com/file/d/1ddhtxGEeB9bcZnIdvO-umv45c6deVmuY/preview" allowfullscreen></iframe>
                </div>
            </div>
        </div>

    </div><!--container-->

<?php include '../includes/footerdashboard.php'; ?>