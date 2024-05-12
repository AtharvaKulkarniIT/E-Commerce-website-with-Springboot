<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
                  <link rel="icon" type="image/jpg" href="https://static.vecteezy.com/system/resources/thumbnails/000/538/499/small_2x/shopping_cart-01.jpg"> <!-- favicon -->

    <title>E-Commerce | AdminLogin</title>
</head>
<body class="bg-dark">



<div class="container my-5" style="width: 1800px;" ><br>
    
        <div class="jumbotron border col-sm-5 mx-auto">
            <h2 class="text-center">Admin Login</h2><br>
            <form action="loginvalidate" method="post">
                <div class="form-group">
                    <label for="username">Username :</label>
                    <input type="text" name="username" id="username" placeholder="Admin username" required class="form-control form-control-lg border border-danger">
                </div>
					
                <div class="form-group">
                    <label for="password">Password :</label>
                    <input type="password" class="form-control form-control-lg border border-danger	" placeholder="Admin Password" required name="password" id="password">
                </div><br>

                <input type="submit" value="Login" class="btn btn-primary btn-block">
                <br>
                <h3 style="color:red;">${message }</h3>
                <br>
        </div>

</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>