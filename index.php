<?php
$controller = isset($_GET['c']) ? $_GET['c'] : 'user'; //Nếu c tồn tại > Lấy giá trị c còn ko c=home
$action = isset($_GET['a']) ? $_GET['a'] : 'index'; ////Nếu a tồn tại > Lấy giá trị a còn ko c=index
//2. Gọi ra được cái tệp chứa định nghĩa Controller >>> Gọi hàm sẽ xử lý nhiệm vụ tiếp theo.
//home >>> HomeController.php
$controller = ucfirst($controller);
$controller = $controller . "Controllers";
$pathController = "app/controllers/" . $controller . ".php";

if (!file_exists($pathController)) {
	die('Yêu cầu Controller không tồn tại, vui lòng kiểm tra lại liên kết');
}
include($pathController);
$myController = new $controller();
$myController->$action();
