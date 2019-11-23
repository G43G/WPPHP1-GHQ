<h1>For more features, please login</h1>
<hr/>
<div id="registration">
	<div id="form_left">
		<form action="index.php?page=5" method="post" class="form">
			<input type="text" placeholder="Username" name="username_l" id="username_l"/>
			<input type="password" placeholder="Password" name="password_l" id="password_l"/>
			<input type="submit" value="Login" id="login" name="login"/>
		</form>
		<h3>Don't have an account? <a onClick="reveal()">REGISTER</a></h3>
	</div>
	<div id="form_right">
		<form action="index.php?page=5" method="post" class="form">
			<input type="text" placeholder="E-mail" name="mail_r" id="mail_r"/>
			<input type="text" placeholder="Username" name="username_r" id="username_r"/>
			<input type="password" placeholder="Password" name="password_r" id="password_r"/>
			<input type="password" placeholder="Confirm Password" name="c_password_r" id="c_password_r"/>
			<input type="submit" value="Register" id="register" name="register"/>
		</form>
	</div>
</div>
<hr/>
<div class="clear"></div>
<?php include("include/login.php"); ?>
<?php include("include/register.php"); ?>