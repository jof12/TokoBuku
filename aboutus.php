<!DOCTYPE html>
<html>
    <head>
	
	
	<title>About Us</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Sublime project">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
	<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
	<link rel="stylesheet" type="text/css" href="styles/responsive.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	 crossorigin="anonymous">
	<link href='images/logo.png' rel='SHORTCUT ICON' />
    
		
		<style>
		body {
		  background-image: url("https://image.freepik.com/free-vector/beautiful-mandala-style-background-with-text-space_1017-27397.jpg");

		}
		.heading{
			text-transform: uppercase;
			font-size: 3.5rem;
			letter-spacing: 3px;
			margin-bottom: 8rem;
			margin-top: 12rem;
			text-align: center;
			color: #333;
			position: relative;
		}

		.footer {
			position: fixed;
			left: 0;
			bottom: 0;
			width: 100%;
			font-family: arial;
			background-color: blue;
			color: white;
			text-align: center;
		}

		html {
			font-size: 10px;
			font-family: "Roboto", sans-serif;
		}
		
		div.border{
			margin: 10px;
			border: 1px solid #a56;
			float: left;
			width: 180px;
			height: 180px;
		}
		.card-wrapper{
			display: flex;
			align-items: center;
			align-content: center;
			flex-direction: row;
			justify-content: center;
		}

		.card{
			width: 32rem;
			background-color: #ebeef8;
			display: flex;
			flex-direction: column;
			align-items: center;
			margin: 6rem 2rem;
			box-shadow: .5rem .5rem 3rem rgba(0, 0, 0, 0.2);
		}

		.card .profil-img{
			width: 15rem;
			height: 15rem;
			object-fit: cover;
			border-radius: 50%;
			margin-top: -10rem;
			z-index: 999;
			border: 1rem solid #ebeef8;
		}

		.card h1{
			font-size: 2.5rem;
			color:#333;
			margin: 1.5rem 0;

		}
		.job-title{
			color: #777;
			font-size: 1.5rem;
			font-weight: 300;
		}

		.about{
			font-size: 1.5rem;
			margin: 1.5rem 0;
			font-style: italic;
			text-align: center;
			color: #333;
		}
		
		</style>

    </head>
    <?php 
include 'helper/connection.php';
session_start(); 

$id_customer = $_SESSION['id_customer'];
$query = "SELECT * from customer where id_customer = '$id_customer'";

$result = mysqli_query($con, $query);
$row = mysqli_fetch_assoc($result);

$nama = $row['nama_customer'];

?>
    <body>
	<header class="header">
			<div class="header_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="header_content d-flex flex-row align-items-center justify-content-start">
								<div class="logo"><a href="index.php">RISE Store</a></div>
								<nav class="main_nav">
									<ul>
										<li ><a href="index.php">Home</a>
										<li class="hassubs">
											<a>Kategori</a>
											<ul>
												<?php
													$query = 
													"SELECT * from kategori order by nama_kategori";
													
													$result = mysqli_query($con, $query);

													if (mysqli_num_rows($result) > 0)
													{
														$index = 1;

														while($row = mysqli_fetch_assoc($result))
														{
															$id_kategori = $row['id_kategori'];
															echo "
																<li><a href='categories.php?id_kategori=$id_kategori'>".$row['nama_kategori']."</a></li>
															";
														}
													}
												?>
											</ul>
										</li>
										<li class="active">
										<a href="aboutus.php">about us</a>
										</li>
										<?php if($id_customer != ""){ ?>
										<li>
										<a href="order.php">My Order</a>
										</li>
										<li>
										<a href="admin/process/logout.php">Logout</a>
										</li>
										<?php } 
										else{?>
											<li><a href="admin/index.php">Login</a>
											</li>
											<?php } ?>

									</ul>
								</nav>
								<div class="header_extra ml-auto">
									<div class="shopping_cart">
										<a href="cart.php">
											<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
											 viewBox="0 0 489 489" style="enable-background:new 0 0 489 489;" xml:space="preserve">
												<g>
													<path d="M440.1,422.7l-28-315.3c-0.6-7-6.5-12.3-13.4-12.3h-57.6C340.3,42.5,297.3,0,244.5,0s-95.8,42.5-96.6,95.1H90.3
													c-7,0-12.8,5.3-13.4,12.3l-28,315.3c0,0.4-0.1,0.8-0.1,1.2c0,35.9,32.9,65.1,73.4,65.1h244.6c40.5,0,73.4-29.2,73.4-65.1
													C440.2,423.5,440.2,423.1,440.1,422.7z M244.5,27c37.9,0,68.8,30.4,69.6,68.1H174.9C175.7,57.4,206.6,27,244.5,27z M366.8,462
													H122.2c-25.4,0-46-16.8-46.4-37.5l26.8-302.3h45.2v41c0,7.5,6,13.5,13.5,13.5s13.5-6,13.5-13.5v-41h139.3v41
													c0,7.5,6,13.5,13.5,13.5s13.5-6,13.5-13.5v-41h45.2l26.9,302.3C412.8,445.2,392.1,462,366.8,462z" />
												</g>
											</svg>
											<div>Cart <span>(
													<?php if(isset($_SESSION["nomor"])){ echo $_SESSION["nomor"]; } else{ echo 0;} ?>)</span></div>
										</a>
									</div>


									<div class="hamburger"><i class="fa fa-bars" aria-hidden="true"></i></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="header_social">
				<nav class="main_nav">
					<ul>
						<?php if($id_customer == ""){ ?>
						<li><a href="admin/index.php">Login</a>
							<?php }  
						else 
						{?>
						<li class="hassubs">
							<a>Hi!
								<?php echo $nama ?></a>
							<ul>
								<li><a href="admin/process/logout.php">Logout</a></li>
							</ul>
						</li>
						<?php } ?>
					</ul>
				</nav>
			</div>
		</header>
	<h1 class="heading">Kelompok 2</h1>
	<div class ="card-wrapper">
	
		<div class="card">
				<img src="https://bucket-book-store.s3.amazonaws.com/profil/Daniel.jpg" 
				alt="nilo" class="profil-img">
				

				<h1>Daniel Sampe</h1>
				<h2>19021106080</h2>

				
				
			</div>
			<div class="card">
				<img src="https://bucket-book-store.s3.amazonaws.com/profil/jofrel.jpg" 
				alt="jof" class="profil-img">
				

				<h1>Jofrel Rembet</h1>
				<h2>19021106006</h2>

				
				
			</div>
			<div class="card">
				<img src="https://bucket-book-store.s3.amazonaws.com/profil/vinsen.jpg" 
				alt="incent" class="profil-img">
				

				<h1>Vincent Manemi</h1>
				<h2>19021106049</h2>

				
				
			</div>
        <div class="card">
		
            <img src="https://bucket-book-store.s3.amazonaws.com/profil/deva.JPG" 
			alt="deva" class="profil-img">
            
            <h1>Suwira Deva</h1>
            <h2>19021106073</h2>
            
			
			</div>
        
		<div class ="footer" >
			<p>Kelompok 2</p>
			</div>
	</div>		
    </body>
</html>