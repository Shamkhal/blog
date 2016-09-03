
<?php 
				
	if(isset($_POST['login']) && isset($_POST['username']) && isset($_POST['password'])) {
		if($_POST['username'] == "admin" && $_POST['password'] == "admin") {
			session_start();
			$_SESSION['admin'] = "logged";
			header("Location: admin.php");
		} else {
			echo "Invalid username or password";
		}
	}
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<title></title>
</head>
<body>
<form action="" method="POST">
  <div class="form-group">
  	<label name="username">Username</label>
    <input class="form-control" type="text" name="username" required="" placeholder="Enter Username">
  </div>
  <div class="form-group">
    <label name="password">Password</label>
    <input type="password" class="form-control" name="password" required="" placeholder="Enter Password">
  </div>
  <button type="submit" name=login class="btn btn-primary" value="login">Log In</button>
  <a href="../index.php" class="btn btn-danger">Back</a>
 </form>

				
	
</body>


</html>