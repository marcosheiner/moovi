<?php
	// Initialize session
	session_start();

	if (!isset($_SESSION['loggedin']) && $_SESSION['loggedin'] !== false) {
		header('location: ../pages/login.php');
		exit;
	}
?>

<?php
//cadastrar filme
require_once '../config/config.php'; //conexão banco


?>

<?php include '../includes/menudashboard.php'; ?>

<div class="container">
    <a href="admin_moovi.php" class="btn link-voltar"><i data-feather="arrow-left"></i></a>
	<br>
	<h4 class="title-moovi">Cadastrar Embed do Filme</h4>
    <hr class="linha">
	<div class="flexbox-admin">
		<div class="admin-item">
			<form action="../routes/cad_process.php" method="POST" autocomplete="off">
				<div class="row">
					<div class="col">
						<label>Nome do Filme</label>
						<input type="text" id="nome_filme" name="nome_filme" class="form-control" placeholder="Nome do Filme" require>
						
					</div>
					<div class="col">
						<label>Gênero</label>
						<select id="" name="sel_genero" class="form-control" require>
							<option selected>...</option>
							<?php
								//aqui vai os select do banco de dados
								$genero = "SELECT * FROM genero";
								$process_genero = mysqli_query($mysql_db, $genero);
								while($row_genero = mysqli_fetch_assoc($process_genero)){ ?>
									<option value="<?php echo $row_genero['select_genero']; ?>"><?php echo $row_genero['select_genero']; ?>
									</option> <?php
								}
								?>
						</select>
						
					</div>
					<div class="col">
						<label>Tipo</label>
						<select id="sel_tipo" name="sel_tipo" class="form-control" require>
							<option selected>...</option>
							<?php
								//aqui vai os select do banco de dados
								$tipo = "SELECT * FROM tipo";
								$process_tipo = mysqli_query($mysql_db, $tipo);
								while($row_tipo = mysqli_fetch_assoc($process_tipo)){ ?>
									<option value="<?php echo $row_tipo['select_tipo']; ?>"><?php echo $row_tipo['select_tipo']; ?>
									</option> <?php
								}
								?>
						</select>
						
					</div>
				</div>
				<div class="row">
					<div class="col">
						<br>
						<label>Link Embed</label>
						<input type="text" id="link_embed" name="link_embed" class="form-control" placeholder="Embed" require>
						
					</div>
					<div class="col">
						<br>
						<label>Link Capa</label>
						<input type="text" id="capa" name="capa" class="form-control" placeholder="Link da Capa" require>
						
					</div>
					<div class="col">
						<br>
						<label>Sinopse</label>
						<input type="text" id="sinopse" name="sinopse" class="form-control" placeholder="Sinopse" require>
						
					</div>
					<div class="col">
						<br>
						<label>IMDB</label>
						<input type="text" id="nota" name="nota" class="form-control" placeholder="imdb" require>
						
					</div>
				</div>

				<input type="submit" class="btn btn-cadastrar" value="Cadastrar">
				<input type="reset" class="btn btn-limpar" value="Limpar">
			</form>
		</div>
	</div>
</div>

<?php include '../includes/footerdashboard.php'; ?>