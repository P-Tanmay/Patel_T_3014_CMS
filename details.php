<?php
	require_once('admin/phpscripts/config.php');

	if(isset($_GET['id'])){
		$id = $_GET['id'];
		$section = "section_movies";
		$col = "movies_id";
		$Proper_Movie = Proper_Movie($section, $col, $id);
		$Proper_Movie_nav = Proper_Movie($section, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Details</title>
<link rel="stylesheet" href="css/foundation.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>


	<div class="navi">
		<?php
		if(!is_string($Proper_Movie_nav)){
		$row = mysqli_fetch_array($Proper_Movie_nav);
		echo "
			<ul>
			  <div class='detail_nav3'>
				<li><a href=\"admin/admin_editall.php\">Update Movie</a><li>
				<li><a href=\"admin/phpscripts/caller.php?caller_id=delete&id={$row['movies_id']}\">Delete Movie</a><li>
				</div>
				<div class='detail_nav2'>
				<li id='back'><a href='./index.php'>Back</a></li>
				</div

			</ul>
			";
		}else{
			echo "<p class=\"error\">{$Proper_Movie}</p>";
		}
			?>
	</div>



	<div class="movie_details_page">
	<?php
		if(!is_string($Proper_Movie)){
			$row = mysqli_fetch_array($Proper_Movie);
			echo "


			<div class='details_details'>
			<video controls class='video'>
				<source src=\"videos/{$row['movies_trailer']}\" type='video/mp4'>
			</video>
				<h2>{$row['movies_title']}</h2>
				<p>{$row['movies_year']}</p>
				<p>{$row['movies_storyline']}</p>
			</div>


				";
		}else{
			echo "<p class=\"error\">{$Proper_Movie}</p>";
		}
	?>
	</div>


	<div class="footer">
	<?php
	include('includes/footer.html');
	?>
	</div>

</body>
</html>
