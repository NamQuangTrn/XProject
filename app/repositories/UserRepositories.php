<?php
include "lib/DBConnection.php";
include "app/models/User.php";
class UserRepositories
{
	public function getAllUsers()
	{
		try {
			//1. Kết nối DB Server
			$db = new DBConnection();
			$conn = $db->connect();
			//2. Thực hiện truy vấn
			$sql = "SELECT * FROM employees";
			$stmt = $conn->prepare($sql);
			$stmt->execute();
			//3. Xử lý kết quả (SELECT/INSERT-UPDATE-DELETE)
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$result = $stmt->fetchAll();
			// Chuyển đổi Bản ghi (Mảng thông thường) sang Đối tượng: Users
			$users = [];
			foreach ($result as $row) {
				$user = new User();
				$user->setId($row['id']);
				$user->setName($row['name']);
				$user->setAddress($row['address']);
				$user->setSalary($row['salary']);
				array_push($users, $user);
			}
			return $users;
		} catch (PDOException $e) {
			return null;
		}
	}
	public function saveUser($user)
	{
		//Kết nối tới CSDL: MySQLi procedural, MySQLi OOP, PDO*
		try {
			//1. Kết nối DB Server
			$db = new DBConnection();
			$conn = $db->connect();
			//2. Thực hiện truy vấn
			//Tạm thời bỏ qua kiểm tra
			$sql = "INSERT INTO employess ( name, address, salary) VALUES ( ?, ?, ?)";
			$stmt = $conn->prepare($sql);
			//
			$name = $user->getName();
			$address = $user->getAddress();
			$salary = $user->getSalary();
			//điền dữ liệu vào ?
			$stmt->bindParam(1, $name, PDO::PARAM_STR);
			$stmt->bindParam(2, $address, PDO::PARAM_STR);
			$stmt->bindParam(3, $salary, PDO::PARAM_STR);
			//3. Xử lý kết quả (SELECT/INSERT-UPDATE-DELETE)
			if ($stmt->execute())
				return true;
		} catch (PDOException $e) {
			return false;
		}
	}
}
