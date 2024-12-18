<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopping</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=account_circle" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Custom Styles */
.nav-pills .nav-link {
	border-radius: 0;
	padding: 15px 20px;
	font-size: 16px;
}

.nav-pills .nav-link:hover {
	background-color: #007bff;
	color: #fff;
}

.nav-pills .nav-link.active {
	background-color: #28a745;
	color: #fff;
}

.navbar {
	padding: 10px 20px;
	background-color: #f8f9fa;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
}

.navbar .form-control {
	max-width: 300px;
}

.profile-link {
	display: flex;
	align-items: center;
	text-decoration: none;
	color: inherit;
}

.profile-link:hover {
	color: #007bff;
}

.material-symbols-outlined {
	font-size: 40px;
	margin-right: 10px;
}

.nav {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 100%;
}

.sidebar {
	background-color: #f1f1f1;
	padding: 20px;
	margin-top: 20px;
	border-radius: 8px;
}

.sidebar h5 {
	font-size: 18px;
	margin-bottom: 20px;
}

.sidebar .form-check {
	margin-bottom: 10px;
}

.content {
	padding-left: 20px;
}

.container-fluid {
	display: flex;
	justify-content: space-between;
}

.products {
	flex: 1;
	padding: 20px;
}

.filters {
	width: 250px;
}

.card-img-top {
	width: 100%;
	height: 200px;
	object-fit: cover;
	border-radius: 8px;
}

.card-body {
	padding: 15px;
}

.card-title {
	font-size: 18px;
	font-weight: bold;
}

.card-text {
	font-size: 16px;
	color: #555;
}

.btn {
	font-size: 14px;
	padding: 8px 15px;
	border-radius: 4px;
}

.stars {
	color: gold;
}

@media (max-width: 768px) {
	.nav-pills {
		flex-direction: column;
		align-items: flex-start;
	}
	.navbar .form-control {
		width: 100%;
		margin-top: 10px;
	}
	.profile-link {
		margin-top: 10px;
	}
	.container-fluid {
		flex-direction: column;
	}
	.filters {
		width: 100%;
	}
}

.category-container {
	display: flex;
	justify-content: space-around;
	padding: 20px;
}

.category {
	text-align: center;
}

.category img {
	width: 100px; 
	height: 100px; 
	object-fit: cover;
	border-radius: 50%; 
	transition: transform 0.3s ease;
}

.category img:hover {
	transform: scale(1.1); 
}

.category h5 {
	margin-top: 10px;
	font-size: 16px;
}

.category-container {
	margin-top: 20px;
}
</style>
</head>
<body>

	<div class="mydiv nav">
		<div>
			<nav class="nav nav-pills nav-fill d-flex justify-content-between w-100">
				<a href="home" class="nav-link ">Home</a> <a href="shopping" class="nav-link active">Shopping</a> 
				<a href="music" class="nav-link">Music</a> <a href="reels" class="nav-link">Reels</a> 
				<a href="#" class="nav-link">About</a> <a href="#" class="nav-link">Contact</a>

				<!-- Search Form -->
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
				<a href="viewProfile?email=${email}" class="nav-link profile-link" id="profileLink"> 
					<span class="material-symbols-outlined">account_circle</span> Profile
				</a>
			</nav>
		</div>
	</div>

	<div class="category-container">
		<div class="category">
			<a href="#"><img alt="Mobiles" src="https://tse4.mm.bing.net/th?id=OIP.ypuk2Ks72rS-19qeU1Bk8AHaEK&pid=Api&P=0&h=180" width="100px"></a>
			<h5>Mobiles</h5>
		</div>
		<div class="category">
			<a href="#"><img alt="Electronics" src="https://jdcorporateblog.com/wp-content/uploads/2020/09/Home-Electronics.jpg" width="100px"></a>
			<h5>Electronics</h5>
		</div>
		<div class="category">
			<a href="#"><img alt="Mens" src="https://tse2.mm.bing.net/th?id=OIP.8RbTx_4tsHAgJ33DroHxmAHaHY&pid=Api&P=0&h=180" width="100px"></a>
			<h5>Mens</h5>			
		</div>
		<div class="category">
			<a href="#"><img alt="Footwears" src="https://tse1.mm.bing.net/th?id=OIP.jrn3LhWV1YOxc1FWYvpo2QHaEK&pid=Api&P=0&h=180" width="100px"></a>
			<h5>Footwears</h5>
		</div>
		<div class="category">
			<a href="#"><img alt="Kids" src="https://tse4.mm.bing.net/th?id=OIP.roBXkv0iJk9-YO9Lww5pQgHaE7&pid=Api&P=0&h=180" width="100px"></a>
			<h5>Kids</h5>
		</div>
		<div class="category">
			<a href="#"><img alt="Home Appliances" src="https://tse2.mm.bing.net/th?id=OIP.D3oy-NSvkN6tJpYAszZujwHaDk&pid=Api&P=0&h=180" width="100px"></a>
			<h5>Home Appliances</h5>
		</div>
		<div class="category">
			<a href="#"><img alt="Beauty" src="https://tse4.mm.bing.net/th?id=OIP.I8UrgvPmNZFlXuIoDRoPtAHaE8&pid=Api&P=0&h=180" width="100px"></a>
			<h5>Beauty</h5>
		</div>
		<div class="category">
			<a href="#"><img alt="Books" src="https://tse2.mm.bing.net/th?id=OIP.Z78dh2qAZBWePOjRfwbIkwHaE7&pid=Api&P=0&h=180" width="100px"></a>
			<h5>Books</h5>
		</div>
	</div>

	<div class="container-fluid">
		<div class="filters sidebar">
			<h5>Filter Options</h5>
			<!-- Category Filter -->
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="electronics" id="electronics"> 
				<label class="form-check-label" for="electronics">Electronics</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="clothing" id="clothing"> 
				<label class="form-check-label" for="clothing">Clothing</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="accessories" id="accessories"> 
				<label class="form-check-label" for="accessories">Accessories</label>
			</div>

			<!-- Price Range Filter -->
			<h5>Price Range</h5>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="price" value="low" id="lowPrice"> 
				<label class="form-check-label" for="lowPrice">Under $50</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="price" value="medium" id="mediumPrice"> 
				<label class="form-check-label" for="mediumPrice">$50 - $100</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="price" value="high" id="highPrice"> 
				<label class="form-check-label" for="highPrice">Above $100</label>
			</div>

			<!-- Ratings Filter -->
			<h5>Ratings</h5>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="rating" value="4" id="rating4"> 
				<label class="form-check-label" for="rating4">4 Stars & Up</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="rating" value="3" id="rating3"> 
				<label class="form-check-label" for="rating3">3 Stars & Up</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="rating" value="2" id="rating2"> 
				<label class="form-check-label" for="rating2">2 Stars & Up</label>
			</div>

			<!-- Additional Filters -->
			<h5>Brand</h5>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="samsung" id="samsung"> 
				<label class="form-check-label" for="samsung">Samsung</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="apple" id="apple"> 
				<label class="form-check-label" for="apple">Apple</label>
			</div>
			
			<h5>Color</h5>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="black" id="black"> 
				<label class="form-check-label" for="black">Black</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="white" id="white"> 
				<label class="form-check-label" for="white">White</label>
			</div>
		</div>

		<div class="products">
			<div class="row">
				<div class="col-md-4">
					<div class="card">
						<img src="https://via.placeholder.com/150" class="card-img-top" alt="Product Image">
						<div class="card-body">
							<h5 class="card-title">Product 1</h5>
							<p class="card-text">$49.99</p>
							<div class="stars">★★★★☆</div>
							<a href="#" class="btn btn-primary">Add to Cart</a>&nbsp;&nbsp;<a href="#" class="btn btn-warning">Buy</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<img src="https://via.placeholder.com/150" class="card-img-top" alt="Product Image">
						<div class="card-body">
							<h5 class="card-title">Product 2</h5>
							<p class="card-text">$89.99</p>
							<div class="stars">★★★☆☆</div>
							<a href="#" class="btn btn-primary">Add to Cart</a>&nbsp;&nbsp;<a href="#" class="btn btn-warning">Buy</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<img src="https://via.placeholder.com/150" class="card-img-top" alt="Product Image">
						<div class="card-body">
							<h5 class="card-title">Product 3</h5>
							<p class="card-text">$120.00</p>
							<div class="stars">★★★★★</div>
							<a href="#" class="btn btn-primary">Add to Cart</a>&nbsp;&nbsp;<a href="#" class="btn btn-warning">Buy</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
