<h1>GAMES HQ - More games every day!</h1>
<hr/>
<h2>Latest games</h2>
<br/><br/>
<div id="slider">
<?php
	$query_slider = "SELECT * FROM game WHERE game_year = 2017";
	
	$result_slider = mysqli_query($connection, $query_slider);
	
	while($res = mysqli_fetch_array($result_slider))
	{
		echo("<div class='slide fade'>");
		echo("<a href='index.php?page=6&game=".$res['game_id']."'><img src='pictures/slider/".$res['game_picture']."' alt='".$res['game_picture']."' width='100%'/></a>");
		echo("</div>");
	}
?>
</div>
<script type="text/javascript" src="script/script.js"></script>
<div class="clear"></div>
<hr/>
<div id="voting">
<h2>What is Your favorite video game developer?</h2>
<form action="index.php?page=0#anchor" method="post" id="anchor">
	<table>
		<tr>	
			<td><input type="radio" name="vote" id="vote" value="1"/></td><td><b>Electronic Arts (EA)</b></td>
		</tr>
		<tr>
			<td><input type="radio" name="vote" id="vote" value="2"/></td><td><b>Bethesda Softworks</b></td>
		</tr>
		<tr>
			<td><input type="radio" name="vote" id="vote" value="3"/></td><td><b>Ubisoft</b></td>
		</tr>
		<tr>
			<td align='center' colspan='2'><input type="submit" name="btnVote" id="btnVote" value="Vote"/></td>
		</tr>
	</table>
</form>
<?php
	if(isset($_POST['btnVote']))
	{
		@$vote = $_POST['vote'];
		
		if(empty($vote))
		{
			echo("<div class='message_down'>");
			echo("<h3>You must select an option to vote for.</h3>");
			echo("</div>");
		}
		else
		{
			if($vote == 1)
			{
				$query_vote = "UPDATE poll SET EA = EA+1";
				$result_vote = mysqli_query($connection, $query_vote);
				
				if($result_vote)
				{
					echo("<br/><h3>You voted for Electronic Arts (EA)!</h3><br/><br/>");
					echo("<a href='index.php?page=0&vote=1'><h2>VIEW RESULTS</h2></a>");
				}
				else
				{
					echo("Error while voting. - ".mysqli_error());
				}
			}
			else if($vote == 2)
			{
				$query_vote = "UPDATE poll SET BS = BS+1";
				$result_vote = mysqli_query($connection, $query_vote);
				
				if($result_vote)
				{
					echo("<br/><h3>You voted for Bethesda Softworks!</h3><br/><br/>");
					echo("<a href='index.php?page=0&vote=1'><h2>VIEW RESULTS</h2></a>");
				}
				else
				{
					echo("Error while voting. - ".mysqli_error());
				}
			}
			else
			{
				$query_vote = "UPDATE poll SET U = U+1";
				$result_vote = mysqli_query($connection, $query_vote);
				
				if($result_vote)
				{
					echo("<br/><h3>You voted for Ubisoft!</h3><br/><br/>");
					echo("<a href='index.php?page=0&vote=1'><h2>VIEW RESULTS</h2></a>");
				}
				else
				{
					echo("Error while voting. - ".mysqli_error());
				}
			}
		}

	}
	if(isset($_GET['vote']))
	{
		$query_votes = "SELECT * FROM poll";
		$result_votes = mysqli_query($connection, $query_votes);
		
		$res = mysqli_fetch_array($result_votes);
		
		$ea = $res['EA'];
		$bs = $res['BS'];
		$u = $res['U'];
		
		$count = $ea + $bs + $u;

		$per_ea = round($ea * 100 / $count)."%";
		$per_bs = round($bs * 100 / $count)."%";
		$per_u = round($u * 100 / $count)."%";

		echo("<div id='results'>");
		echo("<ul>");
		echo("<li>Electronic Arts (EA): ".$ea."(".$per_ea.")</li>");
		echo("<li>Bethesda Softworks: ".$bs."(".$per_bs.")</li>");
		echo("<li>Ubisoft: ".$u."(".$per_u.")</li>");
		echo("<ul>");
		echo("</div>");
	}
?>
</div>