<?php
	if(!$_SESSION['role'])
	{
		header('location:index.php?page=0');
	}
?>
<h1>Enjoy our gallery of in-game screenshots and covers</h1>
<hr/>
<?php
	$start = 0;
	$limit = 9;
	
	if(isset($_GET['it2']))
	{
		$it2 = $_GET['it2'];
		$start = ($it2-1)*$limit;
	}
	
	$query_list = "SELECT * FROM gallery LIMIT $start, $limit";
	$result_list = mysqli_query($connection, $query_list);
	
	echo("<div id='gallery'>");
	while($res = mysqli_fetch_array($result_list))
	{
		echo("<a href='pictures/gallery/".$res['picture_name']."' target='_blank'>");
		echo("<img src='pictures/gallery/thumbnails/".$res['picture_name']."' alt='".$res['picture_name']."'/>");
		echo("</a>");
	}
	echo("</div>");
	echo("<div class='clear'></div>");
	echo("<hr/>");
	
	$rows = mysqli_num_rows(mysqli_query($connection, "SELECT * FROM gallery"));
	$total = ceil($rows/$limit);
	
	echo("<div class='pagination'>");
	echo("<ul>");
	if(@$it2 > 1)
	{
		echo("<li><a href='index.php?page=2&it2=".(@$it2-1)."'><</a></li>");
	}
	for($i=1; $i<=$total; $i++)
	{
		if($i == @$it2)
		{
			echo ("<li>".$i."</li>");
		}
		else
		{
			echo ("<li><a href='index.php?page=2&it2=".$i."'>".$i."</a></li>");
		}
	}
	if(@$it2 != $total)
	{
		echo("<li><a href='index.php?page=2&it2=".(@$it2+1)."'>></a></li>");
	}
	echo("</ul>");
	echo("</div>");
?>
<hr/>