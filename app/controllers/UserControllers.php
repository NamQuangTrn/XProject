<?php
include "app/repositories/UserRepositories.php";
class UserControllers
{
	public function index()
	{
		//Lấy dữ liệu từ Model: 
		$userRepoObj = new UserRepositories();
		$users = $userRepoObj->getAllUsers();
		//Gọi ra View
		include("app/views/index.php");
	}

	public function add()
	{
		//Lấy các giá trị từ FORM
		if (isset($_POST['txtName'])) {
			$name  = $_POST['txtName'];
		}
		if (isset($_POST['txtAddress'])) {
			$address = $_POST['txtAddress'];
		}
		if (isset($_POST['txtSalary'])) {
			$salary  = $_POST['txtSalary'];
		}
		//Tạo và thiết lập đối tượng User
		$user = new User();
		$user->setName($name);
		$user->setAddress($address);
		$user->setSalary($salary);
		$userRepo = new UserRepositories();
		if ($userRepo->saveUser($user) == true) {
			header("Location:index.php?c=user&a=index&success=true");
		} else {
			header("Location:index.php?c=user&a=error&success=false");
		}
	}
}
