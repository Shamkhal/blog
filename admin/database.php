<?php

include "set.php"; 

class blog 
{
	private $host;
	private $username;
	private $password;
	private $dbname;
	private $conn;
	private $table;


	public function __construct($host,$username, $password, $dbname)
	{
		$this ->host=$host;
		$this ->username=$username;
		$this ->password=$password;
		$this ->db_name=$dbname;
		$this->conn=mysqli_connect($host, $username, $password, $dbname);
		
		$this ->table="blog";
	}


	public function connected()
	{
		return $this->conn;

	}



	public function viewSet($id) {
			if($this->connected()) {
				$count = $this->viewGet($id);
				$count++;
				$sql = "UPDATE $this->table SET view_count='$count' WHERE id=$id";
				return mysqli_query($this->conn, $sql);
			}
		}
	public function viewGet($id)
	{
		if ($this->connected()) {
			$sql="SELECT view_count='$count' SET $this->table WHERE id=$id";
			$query= mysqli_query($this->conn, $sql);
			$count= mysqli_fetch_assoc($query);
			return $count['view_count'];
			
		}
	}
	public function delete($id)
	{
		if ($this->connected()) {
			$sql="DELETE FROM $this->table WHERE id=$id";
			return mysqli_query($this->conn,$sql);
		}
	}
	public function update($column, $id)
	{
		if ($this->connected()) {
			$sql="UPDATE $table->table $column WHERE id='$id'";
			return mysqli_query($this->conn,$sql);
		}
	}
	public function create($title, $content, $image_path)
	{
		if ($this->connected()) {

			$selection=strpos($content, '.');
			$subcontent= substr($content, 0, $selection)."...";
			$sql="INSERT INTO $this->table(title, subcontent, content, image_path) VALUES('$title', '$subcontent', '$content', '$image_path')";
			return mysqli_query($this->conn,$sql);
		}
	}
	public function getNews(){
		if ($this->connected()) {
			$sql= "SELECT * FROM $this->table";
			return mysqli_query($this->conn, $sql);
		}
	}
	public function getOneNews($id){
		if ($this->connected()) {
			$sql= "SELECT * FROM $this->table WHERE id=$id";
			return mysqli_query($this->conn, $sql);
		}
	}
	public function LengthNews($length) {
			if($this->connected()) {
				$sql = "SELECT * FROM $this->table LIMIT $length";
				return mysqli_query($this->conn, $sql);
			}
		}
	public function RecentNews()
	{
		if($this->connected()) {
				$sql = "SELECT * FROM $this->table ORDER BY date DESC LIMIT 5";
				return mysqli_query($this->conn, $sql);
		}
		
		
	}
	public function MostViewedNews() {
			if($this->connected()) {
				$SQL = "SELECT * FROM $this->table ORDER BY view_count DESC LIMIT 6";
				return mysqli_query($this->conn, $SQL);
			}
		}
	
}
$db = new blog($host_db, $username_db,$password_db,$database);
?>