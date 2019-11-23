<?php 
	include('include/connection.inc');
	session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
	<head>
		<?php
			@$title = $_GET['page'];
			if(isset($title))
			{
				$t = "";
				switch($title)
				{
					case 0:
					$t = "Home";
					break;
					
					case 1:
					$t = "Browse";
					break;
					
					case 2:
					$t = "Gallery";
					break;
					
					case 3:
					$t = "Admin";
					break;
					
					case 4:
					$t = "About";
					break;
					
					case 5:
					$t = "Login";
					break;
					
					default:
					$t = "Home";
					break;
				}
				echo("<title>Games HQ - ".$t."</title>");
			}
			else
			{
				echo("<title>Games HQ - Home</title>");
			}
		?>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
		<meta name="description" content="Video Games"/>
		<meta name="keywords" content="Games, Browse, Gallery, Publisher, Year, Ubisoft, Electronic Arts, Bethesda Softworks, Battlefield, Call of Duty"/>
		<meta name="author" content="Bogdan Matorkić">
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
		<link rel="shortcut icon" href="pictures/general/favicon.ico"/>
		<script type="text/javascript" language="javaScript" src="script/script.js"></script>
		<script type="text/javascript" language="javaScript" src="script/ajax.js"></script>
	</head>
	<body>
		<div id="wrapper">
			<nav>
				<a href="index.php">
				<div id="logo"></div>
				</a>
				<div id="menu_left">
					<ul>
					<?php
						if(@$_SESSION['role'] == 'administrator')
						{
							$query_nav = "SELECT * FROM nav";
						}
						else if(@$_SESSION['role'] == 'user')
						{
							$query_nav = "SELECT * FROM nav WHERE nav_id != 4";
						}
						else if(!@$_SESSION['role'])
						{
							$query_nav = "SELECT * FROM nav WHERE nav_id != 3 AND nav_id != 4";
						}
						
						$result_nav = mysqli_query($connection, $query_nav);
						
						while($res = mysqli_fetch_array($result_nav))
						{
							echo("<li><a href='".$res['nav_path']."'>".$res['nav_name']."</a><li>");
						}
					?>
					</ul>	
				</div>
				<div id="menu_right">
					<ul>
					<?php
						if(@$_SESSION['role'])
						{
							echo("<li><a href='include/logout.php'>Logout - ".$_SESSION['user']."</a></li>");
						}
						else
						{
							echo("<li><a href='index.php?page=5'>Login</a></li>");
						}
					?>
					</ul>
				</div>
				<div class="clear"></div>
			</nav>
			<header>
			</header>
			<main>
			<?php
				@$page = $_GET['page'];

				if(isset($page))
				{
					switch($page)
					{
						case 0:
						require('pages/index_main.php');
						break;
						
						case 1: 
						require('pages/index_browse.php');
						break;
						
						case 2:
						require('pages/index_gallery.php');
						break;
						
						case 3:
						require('pages/index_admin.php');
						break;
						
						case 4:
						require('pages/index_about.php');
						break;
						
						case 5:
						require('pages/index_login.php');
						break;
						
						case 6:
						require('pages/index_game.php');
						break;
						
						default:
						require('pages/index_main.php');
						break;
					}
				}
				else
				{
					require('pages/index_main.php');
				}
			?>
			</main>
			<footer>
				<ul>
					<li><a href="index.php?page=0">Home</a></li>
					<li><a href="index.php?page=1&it1=1">Browse Games</a></li>
					<?php
						if(@$_SESSION['role'])
						{
							echo("<li><a href='index.php?page=2&it2=1'>Gallery</a></li>");
						}
						if(@$_SESSION['role'] == "administrator")
						{
							echo("<li><a href='index.php?page=3'>Admin Panel</a></li>");
						}
						mysqli_close($connection);
					?>
					<li><a href="index.php?page=4">About</a></li>
					<li><a href="documentation.pdf" target="_blank">Documentation</a></li>
					<li><a href="xml/sitemap.xml" title="Sitemap" target="_blank">Sitemap</a></li>
				</ul>
				<p>Copyright &copy; Bogdan Matorkić 2017, Games HQ</p>
			</footer>
		</div>
	</body>
</html>