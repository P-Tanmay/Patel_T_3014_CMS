<?php

	require_once('phpscripts/config.php');

	$section="section_genre";
	$gen_details = database_details($section);

	if(isset($_POST['submit'])) {
		$title = $_POST['title'];
		$cover = $_FILES['cover'];
		$year = $_POST['year'];
		$runtime = $_POST['runtime'];
		$storyline = $_POST['storyline'];
		$trailer = $_POST['trailer'];
		$release = $_POST['release'];
		$genre = $_POST['genList'];
		$uploadMovie = addMovie($title, $cover, $year, $runtime, $storyline, $trailer, $release, $genre);
		$message = $uploadMovie;
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie</title>
<link rel="stylesheet" href="../css/main.css">

</head>
<body>

	<?php if(!empty($message)){echo $message;} ?>
	<a class="homeLnk" href="../index.php">Back to Home Page</a>

	<form action="admin_addmovie.php" method="post" enctype="multipart/form-data">

		<div class="add_section">
			<br>
			<h1 id="addhead">ADD YOUR OWN MOVIE</h1>
			<br>
			<br>


		<input class="addinput" name="title" type="text" placeholder="Movie title" value=""><br><br>

		<input class="addinput" name="cover" type="file" value=""><br><br>

		<input class="addinput" name="year" type="text" placeholder="Movie Year" value=""><br><br>

		<input class="addinput" name="runtime" type="text" placeholder="Movie Runtime" value=""><br><br>

		<input class="addinput" name="storyline" type="text" placeholder="Movie Storyline" value=""><br><br>

		<input class="addinput" name="trailer" type="file" placeholder="Movie Trailer" value=""><br><br>

		<input class="addinput" name="release" type="text" placeholder="Movie Release Date" value=""><br><br>

		<select class="addinput" name="genList">
			<option value="">Please select movie catagory</option>
			<?php
				while($row = mysqli_fetch_array($gen_details)){
					echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
				}
			?>
		</select><br><br><br>
		<input class="login_triger" type="submit" name="submit" value="Add Movie">


	</div>
	</form>
</body>
</html>
