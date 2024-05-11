<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce | Contact Us</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #fff;
            border-bottom: 1px solid #dee2e6;
        }
        .navbar-brand img {
            height: 40px;
            width: auto;
        }
        .overlay {
            background-image: linear-gradient( 135deg, #9f05ff69, #fd5e086b);
            text-align: center;
            padding: 50px 0;
            color: #fff;
            background-size: cover;
            background-attachment: fixed;
            position: relative;
            overflow: hidden;
            border-radius: 0 0 85% 85% / 30%;
        }
        h2 {
            font-family: 'Dancing Script', cursive;
            font-size: 40px;
            margin-bottom: 30px;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            max-width: 500px;
            margin: auto;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
        }
        textarea {
            width: 100%;
            height: 100px;
            resize: vertical;
        }
        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="../resources/Product images/logo.png" width="auto" height="40" alt="E-Commerce">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Shop</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Cart</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Profile</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<header>
    <div class="overlay">
        <h2>Fill this form for supplier</h2>
        <form action="index.jsp" method="POST">
            <div class="form-group">
                <label for="productName">Product Name:</label>
                <input type="text" id="productName" name="productName" class="form-control" placeholder="Enter product name">
            </div>
            <div class="form-group">
                <label for="contactNumber">Contact Number:</label>
                <input type="text" id="contactNumber" name="contactNumber" class="form-control" maxlength="10" placeholder="Enter contact number">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter email">
            </div>
            <div class="form-group">
                <label for="category">Category:</label>
                <input type="text" id="category" name="category" class="form-control" placeholder="Enter category">
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" name="description" class="form-control" placeholder="Enter description"></textarea>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Send Message</button>
        </form>
    </div>
</header>
</body>
</html>
