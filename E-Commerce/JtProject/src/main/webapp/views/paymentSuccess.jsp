<!DOCTYPE html>
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
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
        <link rel="icon" type="image/jpg" href="https://static.vecteezy.com/system/resources/thumbnails/000/538/499/small_2x/shopping_cart-01.jpg"> <!-- favicon -->
<title>E-Commerce | PaymentSuccess</title>
    <style>
        .navbar-brand img {
            height: 30px; /* Adjust the height of the logo */
        }

        .navbar-brand .navbar-text {
            line-height: 30px; /* Adjust the line height to vertically center the text with the logo */
        }

        .navbar-nav .nav-link {
            padding-top: 5px; /* Adjust the top padding of the links */
            padding-bottom: 5px; /* Adjust the bottom padding of the links */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="https://static.vecteezy.com/system/resources/thumbnails/000/538/499/small_2x/shopping_cart-01.jpg"
                 width="auto" height="40" class="d-inline-block align-top" alt="E-Commerce"/>
            <span class="navbar-text ml-2">E-Commerce</span>
        </a>
        <div class="navbar-nav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active"><a class="nav-link" href="/index">Home</a></li>
                <li class="nav-item active"><a class="nav-link" href="/logout">Logout</a></li>
            </ul>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>

<div class="bg-gray-100 min-h-screen flex items-center justify-center">
    <div class="bg-white p-6 rounded-md shadow-md md:max-w-md mx-auto">
        <svg viewBox="0 0 24 24" class="text-green-600 w-16 h-16 mx-auto my-6">
            <path fill="currentColor"
                  d="M12,0A12,12,0,1,0,24,12,12.014,12.014,0,0,0,12,0Zm6.927,8.2-6.845,9.289a1.011,1.011,0,0,1-1.43.188L5.764,13.769a1,1,0,1,1,1.25-1.562l4.076,3.261,6.227-8.451A1,1,0,1,1,18.927,8.2Z">
            </path>
        </svg>
        <div class="text-center">
            <h3 class="text-2xl text-gray-900 font-semibold">Payment Done!</h3>
            <p class="text-gray-600 my-2">Thank you for completing your secure card payment.</p>
            <div class="py-10 text-center">
                <a href="/user/products"
                   class="px-12 bg-indigo-600 hover:bg-indigo-500 text-white font-semibold py-3 rounded-md inline-block">
                    Continue Shopping
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
