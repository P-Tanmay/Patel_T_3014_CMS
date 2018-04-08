<?php


	function database_details($section) {
		include('connect.php');
		$queryAll = "SELECT * FROM {$section}";
		$runAll = mysqli_query($link, $queryAll);
		if($runAll){
			return $runAll;
		}else{
			$error = "There is something wrong";
			return $error;
		}
		mysqli_close($link);
	}

	function Proper_Movie($section, $col, $id) {
		include('connect.php');
		$querySingle = "SELECT * FROM {$section} WHERE {$col} = {$id}";
		$runSingle = mysqli_query($link, $querySingle);
		if($runSingle){
			return $runSingle;
		}else{
			$error = "There is something wrong";
			return $error;
		}
		mysqli_close($link);
	}

	function select($section, $section2, $section3, $col, $col2, $col3, $options) {
		include('connect.php');
		$queryFilter = "SELECT * FROM {$section}, {$section2}, {$section3} WHERE {$section}.{$col} = {$section3}.{$col} AND {$section2}.{$col2} = {$section3}.{$col2} AND {$section2}.{$col3} = '{$options}'";

		$runFilter = mysqli_query($link, $queryFilter);

		if($runFilter){
			return $runFilter;
		}else{
			$error = "There is something wrong";
			return $error;
		}

		mysqli_close($link);
	}







?>
