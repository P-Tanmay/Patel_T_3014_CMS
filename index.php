<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('admin/phpscripts/config.php');
	confirm_logged_in();



	if(isset($_GET['options'])){
		$section = "section_movies";
		$section2 = "section_genre";
		$section3 = "section_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$options = $_GET['options'];
		$popup_data = select($section, $section2, $section3, $col, $col2, $col3, $options);
	}else{
		$section = "section_movies";
		$popup_data = database_details($section);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to MYMOVIES</title>
<link rel="stylesheet" href="css/foundation.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>



		<div class="navi">
			<?php
				include('includes/nav.html');
				?>
		</div>


		<div class="poster_img">
			<?php
						if(!is_string($popup_data)){
							while($row = mysqli_fetch_array($popup_data)){
								echo "
									<a href=\"details.php?id={$row['movies_id']}\"><img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\"></a>
							";}
						}else{
							echo "<p class=\"error\">{$popup_data}</p>";
						}
		?>
		</div>



		<div class="footer">
		<?php
		include('includes/footer.html');
		?>
		</div>



		<script src="js/vendor/jquery.js"></script>
		<script src="js/vendor/what-input.js"></script>
		<script src="js/vendor/foundation.js"></script>
		<script src="js/app.js"></script>
</body>
</html>
