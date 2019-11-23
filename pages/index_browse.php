<h1>Browse for games</h1>
<hr/>
<div id="browse">
	<form action="index.php?page=1" method="post">
		<input type="text" id="value" name="value" maxlength="30" autocomplete="off" placeholder="Search by name"/><br/>
		<select  id="publisher" name="publisher">
			<option value="0">Publisher</option>
			<?php
				$query_1 = "SELECT * FROM publisher ORDER BY publisher_name;";
		
				$result_1 = mysqli_query($connection, $query_1);
		
				while($res = mysqli_fetch_array($result_1))
				{
					echo("<option value='".$res['publisher_id']."'>".$res['publisher_name']."</option>");
				}
			?>
		</select>
		<select id="year" name="year">
			<option value="0">Year</option>
			<?php
				$query_2 = "SELECT * FROM year ORDER BY year;";
		
				$result_2 = mysqli_query($connection, $query_2);
		
				while($res = mysqli_fetch_array($result_2))
				{
					echo("<option value='".$res['year_id']."'>".$res['year']."</option>");
				}
			?>
		</select>
		<input type="submit" id="search" name="search" value="Search"/>
	</form>
</div>
<hr/>
<?php
	if(isset($_POST['search']))
	{
		$publisher = $_POST['publisher'];
		$year = $_POST['year'];
		$value = $_POST['value'];
			
		$query_3 = "SELECT * FROM game WHERE game_name LIKE '%$value%'";
			
		if($publisher != 0 && $year == 0) 
		{
            $query_3 = "SELECT * FROM game g JOIN publisher p ON g.game_publisher = p.publisher_name WHERE publisher_id = $publisher ORDER BY game_name" ;
        }
        else if($publisher == 0 && $year != 0) 
		{
            $query_3 = "SELECT * FROM game g JOIN year y ON g.game_year = y.year WHERE year_id = $year ORDER BY game_name";
        }
        else if($publisher != 0 && $year != 0)
		{
            $query_3 = "SELECT * FROM game g JOIN publisher p ON g.game_publisher = p.publisher_name JOIN year y ON g.game_year = y.year WHERE publisher_id = $publisher AND year_id = $year ORDER BY game_name";
        }
		
		@$result_3 = mysqli_query($connection, $query_3);
		
		if(@mysqli_num_rows($result_3) != 0)
		{
			while($res = mysqli_fetch_array($result_3))
			{
				echo("<div class='game'>");
				echo("<img src='pictures/games/".$res['game_picture']."' alt='".$res['game_picture']."'/>");
				echo("<a href='index.php?page=6&game=".$res['game_id']."'><span class='text'><p>MORE DETAILS</p></span></a>");
				echo("<p>".$res['game_name']."</p>");
				echo("</div>");
			}	
		}
		else
		{
			echo("<h2>There is no data in the database.</h2>");
		}
	}
	else
	{
		$start = 0;
		$limit = 9;
		
		if(isset($_GET['it1']))
		{
			$it1 = $_GET['it1'];
			$start = ($it1-1)*$limit;
		}
		
		$query_3 = "SELECT * FROM game ORDER BY game_name LIMIT $start, $limit";
		
		$result_3 = mysqli_query($connection, $query_3);
		
		if(mysqli_num_rows($result_3) != 0)
		{
			echo("<div id='content'>");
			while($res = mysqli_fetch_array($result_3))
			{
				echo("<div class='game'>");
				echo("<img src='pictures/games/".$res['game_picture']."' alt='".$res['game_picture']."'/>");
				echo("<a href='index.php?page=6&game=".$res['game_id']."'><span class='text'><p>MORE DETAILS</p></span></a>");
				echo("<p>".$res['game_name']."</p>");
				echo("</div>");
			}
			echo("</div>");
			echo("<div class='clear'></div>");
			echo("<hr/>");
			
			$rows = mysqli_num_rows(mysqli_query($connection, "SELECT * FROM game ORDER BY game_name"));
			$total = ceil($rows/$limit);
			
			echo("<div class='pagination'>");
			echo("<ul>");
			if(@$it1 > 1)
			{
				echo("<li><a href='index.php?page=1&it1=".(@$it1-1)."'><</a></li>");
			}
			for($i=1; $i<=$total; $i++)
			{
				if($i == @$it1)
				{
					echo ("<li>".$i."</li>");
				}
				else
				{
					echo ("<li><a href='index.php?page=1&it1=".$i."'>".$i."</a></li>");
				}
			}
			if(@$it1 != $total)
			{
				echo("<li><a href='index.php?page=1&it1=".(@$it1+1)."'>></a></li>");
			}
			echo("</ul>");
			echo("</div>");
		}
		else
		{
			echo("<h2>There is no data in the database.</h2>");
		}
	}
?>
<div class="clear"></div>
<hr/>