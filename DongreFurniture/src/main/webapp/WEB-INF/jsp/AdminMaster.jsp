<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Panel | GuruDatta Furniture</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0 minimum-scale=1.0 ">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/AdmStyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- Favicons -->
<!-- <link href="assets/img/favicon.png" rel="icon">
 		<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

</head>

<body>

	<nav class="navbar-nav navbar-expand-sm form-inline">
		<div class="logo form-inline">
			<a class="navbar navbar-brand text-warning mx-auto" href="#">GuruDatta</a>
		</div>

		<button class="navbar-toggler ml-auto" type="button"
			data-toggle="collapse" data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"> <i class="fa fa-bars"
				style="color: coral; font-size: 25px;"></i></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<ul class="nav-links">
				<li class="dashboard mx-auto"><a href=""><i
						class="fa fa-tachometer mr-3" aria-hidden="true"></i>Dashboard</a></li>

				<li><a class="nav-link active" href="#"><i
						class="fa fa-fw fa-home"></i> Home</a></li>
				<li><a class="nav-link dropdown-toggle mr-2" href="#"
					id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"><i
						class="fa fa-user-circle mx-2"></i> My Profile</a>
					<div class="dropdown-menu " aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">View Profile</a> <a
							class="dropdown-item" href="#">Update Profile</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Log Out</a></li>
		</div>
		<!--<li class="search-container mr-1">
    		<form action="/action_page.php">
      			<input type="text" placeholder="Search.." name="search">
      			<button type="submit"><i class="fa fa-search" style="width: 30px;"></i></button>
    		</form>
  		</li>-->
		</ul>

	</nav>

	<!--	<nav>	
		<div class="logo">
			<a class="navbar navbar-brand text-warning mx-auto" style="font-family: Times New Roman; font-weight: 600;" href="#">GuruDatta</a>
		</div>

    	<div class="dashboard mx-auto">
			<a href=""><i class="fa fa-tachometer mr-3" aria-hidden="true"></i>Dashboard</a>
	  	</div>

		<ul class="nav-links">
    		<li><a class="active" href="#"><i class="fa fa-fw fa-home"></i> Home</a></li>
    	  	<li><a class="nav-item-dropdown" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-circle mx-2"></i> My Profile</a> 
       			<div class="dropdown-menu " style="background-color:#393939 " aria-labelledby="navbarDropdown">
	        		<a class="dropdown-item" href="#">View Profile</a>
	         		<a class="dropdown-item" href="#">Update Profile</a>
	         		<div class="dropdown-divider"></div>
	         		<a class="dropdown-item" href="#">Log Out</a>
       			</div>
       			</li>
    		<li class="search-container mr-1">
    			<form action="/action_page.php">
      				<input type="text" placeholder="Search.." name="search">
      				<button type="submit"><i class="fa fa-search" style="width: 30px;"></i></button>
    			</form>
  			</li>
    	</ul>
    	
	</nav> -->


	<div class="container-fluid">
		<div class="row">
			<div class="column1 col-lg-2 col-md-2 col-sm-12">
				<div id="accordion" class="collapse show">
					<button class="btn text-white active" data-toggle="collapse"
						data-target="#collapseOne" aria-expanded="false"
						aria-controls="collapseOne">
						<i class="fa fa-columns mr-3" aria-hidden="true"></i> Type Master
					</button>

					<ul id="collapseOne" class="collapse hide" data-parent="#accordion"
						style="list-style-type: none">
						<li><a href="MainType">New Type</a></li>
						<li><a href="viewrecord">View Type</a></li>
					</ul>

					<button class="btn text-white" type="button" data-toggle="collapse"
						data-target="#collapseTwo" aria-expanded="false"
						aria-controls="collapseTwo">
						<i class="fa fa-anchor mr-3" aria-hidden="true"></i>Sub Type
						Master
					</button>
					<ul id="collapseTwo" class="collapse hide" data-parent="#accordion"
						style="list-style-type: none">
						<li><a  href="addsubtype">Add SubType<i
								class="fa fa-angle-right ml-1" aria-hidden="true"></i></a></li>
						<li><a class="btn btn-sm ml-auto text-white mt-1"
							data-toggle="collapse" href="#" role="button"
							aria-expanded="false">View SubType <i
								class="fa fa-angle-right ml-1" aria-hidden="true"></i>
						</a></li>
					</ul>

					<button class="btn text-white" type="button" data-toggle="collapse"
						data-target="#collapseThree" aria-expanded="false"
						aria-controls="collapseThree">
						<i class="fa fa-industry mr-3" aria-hidden="true"></i>Company
						Master</i>
					</button>
					<ul id="collapseThree" class="collapse hide"
						data-parent="#accordion" style="list-style-type: none">
						<li><a class="btn btn-sm  ml-auto text-white mt-1"
							data-toggle="collapse" href="#" role="button"
							aria-expanded="false">New Company<i
								class="fa fa-angle-right ml-1" aria-hidden="true"></i></a></li>
						<li><a class="btn btn-sm  ml-auto text-white mt-1"
							data-toggle="collapse" href="#" role="button"
							aria-expanded="false">View Company<i
								class="fa fa-angle-right ml-1" aria-hidden="true"></i></a></li>
					</ul>

					<button class="btn text-white py-2" type="button"
						data-toggle="collapse" data-target="#collapseFour"
						aria-expanded="false" aria-controls="collapseFour">
						<i class="fa fa-product-hunt mr-3" aria-hidden="true"></i>Product
						Master
					</button>
					<ul id="collapseFour" class="collapse hide"
						data-parent="#accordion" style="list-style-type: none">
						<li><a class="btn btn-sm  ml-auto text-white mt-1"
							data-toggle="collapse" href="#" role="button"
							aria-expanded="false">Add Product<i
								class="fa fa-angle-right ml-1" aria-hidden="true"></i></a></li>
						<li><a class="btn btn-sm  ml-auto text-white mt-1"
							data-toggle="collapse" href="#" role="button"
							aria-expanded="false">View Product<i
								class="fa fa-angle-right ml-1" aria-hidden="true"></i></a></li>
					</ul>
				</div>
			</div>
</body>
</html>

