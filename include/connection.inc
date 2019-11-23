<?php
	$connection = mysqli_connect('localhost', 'root', '') or die("Connection error with database server! - ".mysqli_error());
	
	$database = mysqli_select_db($connection, 'php1_website') or die("Database selection error! - ".mysqli_error());

	mysqli_set_charset($connection, 'utf8');
?>