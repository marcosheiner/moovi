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
    <h1 class="title-moovi">Perfil</h1>
    <hr class="linha">
    
    <div class="media">
        <img class="mr-3" src="../img/perfil.png" alt="" width="64">
        <div class="media-body" style="color: white;">
            <h5 class="mt-0 user_moovi"><?php echo $_SESSION['username']; ?></h5>
            <div class="atividade"></div>
        </div>
    </div>
    <br>
    <a href="" class="btn btn-perfil disabled" disabled>Editar Nome</a>
    <a href="" class="btn btn-perfil">Redefinir Senha</a>
</div>

<?php include '../includes/footerdashboard.php'; ?>