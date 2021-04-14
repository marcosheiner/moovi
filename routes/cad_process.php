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

    $nome_filme     =   $_POST['nome_filme'];
    $sel_genero     =   $_POST['sel_genero'];
    $sel_tipo       =   $_POST['sel_tipo'];
    $link_embed     =   $_POST['link_embed'];
    $capa           =   $_POST['capa'];
    $sinopse        =   $_POST['sinopse'];
    $nota           =   $_POST['nota'];



    if (empty($nome_filme_err) && empty($sel_genero_err) && empty($sel_tipo_err) && empty($link_embed_err) && empty($capa_err) && empty($sinopse_err) && empty($nota_err)) {
        $dados_filme = "INSERT INTO filmes (nome, genero_filme, tipo_grupo, embed, link_capa, sinopse, nota) VALUES ('$nome_filme', '$sel_genero', '$sel_tipo', '$link_embed', '$capa', '$sinopse', '$nota')";
        $new_dados_filme = mysqli_query($mysql_db, $dados_filme);

        

        if (mysqli_affected_rows($mysql_db) != 0 ) {

            header('location: ../pages/cad_filme.php');

        } else {
            echo "Oops! ${$username}, não foi possivel cadastrar";
        }
    } else{

        echo "Não ouve cadastro";
    }

?>