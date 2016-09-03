<?php
	session_start();
	if (isset($_SESSION['admin']) && $_SESSION['admin'] = "logged") {
		
		include 'database.php';
	
?>
<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<title>ADD NEWS</title>

</head>
<body>

	<div class="container">
				<div class="row">
					<h2>ADD NEWS</h2>
				</div><!-- row -->
				<div class="row">
					<form action="" method="POST" enctype="multipart/form-data">
						<div class="form-group">
						<label for="name">Title</label>
							<input type="text" name="title" class="form-control" id="title" placeholder="Title" required="";>
						</div>
						<div class="form-group">
						<label for="content">Content</label>
							<input type="text" name="content" class="form-control" id="content" placeholder="Content" required="";>
						</div>
						<div class="form-group">
							<label for="image">Select Photo</label>
							<input type="file" id="image" name="image" required="";>
						</div>
						<input type="hidden" name="section" value="<?=$id?>">
						<input type="submit" name="submit" class="btn btn-success" value="Add">
						<a href="admin.php" class="btn btn-default">Back</a>
					</form>
				</div>
			</div>	

</body>
</html>
<?php 
		if(isset($_POST) && isset($_POST['title']) && isset($_POST['content']) && isset($_FILES['image'])) {
			$title = $_POST['title'];
			$content = $_POST['content'];
			$currentDate = date("dmYHis");
			$filetype = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
			$filename = $currentDate . ".$filetype";
			$target_file = "../images/news/".$filename;
			if($filetype == "jpg" || $filetype == "png" || $filetype == "jpeg") {
				if(move_uploaded_file($_FILES['image']['tmp_name'], $target_file)) {
					$db->create($title, $content, $filename);
						header("Location: admin.php");
			}
		} 
	}
}else {
		echo "Daxil olmamisiniz";
		header("Refresh: 1.5; login.php");
	}



?>