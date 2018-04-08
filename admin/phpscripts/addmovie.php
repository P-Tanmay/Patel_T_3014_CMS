<?php
	function addMovie($title, $cover, $year, $runtime, $storyline, $trailer, $release, $genre) {
		include("connect.php");


		if($cover['type'] == "image/jpg" || $cover['type'] == "image/jpeg" && $trailer['type'] == "video/mp4" || $trailer['type'] == "video/mp4"){

			$target = "../images/{$cover['name']}";
			$video_target = "../videos/{$trailer['name']}";


			 if(move_uploaded_file($_FILES['cover']['tmp_name'], $target)){
	 		 	$orig = "../images/{$cover['name']}";
	 		 	$th_copy = "../images/TH_{$cover['name']}";
	 		 	if(!copy($orig, $th_copy)){
	 		 		echo "Failed to copy";
	 	 	}

				if (move_uploaded_file($trailer['tmp_name2'], $video_target)) {
					$orig2 = "../videos/{$cover['name']}";
  	 		 	$th_copy2 = "../videos/DH_{$cover['name']}";
  	 		 	if(!copy($orig2, $th_copy2)){
  	 		 		echo "Failed to copy";
  	 	 	}

			 	$addstring = "INSERT INTO section_movies VALUES(NULL, '{$cover['name']}','{$title}','{$year}','{$runtime}','{$storyline}','{$trailer['name']}','{$release}')";
			 	//echo $addstring;
			 	$addresult = mysqli_query($link, $addstring);
			 	if($addresult){
			 		$qstring = "SELECT * FROM section_movies ORDER BY movies_ID DESC LIMIT 1";
			 		$lastmovie = mysqli_query($link, $qstring);
			 		$row = mysqli_fetch_array($lastmovie);
			 		$lastID = $row['movies_id'];
			 		//echo $lastID;
			 		$genstring = "INSERT INTO section_mov_genre VALUES(NULL, {$lastID}, {$genre})";
			 		$genresult = mysqli_query($link, $genstring);

			 	}
				redirect_to("../index.php");
				echo "Your movie catagory is now listed succesfully! ";
		}
		else {
		  echo "Please insert valid data";
		}
		mysqli_close($link);
	}
}
}
?>
