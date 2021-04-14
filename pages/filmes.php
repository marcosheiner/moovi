<?php
	// Initialize session
	session_start();

	if (!isset($_SESSION['loggedin']) && $_SESSION['loggedin'] !== false) {
		header('location: ../pages/login.php');
		exit;
	}
?>

<?php
    //conn com o banco
    require_once "../config/config.php";

    //recebe o numero da pagina
    $pagina_atual = filter_input(INPUT_GET, 'pagina', FILTER_SANITIZE_NUMBER_INT);
    $pagina = (!empty($pagina_atual)) ? $pagina_atual : 1;
    //setar qnt de filmes da pagina
    $qnt_result_pg = 10;
    //calcula inicio da visualização
    $inicio = ($qnt_result_pg * $pagina) - $qnt_result_pg;

    //select todos os filmes
    $sel_filmes_database = "SELECT * FROM filmes LIMIT $inicio, $qnt_result_pg";
    $winkel_filmes = $mysql_db->query($sel_filmes_database) or die($mysql_db->error);

    //somar quantidade de filmes
    $result_pg = "SELECT COUNT(id) AS num_filmes FROM filmes";
    $resultado_pg = mysqli_query($mysql_db, $result_pg);
    $row_pg = mysqli_fetch_assoc($resultado_pg);
    //qnt de páginas
    $quantidade_pg = ceil($row_pg['num_filmes'] / $qnt_result_pg);


?>

<?php include '../includes/menudashboard.php'; ?>

<div class="container" style="margin-bottom: 3em;">
    <br>
    <h1 class="title-moovi">Filmes</h1>
    <hr class="linha">
    
    <!--Area De Filme-->
    <br>
        <div class="flexbox">
            <?php while($dados_filme = $winkel_filmes->fetch_array()){ ?>
                <div class="flex-item zoom-recentes">
                    <a href="../filmes/areafilme.php?open_filme=<?php echo $dados_filme["id"];?>"><img src="<?php echo $dados_filme["link_capa"]; ?>" alt="" class="capas"></a>
                    <p class="title-video"><?php echo $dados_filme["nome"]; ?></p>
                    <span class="badge badge-light"><?php echo $dados_filme["genero_filme"]; ?></span>
                    <span class="badge badge-grupo"><?php echo $dados_filme["tipo_grupo"]; ?></span>
                    <span class="badge badge-dark"><?php echo $dados_filme["nota"]; ?></span>
                </div>
            <?php }?>   
        </div>
            <br>
            <!--Paginação Frontend-->
            <?php
                //limitar os links
                $max_links = 2;
                echo "<a class='link-voltar' href='filmes.php?pagina=1' data-toggle='tooltip' data-placement='bottom' title='Primeira Página'><i data-feather='arrow-left'></i></a> ";
                for ($pag_ant = $pagina - $max_links; $pag_ant <= $pagina - 1; $pag_ant++){ 
                    if($pag_ant >= 1){
                        echo "<a class='page' href='filmes.php?pagina=$pag_ant'><span class='circle'>$pag_ant</span></a> ";
                    }
                }

                echo "<a class='page'><span class='circle'>$pagina</span></a> ";

                for($pag_dep = $pagina + 1; $pag_dep <= $pagina + $max_links; $pag_dep++){
                    if($pag_dep <= $quantidade_pg){
                        echo "<a class='page' href='filmes.php?pagina=$pag_dep'><span class='circle'>$pag_dep</span></a> ";
                    }
                }
                
                echo "<a class='link-voltar' href='filmes.php?pagina=$quantidade_pg' data-toggle='tooltip' data-placement='bottom' title='Última Página'><i data-feather='arrow-right'></i></a><br>";
            ?>

        <br>
    
</div>

<?php include '../includes/footerdashboard.php'; ?>