<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?> 
 
<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript" src="http://services.webestools.com/menus-horizon/style-12.js?txt=register%3D.%252Fregister.php%0Alogin%3D.%252Flogin.php%0AANN%3D.%252fANN.html%0ASLM%3D.%252Fslm.html%0Acontact%2520us%3D.%252Fcontact.html%0A"></script>

    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
    <div class="page-header">
        <h1>Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to our Weather Camp.</h1> <h5> Below you can click the download data 
		button to download the Data generated from the Arduino uno and BME280 in a room for 24 hours.</h5>
    </div>
    <p>
        <a href="reset-password.php" class="btn btn-warning">Reset Your Password</a>
        <a href="logout.php" class="btn btn-danger">Sign Out of Your Account</a>
		<br>
		<br>
		<br>
	<!-- Data download link -->
	
		<a href="./data/Bme280.csv" class="btn btn-warning">download data </a>
    </p>
</body>
</html>