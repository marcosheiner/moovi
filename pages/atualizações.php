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
    <h1 class="title-moovi">Atualizações</h1>
    <hr class="linha">
    
    <div class="back-text">
        <p class="text-aba">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum quia voluptates, est libero repellendus quidem nihil velit! Ducimus libero saepe ratione quisquam tempora impedit architecto, perferendis magnam delectus ipsum et.</p>
    </div>
</div>

<?php include '../includes/footerdashboard.php'; ?>