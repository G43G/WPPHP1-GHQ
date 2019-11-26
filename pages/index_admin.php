<?php
	if(!$_SESSION['role'] || $_SESSION['role'] == 'user')
	{
		header('location:index.php?page=0');
	}
?>
<h1>Manage website content</h1>
<hr/>
<div id="nav_admin">
	<ul>
		<a href="index.php?page=3&admin=0&ad1=1"><li>Users</li></a>
		<a href="index.php?page=3&admin=1&ad2=1"><li>Games</li></a>
		<a href="index.php?page=3&admin=2&ad3=1"><li>Gallery</li></a>
	</ul>
</div>
<?php
	@$admin = $_GET['admin'];
	@$user = $_GET['user'];
	@$game = $_GET['game'];
	
	if(isset($admin))
	{
		if($admin == 0)
		{
			if(isset($_POST['delete']))
			{
				@$for_delete = $_POST['for_delete'];
				if(isset($_POST['for_delete']))
				{
					foreach($for_delete as $delete)
					{
						$query_delete = "DELETE FROM user WHERE user_id = ".$delete;
						$result_delete = mysqli_query($connection, $query_delete);
							
						if(!$result_delete)
						{
							echo("<div class='message_up'>");
							echo("<h3 style='color:red'>Error while deleting user(s). - </h3>".mysqli_error());			
							echo("</div>");										
						}
					}
				}
				else
				{
					echo("<div class='message_up'>");
					echo("<h3>You must first select user(s) for deleting.</h3>");
					echo("</div>");
				}
			}
			
			if(isset($_POST['insert']))
			{
				$mail = trim($_POST['mail']);
				$username = trim($_POST['username']);
				$password = trim($_POST['password']);
				
				$errors = array();
				
				if(empty($mail))
				{
					$errors[] = "E-mail field mustn't be empty!";
				}
				if(empty($username))
				{
					$errors[] = "Username field mustn't be empty!";
				}
				if(empty($password))
				{
					$errors[] = "Password field mustn't be empty!";
				}
				
				if(count($errors) != 0)
				{					
					echo("<div class='errors_up'>");
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
					$query_insert = "INSERT INTO user VALUES('', '$mail', '$username', md5('$password'), 'user')";
					$result_insert = mysqli_query($connection, $query_insert);
					
					echo("<div class='message_up'>");
					
					if($result_insert)
					{
						echo("<h3>New user added successfully.</h3>");
					}
					else
					{
						echo("<h3 style='color:red'>Error while adding user. - </h3>".mysqli_error());
					}
					
					echo("</div>");
				}
			}
			
			$start = 0;
			$limit = 10;
			
			if(isset($_GET['ad1']))
			{
				$ad1 = $_GET['ad1'];
				$start = ($ad1-1)*$limit;
			}
			
			$query_list = "SELECT * FROM user WHERE user_role = 'user' ORDER BY user_id LIMIT $start ,$limit";
			$result_list = mysqli_query($connection, $query_list);
			
			if(mysqli_num_rows($result_list) == 0)
			{
				echo("<div class='message_up'>");
				echo("<h2>There is no data in the database.</h2>");
				echo("</div>");
				echo("<div class='admin'>");
				echo("<form action='index.php?page=3&admin=0' method='post'>");
				echo("<table>");
				echo("<tr><td align='center'><input type='submit' name='new' id='new' value='New'/></td></tr>");
				echo("</table>");
				echo("</form>");
				echo("</div>");
			}
			else
			{
				echo("<div class='admin'>");
				echo("<form action='index.php?page=3&admin=0' method='post'>");
				echo("<table>");
				echo("<tr>");
				echo("<th>ID</th>");
				echo("<th>E-mail</th>");
				echo("<th>Username</th>");
				echo("<th>Delete</th>");
				echo("<th>Update</th>");
				echo("</tr>");

				while($res = mysqli_fetch_array($result_list))
				{
					echo("<tr>");
					echo("<td>".$res['user_id']."</td>");
					echo("<td>".$res['user_mail']."</td>");
					echo("<td>".$res['user_name']."</td>");
					echo("<td><input type='checkbox' name='for_delete[]' value='".$res['user_id']."'/></td>");
					echo("<td><a href='index.php?page=3&user=".$res['user_id']."'>CLICK HERE</a></td>");
					echo("</tr>");
				}
				echo("<tr><td colspan='5' align='center'><input type='submit' name='delete' id='delete' value='Delete'/></td></tr>");
				echo("<tr><td colspan='5' align='center'><input type='submit' name='new' id='new' value='New'/></td></tr>");
				
				echo("</table>");
				echo("</form>");
				echo("</div>");
			}
			
			if(isset($_POST['new']))
			{
				echo("<div class='admin'>");
				echo("<form action='index.php?page=3&admin=0' method='post'>");
				echo("<table>");
				echo("<tr>");
				echo("<td><input type='text' name='mail' id='mail' placeholder='E-mail'/></td>");
				echo("<td><input type='text' name='username' id='username' placeholder='Username'/></td>");
				echo("<td><input type='text' name='password' id='password' placeholder='Password'/></td>");
				echo("</tr>");
				echo("<tr><td colspan='3' align='center'><input type='submit' name='insert' id='insert' value='Insert'/></td></tr>");
				echo("</table>");
				echo("</form>");
				echo("</div>");
			}
			
			$rows = mysqli_num_rows(mysqli_query($connection, "SELECT * FROM user WHERE user_role = 'user'"));
			$total = ceil($rows/$limit);
			
			echo("<div class='pagination'>");
			echo("<ul>");
			
			if(@$ad1 > 1)
			{
				echo("<li><a href='index.php?page=3&admin=0&ad1=".(@$ad1-1)."'><</a></li>");
			}
			for($i=1; $i<=$total; $i++)
			{
				if($i == @$ad1)
				{
					echo ("<li>".$i."</li>");
				}
				else
				{
					echo ("<li><a href='index.php?page=3&admin=0&ad1=".$i."'>".$i."</a></li>");
				}
			}
			if(@$ad1 != $total)
			{
				echo("<li><a href='index.php?page=3&admin=0&ad1=".(@$ad1+1)."'>></a></li>");
			}
			
			echo("</ul>");
			echo("</div>");
		}
		else if($admin == 1)
		{
			if(isset($_POST['delete']))
			{
				@$for_delete = $_POST['for_delete'];
				if(isset($_POST['for_delete']))
				{
					foreach($for_delete as $delete)
					{
						$query_delete = "DELETE FROM game WHERE game_id = ".$delete;
						$result_delete = mysqli_query($connection, $query_delete);
						
						if(!$result_delete)
						{
							echo("<div class='message_up'>");
							echo("<h3 style='color:red'>Error while deleting game(s). - </h3>".mysqli_error());
							echo("</div>");
						}
					}
				}
				else
				{
					echo("<div class='message_up'>");
					echo("<h3>You must first select game(s) for deleting.</h3>");
					echo("</div>");
				}
			}
			
			if(isset($_POST['insert']))
			{
				$name = trim($_POST['name']);
				$publisher = trim($_POST['publisher']);
				$year = trim($_POST['year']);
				$file_name = $_FILES['picture']['name'];
				$file_type = $_FILES['picture']['type'];
				$file_tmp = $_FILES['picture']['tmp_name'];
				$text = trim($_POST['text']);
				$trailer = trim($_POST['trailer']);
				
				$errors = array();
				
				if(empty($name))
				{
					$errors[] = "Name field mustn't be empty!";
				}
				if(empty($publisher))
				{
					$errors[] = "Publisher field mustn't be empty!";
				}
				if(empty($year))
				{
					$errors[] = "Year field mustn't be empty!";
				}
				if(empty($file_name))
				{
					$errors[] = "Picture must be uploaded!";
				}			
				if(empty($text))
				{
					$errors[] = "Text field mustn't be empty!";
				}
				if(empty($trailer))
				{
					$errors[] = "Trailer link field mustn't be empty!";
				}			
				
				if(count($errors) != 0)
				{
					echo("<div class='errors_up'>");
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
					if($file_type == "image/jpeg" || $file_type == "image/jpg")
					{
						if(move_uploaded_file($file_tmp, "pictures/games/".$file_name))
						{
							$query_insert = "INSERT INTO game VALUES('', '$name', '$publisher', $year, '$text', '$file_name', '$trailer')";
							$result_insert = mysqli_query($connection, $query_insert);
						}
						
						echo("<div class='message_up'>");
					
						if($result_insert)
						{
							echo("<h3>New game added successfully.</h3>");
						}
						else
						{
							echo("<h3 style='color:red'>Error while adding game. - </h3>".mysqli_error());
						}
					
						echo("</div>");
					}
				}
			}
			
			$start = 0;
			$limit = 10;
			
			if(isset($_GET['ad2']))
			{
				$ad2 = $_GET['ad2'];
				$start = ($ad2-1)*$limit;
			}
			
			$query_list = "SELECT * FROM game ORDER BY game_name LIMIT $start ,$limit";
			$result_list = mysqli_query($connection, $query_list);
			
			if(mysqli_num_rows($result_list) == 0)
			{
				echo("<div class='message_up'>");
				echo("<h2>There is no data in the database.</h2>");
				echo("</div>");
				echo("<div class='admin'>");
				echo("<form action='index.php?page=3&admin=1' method='post'>");
				echo("<table>");
				echo("<tr><td align='center'><input type='submit' name='new' id='new' value='New'/></td></tr>");
				echo("</table>");
				echo("</form>");
				echo("</div>");
			}
			else
			{
				echo("<div class='admin'>");
				echo("<form action='index.php?page=3&admin=1' method='post'>");
				echo("<table>");
				echo("<tr>");
				echo("<th>ID</th>");
				echo("<th>Name</th>");
				echo("<th>Publisher</th>");
				echo("<th>Year</th>");
				echo("<th>Preview</th>");
				echo("<th>Delete</th>");
				echo("<th>Update</th>");
				echo("</tr>");

				while($res = mysqli_fetch_array($result_list))
				{
					echo("<tr>");
					echo("<td>".$res['game_id']."</td>");
					echo("<td>".$res['game_name']."</td>");
					echo("<td>".$res['game_publisher']."</td>");
					echo("<td>".$res['game_year']."</td>");
					echo("<td><img src='pictures/games/".$res['game_picture']."' width='100' height='150'/></td>");
					echo("<td><input type='checkbox' name='for_delete[]' value='".$res['game_id']."'/></td>");
					echo("<td><a href='index.php?page=3&game=".$res['game_id']."'>CLICK HERE</a></td>");
					echo("</tr>");
				}
				echo("<tr><td colspan='7' align='center'><input type='submit' name='delete' id='delete' value='Delete'/></td></tr>");
				echo("<tr><td colspan='7' align='center'><input type='submit' name='new' id='new' value='New'/></td></tr>");

				echo("</table>");
				echo("</form>");
				echo("</div>");
			}
			
			if(isset($_POST['new']))
			{
				echo("<div class='admin'>");
				echo("<form action='index.php?page=3&admin=1' method='post' enctype='multipart/form-data'>");
				echo("<table>");
				echo("<tr>");
				echo("<td><input type='text' name='name' id='name' placeholder='Name'/></td>");
				echo("<td><input type='text' name='publisher' id='publisher' placeholder='Publisher'/></td>");
				echo("<td><input type='text' name='year' id='year' placeholder='Year'/></td>");
				echo("</tr>");
				echo("<tr>");
				echo("<td><input type='file' name='picture' id='picture'/></td>");
				echo("<td><textarea name='text' id='text' placeholder='Text'></textarea></td>");
				echo("<td><input type='text' name='trailer' id='trailer' placeholder='Trailer link'/></td>");
				echo("</tr>");
				echo("<tr><td colspan='3' align='center'><input type='submit' name='insert' id='insert' value='Insert'/></td></tr>");
				echo("</table>");
				echo("</form>");
				echo("</div>");
			}
			
			$rows = mysqli_num_rows(mysqli_query($connection, "SELECT * FROM game"));
			$total = ceil($rows/$limit);
			
			echo("<div class='pagination'>");
			echo("<ul>");
			
			if(@$ad2 > 1)
			{
				echo("<li><a href='index.php?page=3&admin=1&ad2=".(@$ad2-1)."'><</a></li>");
			}
			for($i=1; $i<=$total; $i++)
			{
				if($i == @$ad2)
				{
					echo ("<li>".$i."</li>");
				}
				else
				{
					echo ("<li><a href='index.php?page=3&admin=1&ad2=".$i."'>".$i."</a></li>");
				}
			}
			if(@$ad2 != $total)
			{
				echo("<li><a href='index.php?page=3&admin=1&ad2=".(@$ad2+1)."'>></a></li>");
			}
			
			echo("</ul>");
			echo("</div>");
		}
		else if($admin == 2)
		{
			if(isset($_POST['delete']))
			{
				@$for_delete = $_POST['for_delete'];
				if(isset($_POST['for_delete']))
				{
					foreach($for_delete as $delete)
					{
						$query_delete = "DELETE FROM gallery WHERE picture_id = ".$delete;
						$result_delete = mysqli_query($connection, $query_delete);
						
						if(!$result_delete)
						{
							echo("<div class='message_up'>");
							echo("<h3 style='color:red'>Error while deleting picture(s). - </h3>".mysqli_error());
							echo("</div>");
						}
					}
				}
				else
				{
					echo("<div class='message_up'>");
					echo("<h3>You must first select picture(s) for deleting.</h3>");
					echo("</div>");
				}
			}
			
			if(isset($_POST['insert']))
			{
				$file_name = $_FILES['picture']['name'];
				$file_type = $_FILES['picture']['type'];
				$file_tmp = $_FILES['picture']['tmp_name'];
			
				$errors = array();
			
				if(empty($file_name))
				{
					$errors[] = "Picture must be uploaded!";
				}					
			
				if(count($errors) != 0)
				{
					echo("<div class='errors_up'>");
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
					if($file_type == "image/jpeg" || $file_type == "image/jpg")
					{
					
						$fileName = time().$file_name;
					
						if(move_uploaded_file($file_tmp, "pictures/gallery/".$fileName))
						{
							include("include/function.inc");
							thumbnail("pictures/gallery/".$fileName, "pictures/gallery/thumbnails/".$fileName, 274, 274);
						
							$query_insert = "INSERT INTO gallery VALUES('', '$fileName')";
							$result_insert = mysqli_query($connection, $query_insert);
						}
					
						echo("<div class='message_down'>");
				
						if($result_insert)
						{
							echo("<h3>New picture added successfully.</h3>");
						}
						else
						{
							echo("<h3 style='color:red'>Error while adding picture. - </h3>".mysqli_error());
						}
				
						echo("</div>");
					}
				}
			}
			
			$start = 0;
			$limit = 10;
			
			if(isset($_GET['ad3']))
			{
				$ad3 = $_GET['ad3'];
				$start = ($ad3-1)*$limit;
			}
			
			$query_list = "SELECT * FROM gallery ORDER BY picture_id LIMIT $start, $limit";
			$result_list = mysqli_query($connection, $query_list);
			
			if(mysqli_num_rows($result_list) == 0)
			{
				echo("<div class='message_up'>");
				echo("<h2>There is no data in the database.</h2>");
				echo("</div>");
				echo("<div class='admin'>");
				echo("<form action='index.php?page=3&admin=2' method='post'>");
				echo("<table>");
				echo("<tr><td align='center'><input type='submit' name='new' id='new' value='New'/></td></tr>");
				echo("</table>");
				echo("</form>");
				echo("</div>");
			}
			else
			{
				echo("<div class='admin'>");
				echo("<form action='index.php?page=3&admin=2' method='post'>");
				echo("<table>");
				echo("<tr>");
				echo("<th>ID</th>");
				echo("<th>Name</th>");
				echo("<th>Preview</th>");
				echo("<th>Delete</th>");
				echo("</tr>");

				while($res = mysqli_fetch_array($result_list))
				{
					echo("<tr>");
					echo("<td>".$res['picture_id']."</td>");
					echo("<td>".$res['picture_name']."</td>");
					echo("<td><img src='pictures/gallery/thumbnails/".$res['picture_name']."' width='150' height='100'/></td>");
					echo("<td><input type='checkbox' name='for_delete[]' value='".$res['picture_id']."'/></td>");
					echo("</tr>");
				}
				echo("<tr><td colspan='4' align='center'><input type='submit' name='delete' id='delete' value='Delete'/></td></tr>");
				echo("<tr><td colspan='4' align='center'><input type='submit' name='new' id='new' value='New'/></td></tr>");

				echo("</table>");
				echo("</form>");
				echo("</div>");
			}
			
			if(isset($_POST['new']))
			{
				echo("<div class='admin'>");
				echo("<form action='index.php?page=3&admin=2' method='post' enctype='multipart/form-data'>");
				echo("<table>");
				echo("<tr><td><input type='file' name='picture' id='picture'/></td></tr>");
				echo("<tr><td align='center'><input type='submit' name='insert' id='insert' value='Insert'/></td></tr>");
				echo("</table>");
				echo("</form>");
				echo("</div>");
			}
			
			$rows = mysqli_num_rows(mysqli_query($connection, "SELECT * FROM gallery"));
			$total = ceil($rows/$limit);
			
			echo("<div class='pagination'>");
			echo("<ul>");
			
			if(@$ad3 > 1)
			{
				echo("<li><a href='index.php?page=3&admin=2&ad3=".(@$ad3-1)."'><</a></li>");
			}
			for($i=1; $i<=$total; $i++)
			{
				if($i == @$ad3)
				{
					echo ("<li>".$i."</li>");
				}
				else
				{
					echo ("<li><a href='index.php?page=3&admin=2&ad3=".$i."'>".$i."</a></li>");
				}
			}
			if(@$ad3 != $total)
			{
				echo("<li><a href='index.php?page=3&admin=2&ad3=".(@$ad3+1)."'>></a></li>");
			}
			
			echo("</ul>");
			echo("</div>");
		}		
	}
	else if(isset($user))
	{
		echo("<div class='admin'>");
		echo("<form action='index.php?page=3&user=".$user."' method='post'>");
		echo("<table>");
		echo("<tr>");
		echo("<td><input type='text' name='mail' id='mail' placeholder='E-mail'/></td>");
		echo("<td><input type='text' name='username' id='username' placeholder='Username'/></td>");
		echo("<td><input type='text' name='password' id='password' placeholder='Password'/></td>");
		echo("</tr>");
		echo("<tr><td colspan='3' align='center'><input type='submit' name='update' id='update' value='Update'/><input type='hidden' name='id_user' id='id_user' value='".$user."'/></td></tr>");
		echo("</table>");
		echo("</form>");
		echo("</div>");
		
		if(isset($_POST['update']))
		{
			$mail = trim($_POST['mail']);
			$username = trim($_POST['username']);
			$password = trim($_POST['password']);
			
			$query = "SELECT * FROM user WHERE user_id = ".$user;
			$result = mysqli_query($connection, $query);
			$res = mysqli_fetch_array($result);
			
			if(empty($mail))
			{
				$mail = mysqli_real_escape_string($connection, $res['user_mail']);
			}
			if(empty($username))
			{
				$username = $res['user_name'];
			}
			if(empty($password))
			{
				$password = $res['user_password'];
			}
			else
			{
				$password = md5($password);
			}
			
			$query_update = "UPDATE user SET user_mail = '".$mail."', user_name = '".$username."', user_password = '".$password."' WHERE user_id = ".$user;
			$result_update = mysqli_query($connection, $query_update);
			
			echo("<div class='message_down'>");
			
			if($result_update)
			{
				echo("<h3>User updated successfully.</h3>");
			}
			else
			{
				echo("<h3 style='color:red'>Error while updating user. - </h3>".mysqli_error());
			}
			
			echo("</div>");
		}
	}
	else if(isset($game))
	{
		echo("<div class='admin'>");
		echo("<form action='index.php?page=3&game=".$game."' method='post' enctype='multipart/form-data'>");
		echo("<table>");
		echo("<tr>");
		echo("<td><input type='text' name='name' id='name' placeholder='Name'/></td>");
		echo("<td><input type='text' name='publisher' id='publisher' placeholder='Publisher'/></td>");
		echo("<td><input type='text' name='year' id='year' placeholder='Year'/></td>");
		echo("</tr>");
		echo("<tr>");
		echo("<td><input type='file' name='picture' id='picture'/></td>");
		echo("<td><textarea name='text' id='text' placeholder='Text'></textarea></td>");
		echo("<td><input type='text' name='trailer' id='trailer' placeholder='Trailer link'/></td>");
		echo("</tr>");
		echo("<tr><td colspan='3'><input type='submit' name='update' id='update' value='Update'/><input type='hidden' name='id_game' id='id_game' value='".$game."'/></td></tr>");
		echo("</table>");
		echo("</form>");
		echo("</div>");
		
		if(isset($_POST['update']))
		{
			$name = trim($_POST['name']);
			$publisher = trim($_POST['publisher']);
			$year = trim($_POST['year']);
			$file_name = $_FILES['picture']['name'];
			$file_type = $_FILES['picture']['type'];
			$file_tmp = $_FILES['picture']['tmp_name'];
			$text = trim($_POST['text']);
			$trailer = trim($_POST['trailer']);
			
			$query = "SELECT * FROM game WHERE game_id = ".$game;
			$result = mysqli_query($connection, $query);
			$res = mysqli_fetch_array($result);
			
			if(empty($name))
			{
				$name = mysqli_real_escape_string($connection, $res['game_name']);
			}
			if(empty($publisher))
			{
				$publisher = $res['game_publisher'];
			}
			if(empty($year))
			{
				$year = $res['game_year'];
			}
			if(empty($text))
			{
				$text = mysqli_real_escape_string($connection, $res['game_text']);
			}
			if(empty($trailer))
			{
				$trailer = mysqli_real_escape_string($connection, $res['game_trailer']);
			}
			
			echo("<div class='message_down'>");
			
			if(empty($file_name))
			{
				$file_name = $res['game_picture'];
				
				$query_update = "UPDATE game SET game_name = '$name', game_publisher = '$publisher', game_year = $year, game_picture = '$file_name', game_text = '$text', game_trailer = '$trailer' WHERE game_id = ".$game;
				$result_update = mysqli_query($connection, $query_update);
					
				if($result_update)
				{
					echo("<h3>Game updated successfully.</h3>");
				}
				else
				{
					echo("<h3 style='color:red'>Error while updating game. - </h3>".mysqli_error());
				}
			}
			else if($file_type == "image/jpeg" || $file_type == "image/jpg")
			{
				if(move_uploaded_file($file_tmp, "pictures/games/".$file_name))
				{
					$query_update = "UPDATE game SET game_name = '$name', game_publisher = '$publisher', game_year = $year, game_picture = '$file_name', game_text = '$text', game_trailer = '$trailer' WHERE game_id = ".$game;
					$result_update = mysqli_query($connection, $query_update);
					
					if($result_update)
					{
						echo("<h3>Game updated successfully.</h3>");
					}
					else
					{
						echo("<h3 style='color:red'>Error while updating game. - </h3>".mysqli_error());
					}
				}
				else
				{
					echo("<h3 style='color:red'>Error while uploading picture. - </h3>".mysqli_error());
				}
			}
			else
			{
				echo("<h3 style='color:red'>Wrong picture format. Must be '.jpg' or '.jpeg'.</h3>");
			}
					
			echo("</div>");
		}
	}
	else
	{
		echo("<div class='message_up'>");
		echo("<h2>Select a section to manage.</h2>");
		echo("</div>");
	}
?>
<hr/>
