<?php
	session_start();
	
	if(isset($_SESSION['role']))
	{
		unset($_SESSION['role']);
		unset($_SESSION['user']);
		
		session_destroy();
		header('location: ../index.php?page=5');
	}
	else
	{
		header('location: ../index.php?page=5');
	}
?>