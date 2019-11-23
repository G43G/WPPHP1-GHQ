<h1>About me</h1>
<hr/>
	<div id="about">
		<img src="pictures/profile.jpg" class="profile"/>
		<p>My name is Bogdan Matorkić (student number 30/13) and I am currently studying Internet Technologies on ICT College of Vocational Studies, extended year in Belgrade. I have interest and knowledge in front-end programming and I am eager to always learn something new. Feel free to contact me for anything.</p>
		<a href="https://www.facebook.com/bogdan.lucifer" target="_blank"><img src="pictures/social/facebook.png" class="social"/></a>
		<a href="https://twitter.com/43GuitarGod" target="_blank"><img src="pictures/social/twitter.png" class="social"/></a>
		<a href="mailto:bogdan_992@icloud.com?Subject=Question" target="_blank"><img src="pictures/social/mail.png" class="social"/></a>
	</div>
<hr/>
<div class="clear"></div>
<?php
	if(@$_SESSION['role'])
	{
		echo("<div id='poll'>");
		echo("<h3>What do You think about my website?</h3><br/>");
		echo("<from>");
		echo("It's good: <input type='radio' name='vote' value='0' onclick='getVote(this.value)'><br/><br/>");
		echo("It's bad: <input type='radio' name='vote' value='1' onclick='getVote(this.value)'>");
		echo("</form>");
		echo("</div>");
	}
?>