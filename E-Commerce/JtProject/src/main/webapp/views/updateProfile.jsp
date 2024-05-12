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

    <title>E-Commerce | Update Profile</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
           <div class="container-fluid">
               <a class="navbar-brand" href="#">
                   <img src="https://static.vecteezy.com/system/resources/thumbnails/000/538/499/small_2x/shopping_cart-01.jpg"
                   width="auto" height="40" class="d-inline-block align-top" alt="E-Commerce" />
                        <span class="navbar-text ml-2">E-Commerce</span>
               </a>
               <div class="navbar-nav">
                   <ul class="navbar-nav mr-auto">

                       <li class="nav-item active"><a class="nav-link" href="/index">Home</a></li>
                       <li class="nav-item active"><a class="nav-link" href="/logout">Logout</a></li>
                   </ul>

               </div>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                   <span class="navbar-toggler-icon"></span>
               </button>
           </div>
       </nav>


<br>
<div class="container">
    <div class="d-flex justify-content-center">
        <div class="col-sm-6">
            <h3 style="margin-top: 10px">User Profile</h3>
            <br>
            <form action="updateuser" method="post" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="firstName">User Name</label>
                    <input type="hidden" name="userid" value="${username}">
                    <input type="text" name="username" id="firstName" required placeholder="Your Username*" value="${username}" required class="form-control form-control-lg">
                </div>
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control form-control-lg" required minlength="6" placeholder="Email*" value="${email}" required name="email" id="email"
                           aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                        anyone else</small>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control form-control-lg" required placeholder="Password*" value="${password}" required name="password"
                           id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[~`!@#$%\^&*()\-_=+[\]{};:\x27.,\x22\\|/?><]).{8,}"
                           title="Must contain: at least one number, one uppercase letter, one lowercase letter,
                           one special character, and 8 or more characters" required>
                    <input type="checkbox" onclick="showPassword()">Show Password
                </div>
                <div class="form-group">
                    <label for="Address">Address</label>
                    <textarea class="form-control form-control-lg" rows="3" placeholder="Enter Your Address" name="address" id="address">${address}</textarea>
                </div>

                <input type="submit" value="Update Profile" class="btn btn-primary btn-block"><br>

            </form>
        </div>
    </div>
</div>

<script>
    function showPassword() {
        var x = document.getElementById("password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }

    function validateForm() {
        var username = document.getElementById("firstName").value;
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var address = document.getElementById("address").value;

        // Check if any of the fields have changed
        if (username.trim() === "${username}" && email.trim() === "${email}" && password.trim() === "${password}" && address.trim() === "${address}") {
            // No changes made, prevent form submission
            alert("No changes made to the profile.");
            return false;
        }
        return true;
    }
</script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
