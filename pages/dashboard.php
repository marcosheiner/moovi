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
    //recebe o numero da pagina
    $pagina_atual = filter_input(INPUT_GET, 'pagina', FILTER_SANITIZE_NUMBER_INT);
    $pagina = (!empty($pagina_atual)) ? $pagina_atual : 1;
    //setar qnt de filmes da pagina
    $qnt_result_pg = 10;
    //calcula inicio da visualização
    $inicio = ($qnt_result_pg * $pagina) - $qnt_result_pg;


    //mostrar todos os filmes da tabela filme
    $sel_filmes_database = "SELECT * FROM filmes LIMIT $inicio, $qnt_result_pg";
    $winkel_filmes = $mysql_db->query($sel_filmes_database) or die($mysql_db->error);

    //mostrar todos os filmes adicionados recentementes
    $add_filmes_recente = "SELECT * FROM filmes ORDER BY id DESC LIMIT 10";
    $winkel_add_recente = $mysql_db->query($add_filmes_recente) or die($mysql_db->error);



    //somar quantidade de filmes
    $result_pg = "SELECT COUNT(id) AS num_filmes FROM filmes";
    $resultado_pg = mysqli_query($mysql_db, $result_pg);
    $row_pg = mysqli_fetch_assoc($resultado_pg);
    //qnt de páginas
    $quantidade_pg = ceil($row_pg['num_filmes'] / $qnt_result_pg);

    //mostrar todos as séries da tabela series
    $sel_serie_database = "SELECT * FROM series";
    $winkel_serie = $mysql_db->query($sel_serie_database) or die($mysql_db->error);
?>

<?php include '../includes/menudashboard.php'; ?>

    <div class="container" style="margin-bottom: 3em;">
        

        <div class="alert alert-dark" role="alert">
            <p><span style="text-transform: capitalize;"><strong><?php echo $_SESSION['username']; ?></strong></span>, você está fazendo uso de uma versão Alfa da Moovi, você foi selecionado para testar durante um determinado periodo. Consulte a aba de atualizações para saber mais sobre correções de erros e afins.</p>
            <hr>
            <p>E-mail para suporte: <strong>moovi.suporte@gmail.com</strong></p>
        </div>

        <div class="alert alert-danger" role="alert">
            <p>Abrir este site no navegador do celular pode resultar em imagens ou texto desproporcional a tela do seu dispositivo, esperamos resolver esse problema em uma versão beta.</p>
            <br>
            <p>Abrir esse site no navegador do celular sem um AdBlock pode resultar em vários anúncios ao clicar no reprodutor do vídeo!</p>
        
        </div>
        
        <br>
        <h1 class="title-moovi">Moovi</h1>
        <p class="welcome-user">Bem Vindo, <?php echo $_SESSION['username']; ?>!</p>
        <hr class="linha">
        
        <br>
        <h3 class="title-filme-home">Filmes Adicionados Recentementes</h3>
        <hr class="linha">
        <!--Area Adicionados Recentementes-->
        <br>
        <div class="owl-carousel owl-theme">
            <?php while($dados_add_recente = $winkel_add_recente->fetch_array()){ ?>
                <div class="item">
                    <div >
                        <a href="../filmes/areafilme.php?open_filme=<?php echo $dados_add_recente["id"];?>"><img src="<?php echo $dados_add_recente["link_capa"]; ?>" alt="" class="capas"></a>
                        <p class="title-video"><?php echo $dados_add_recente["nome"]; ?></p>
                        <span class="badge badge-light"><?php echo $dados_add_recente["genero_filme"]; ?></span>
                        <span class="badge badge-grupo"><?php echo $dados_add_recente["tipo_grupo"]; ?></span>
                        <span class="badge badge-dark"><?php echo $dados_add_recente["nota"]; ?></span>
                    </div>
                </div>
            <?php }?>  
        </div>
        <br>



        <h3 class="title-filme-home">Filmes</h3>
        <hr class="linha">
        <!--Area De Filme-->
        <br>
        <div class="flexbox">
            <?php while($dados_filme = $winkel_filmes->fetch_array()){ ?>
                <div class="flex-item zoom">
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
                echo "<a class='link-voltar' href='dashboard.php?pagina=1' data-toggle='tooltip' data-placement='bottom' title='Primeira Página'><i data-feather='arrow-left'></i></a> ";
                for ($pag_ant = $pagina - $max_links; $pag_ant <= $pagina - 1; $pag_ant++){ 
                    if($pag_ant >= 1){
                        echo "<a class='page' href='dashboard.php?pagina=$pag_ant'><span class='circle'>$pag_ant</span></a> ";
                    }
                }

                echo "<a class='page'><span class='circle'>$pagina</span></a> ";

                for($pag_dep = $pagina + 1; $pag_dep <= $pagina + $max_links; $pag_dep++){
                    if($pag_dep <= $quantidade_pg){
                        echo "<a class='page' href='dashboard.php?pagina=$pag_dep'><span class='circle'>$pag_dep</span></a> ";
                    }
                }
                
                echo "<a class='link-voltar' href='dashboard.php?pagina=$quantidade_pg' data-toggle='tooltip' data-placement='bottom' title='Última Página'><i data-feather='arrow-right'></i></a><br>";
            ?>

        <br>



        <h3 class="title-filme-home">Séries</h3>
        <hr class="linha">
        <!--Area De Serie-->
        <br>
        <div class="flexbox">
            <?php while($dados_serie = $winkel_serie->fetch_array()){ ?>
                <div class="flex-item zoom">
                    <a href="../series/areaserie.php?open_serie=<?php echo $dados_serie["id"];?>"><img src="<?php echo $dados_serie["link_capa"]; ?>" alt="" class="capas"></a>
                    <p class="title-video"><?php echo $dados_serie["nome"]; ?></p>
                    <span class="badge badge-light"><?php echo $dados_serie["genero_serie"]; ?></span>
                    <span class="badge badge-grupo"><?php echo $dados_serie["tipo_grupo"]; ?></span>
                    <span class="badge badge-dark"><?php echo $dados_serie["nota"]; ?></span>
                </div>
            <?php }?>   
        </div>       
            
    </div><!--container-->

<?php include '../includes/footerdashboard.php'; ?>

    