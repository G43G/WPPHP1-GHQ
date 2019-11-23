<hr/>
<?php
	$game = $_GET['game'];
	
	$query_game = "SELECT * FROM game WHERE game_id = $game";
	
	$result_game = mysqli_query($connection, $query_game);
	
	$res = mysqli_fetch_array($result_game);
	
	echo("<div id='game'>");
	echo("<img src='pictures/games/".$res['game_picture']."' alt='".$res['game_picture']."'/>");
	echo("<div id='information'>");
	echo("<h1>".$res['game_name']."</h1>");
	echo("<h3>".$res['game_publisher']."</h3>");
	echo("<h3>".$res['game_year']."</h3>");
	echo("<p>".$res['game_text']."</p>");
	echo("</div>");
	echo("<iframe src='".$res['game_trailer']."' allowfullscreen></iframe>");
	echo("<br/>");
	echo("<br/>");
	echo("<br/>");
	echo("<a href='index.php?page=1&it1=1'><b>BACK TO BROWSE</b></a>");
	echo("</div>");
?>
<div class="clear"></div>
<hr/>