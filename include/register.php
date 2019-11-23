<?php
	if(isset($_POST['register']))
	{
		$mail_r = addslashes(trim($_POST['mail_r']));
		$username_r = addslashes(trim($_POST['username_r']));
		$password_r = addslashes(trim($_POST['password_r']));
		$c_password_r = addslashes(trim($_POST['c_password_r']));
		
		$regMail = "/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/";
		$regUsername = "/^[a-zA-Z0-9]{3,15}$/";
		$regPassword = "/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/";
		
		$errors = array();
		
		if(!preg_match($regMail, $mail_r))
		{
			$errors[] = "E-mail address is not in valid format!";
		}
		if(!preg_match($regUsername, $username_r))
		{
			$errors[] = "Username is not in valid format! Username must be between 3 and 15 characters!";
		}
		if(!preg_match($regPassword, $password_r))
		{
			$errors[] = "Password is not in valid format! Password must contain at least 1 alphabet and 1 numerical character and must be 6 characters or more!";
		}
		if($c_password_r != $password_r)
		{
			$errors[] = "Your passwords don't match!";
		}
		
		if(count($errors) != 0)
		{
			echo("<div class='errors_down'>");
			echo("<ul>");
			foreach($errors as $error)
			{
				echo("<li>".$error."</li>");
			}
			echo("</ul>");
			echo("</div>");
		}
		else
		{
			echo("<div class='message_down'>");
			
			$query_register = "INSERT INTO user VALUES('', '$mail_r', '$username_r', md5('$password_r'), 'user');";
			$result_register = mysqli_query($connection, $query_register);
			
			if(!$result_register)
			{
				echo("<h3 style='color:red'>Error during registration! - </h3>".mysqli_error());
			}
			else
			{
				echo("<h3>User successfully registered!</h3>");
			}
			
			echo("</div>");
		}
	}
?>