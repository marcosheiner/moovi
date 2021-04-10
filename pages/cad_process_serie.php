<?php
	// Initialize session
	session_start();

	if (!isset($_SESSION['loggedin']) && $_SESSION['loggedin'] !== false) {
		header('location: ../pages/login.php');
		exit;
	}
?>

<?php

require_once '../config/config.php'; //conexão banco

    $nome_serie     =   $_POST['nome_serie'];
    $sel_genero     =   $_POST['sel_genero'];
    $sel_tipo       =   $_POST['sel_tipo'];
    $link_embed     =   $_POST['link_embed'];
    $capa           =   $_POST['capa'];
    $sinopse        =   $_POST['sinopse'];
    $nota           =   $_POST['nota'];

    // Check if username is empty
    if(empty(trim($_POST['nome_serie']))){
        $nome_serie_err = 'Insira um nome.';
    } else{
        $nome_serie = trim($_POST['nome_serie']);
    }

    if(empty(trim($_POST['sel_genero']))){
        $sel_genero_err = 'Insira um gênero.';
    } else{
        $sel_genero = trim($_POST['sel_genero']);
    }

    if(empty(trim($_POST['sel_tipo']))){
        $sel_tipo_err = 'Insira um tipo.';
    } else{
        $sel_tipo = trim($_POST['sel_tipo']);
    }

    if(empty(trim($_POST['link_embed']))){
        $link_embed_err = 'Insira um link embed válido.';
    } else{
        $link_embed = trim($_POST['link_embed']);
    }

    if(empty(trim($_POST['capa']))){
        $capa_err = 'Insira um link de capa.';
    } else{
        $capa = trim($_POST['capa']);
    }

    if(empty(trim($_POST['sinopse']))){
        $sinopse_err = 'Insira uma sinopse.';
    } else{
        $sinopse = trim($_POST['sinopse']);
    }

    if(empty(trim($_POST['nota']))){
        $nota_err = 'Insira uma nota.';
    } else{
        $nota = trim($_POST['nota']);
    }


    if (empty($nome_serie_err) && empty($sel_genero_err) && empty($sel_tipo_err) && empty($link_embed_err) && empty($capa_err) && empty($sinopse_err) && empty($nota_err)) {
        $dados_filme = "INSERT INTO series (nome, genero_serie, tipo_grupo, embed, link_capa, sinopse, nota) VALUES ('$nome_serie', '$sel_genero', '$sel_tipo', '$link_embed', '$capa', '$sinopse', '$nota')";
        $new_dados_filme = mysqli_query($mysql_db, $dados_filme);

        

        if (mysqli_affected_rows($mysql_db) != 0 ) {

            header('location: cad_serie.php');

        } else {
            echo "Oops! ${$username}, não foi possivel cadastrar";
        }
    } else{

        echo "Não ouve cadastro";
    }

?>