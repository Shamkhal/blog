			<?php 
				if(isset($_GET) && isset($_GET['id'])) {
				
				include 'database.php';
				$id=$_GET['id'];
				$title=$_POST['title'];
				$content=$_POST['content'];
				$currentDate = date("dmYHis");
				$filetype = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
			$filename = $currentDate . ".$filetype";
			$target_file = "../images/news/".$filename;
			if($filetype == "jpg" || $filetype == "png" || $filetype == "jpeg") {
				if(move_uploaded_file($_FILES['image']['tmp_name'], $target_file)) {
						$news = $db->update("title='$title', content='$content',image_path='$image_path', id=$id");
						$result = mysqli_fetch_assoc($news);
						header("Location: admin.php");
			}
		} 
		?>

<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<title>UPDATE NEWS</title>

</head>
<body>

	<div class="container">
				<div class="row">
					<h2>UPDATE NEWS</h2>
				</div><!-- row -->
				<div class="row">
					<form action="" method="POST" enctype="multipart/form-data">
						<div class="form-group">
						<label for="name">Title</label>
							<input type="text" name="title" class="form-control" id="title" placeholder="<?=$result['title']?>" required="";>
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
<?php
	}
else {
		echo "Daxil olmamisiniz";
		header("Refresh: 1.5; login.php");
	}
		?>
</body>
</html>

