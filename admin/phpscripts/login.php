<?php

	function login($username, $password, $ip) {

		require_once('connect.php');

		$username = mysqli_real_escape_string($link, $username);
		$password = mysqli_real_escape_string($link, $password);
		$loginstring = "SELECT * FROM login_data WHERE username='{$username}' AND password='{$password}'";
		$user_set = mysqli_query($link, $loginstring);

		if(mysqli_num_rows($user_set)){

		$found_user = mysqli_fetch_array($user_set, MYSQLI_ASSOC);
		$id = $found_user['user_id'];
		$_SESSION['user_id'] = $id;

			redirect_to("../index.php");

		}else{
			$message = "Please fill correct information. Username and password is incorrect";
			return $message;
		}

		mysqli_close($link);
	}


		function deleteMovie($id) {
		//echo $id;
		include('connect.php');
		$delstring = "DELETE FROM section_movies WHERE movies_id={$id}";
		$delquery = mysqli_query($link, $delstring);
		if($delquery){
			redirect_to("../index.php");
		}else{
			$message = "Problem here, call security...";
			return $message;
		}
		mysqli_close($link);
	}
?>
