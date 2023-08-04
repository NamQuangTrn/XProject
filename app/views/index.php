<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<!-- Option 1: Include in HTML -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>

<body>
	<div class="container mt-5">
		<div class="container d-flex flex-row justify-content-between mt-5">
			<h1 class="text-primary">LIST OF EMPLOYEES</h1>
			<button class="btn btn-primary">
				<a href="app/views/add.php" class="text-light">Add new employees</a>
			</button>
		</div>
		<div class="container">
			<table class="table mt-5">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Name</th>
						<th scope="col">Address</th>
						<th scope="col">Salary</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<?php
					foreach ($users as $user) { ?>
						<tr>
							<th><?= $user->getId(); ?></th>
							<td><?= $user->getName(); ?></td>
							<td><?= $user->getAddress(); ?></td>
							<td><?= $user->getSalary(); ?></td>
							<td class="d-flex justify-content-between ">
								<a href="" class="me-3">
									<i class="bi bi-eye"></i>
								</a>
								<a href="">
									<i class="bi bi-pencil"></i>
								</a>
								<a href="">
									<i class="bi bi-bucket-fill"></i>
								</a>
							</td>
						</tr>
					<?php }
					?>
				</tbody>
			</table>
		</div>
	</div>
</body>

</html>