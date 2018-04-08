<?php
	require_once('phpscripts/config.php');
	$ip = $_SERVER['REMOTE_ADDR'];
	//echo $ip;
	if(isset($_POST['submit'])){
		//echo "Works";
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		if($username !== "" && $password !== ""){
			$result = login($username, $password, $ip);
			$message = $result;
		}else{
			$message = "Your details is incorret";
		}
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome to your admin panel login</title>
<link rel="stylesheet" href="../css/main.css">
</head>
<body>



	<form class="login_index_1" action="admin_login.php" method="post">

		<div class="login_section">

		<h1 id="Loghead">LOGIN</h1>
		<br>
		<?php if(!empty($message)){ echo $message;} ?>
		<br>
		<input class="input" type="text" placeholder="Username" name="username" value="">
		<br>
		<br>
		<input class="input" type="password" placeholder="Password" name="password" value="">
		<br>
		<br>
		<input class="login_triger" type="submit" name="submit" value="LOGIN">

		</div>

	</form>





</body>
</html>
