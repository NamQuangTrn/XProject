<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Add</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<!-- Option 1: Include in HTML -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>

<body>
	<div class="container mt-5">
		<h1 class="mt-5 text-primary">Add</h1>
		<form class="container mt-5" method="post" action="app/controllers/UserControllers.php">
			<div class="mb-3">
				<input type="text" class="form-control" name="txtName" placeholder="Name">
			</div>
			<div class="mb-3">
				<input type="text" class="form-control" name="txtAddress" placeholder="Address">
			</div>
			<div class="mb-3">
				<input type="text" class="form-control" name="txtSalary" placeholder="Salary">
			</div>
			<button type="submit" class="btn btn-primary">Save</button>
		</form>
	</div>
</body>

</html>