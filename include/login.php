<?php
	if(isset($_POST['login']))
	{
		$username_l = addslashes(trim($_POST['username_l']));
		$password_l = addslashes(trim($_POST['password_l']));
		
		$query_login = "SELECT * FROM user WHERE user_name = '".$username_l."' AND user_password = '".md5($password_l)."'";
		
		$result_login = mysqli_query($connection, $query_login);
		
		if(mysqli_num_rows($result_login) != 0)
		{
			$res_l = mysqli_fetch_array($result_login);
			$_SESSION['role'] = $res_l['user_role'];
			$_SESSION['user'] = $res_l['user_name'];
			header('location:index.php?page=0');
		}
		else
		{
			echo("<div class='message_down'>");
			echo("<h3 style='color:red'>Username and password don't match, please try again.</h3>");
			echo("</div>");
		}
	}
?>