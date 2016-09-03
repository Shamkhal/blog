<?php
	session_start();

	if (isset($_SESSION['admin']) && $_SESSION['admin'] = "logged") {
		if(isset($_GET) && isset($_GET['id'])) {
			include 'database.php';
			$db->delete($_GET['id']);
			header("Location: admin.php");
		} else {
			echo "Error: Mission GET argument!";

		}
	} else {
		echo "Access Denied!";
		header("Location: login.php");

	}


?>