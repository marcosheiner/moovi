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
    <h1 class="title-moovi">Guia</h1>
    <hr class="linha">
    
    <div class="back-text" style="margin-bottom: 3em;">
        <h5 class="title-moovi">Sobre Anúncios</h5>
        <p class="text-aba">Os anúncios gerados na hora da reprodução do vídeo não são de responsabilidades da Moovi, nós não hospedamos nenhum tipo de filme ou série, apenas indexamos os links no qual é disponibilizado na internet, sendo assim esses reprodutores geram vários anúncios deixando a experiência não muito boa. Para isso temos uma dica, Adblocks específicos funcionam em nosso site barrando esses anúncios, segue a lista dos Adblocks que faram você ter uma experiência melhor. </p>
        <div class="guia_img">
            <img src="../img/adblock1.jpg" alt="" class="img_guia" >
            
        </div>
        <br>
        <p class="text-aba">Não sabe como instalar um AdBlock? <a href="https://chrome.google.com/webstore/detail/ads-killer-adblocker-plus/pgbllmbdjgcalkoimdfcpknbjgnhjclg?hl=pt-BR" target="_blank"> Clique aqui para instalar o adblock</a></p>

        <br>
        <h5 class="title-moovi">Minha Senha</h5>
        <p class="text-aba">Se você recebeu um login de acesso ao Moovi, recomendamos que mude a senha em seu perfil no botão redefinir senha, a senha que você recebe pelo suporte  são geradas automaticamente em formato Hash. </p>
        <small style="color: white;">No momento o botão de redefinir senha não está ativo</small>

        <br>
        <br>
        <h5 class="title-moovi">Servidor do Reprodutor</h5>
        <p class="text-aba">Ter a internet  fraca pode resultar em perca de qualidade do filme.</p>
        <p class="text-aba">Recomendamos assistir nos segundos servidores gerado pelo reprodutor, os primeiros servidores podem ter uma qualidade inferior aos demais.</p>
        
    </div>
</div>

<?php include '../includes/footerdashboard.php'; ?>