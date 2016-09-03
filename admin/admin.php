<?php
	session_start();
	if (isset($_SESSION['admin']) && $_SESSION['admin']="logged") {
		include 'set.php';
		if(isset($_GET['logout']) && $_GET['logout'] == "out") {
			session_destroy();
			echo "Hesabdan cixdiniz";
			header("Refresh: 1.5; login.php");
		} else {
			include 'database.php';

?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<title>ADMIN PANEL</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<h3>Welcome, Admin</h3><br>
			<table class="table">
			  <thead class="thead-inverse">
			  <a href="login.php" class="btn btn-danger">Log out</a>
			  <a href="createnews.php" class="btn btn-default">Add News</a>
			    <tr>
			      <th>ID</th>
			      <th>Title</th>
			      <th>Subcontent</th>
			      <th>Text</th>
			      <th>Image</th>
			      <th>Image Name</th>
			      <th>Date</th>
			      <th>View Count</th>
			      <th>Actions</th>
			    </tr>
			  </thead>
			  <tbody>
			  <?php
						
						$all = $db->getNews();
						while($result = mysqli_fetch_assoc($all)) {
								$id = $result['id'];
				?>
			
								<tr>
									<td><?=$id?></td>
									<td><?=$result['title']?></td>
									<td><?=$result['subcontent']?></td>
									<td><?=$result['content']?></td>
									<td><img width="150px" height="150px" src="../images/news/<?=$result['image_path']?>"></td>
									<td><?=$result['image_path']?></td>
									<td><?=$result['date']?></td>
									<td><?=$result['view_count']?></td>
									<td>
										<a href="delete.php?id=<?=$id?>" class="btn btn-danger">Delete</a>
										<a href="update.php?id=<?=$id?>" class="btn btn-primary">Update</a>
									</td>
								</tr>
				<?php
							}
						
				?>
			  </tbody>
			</table>
		</div>
	</div>
</body>
</html>
<?php
	}
		}
		else{
				unset($_SESSION['admin']);
				echo "Access denied!";
			}
		
?>