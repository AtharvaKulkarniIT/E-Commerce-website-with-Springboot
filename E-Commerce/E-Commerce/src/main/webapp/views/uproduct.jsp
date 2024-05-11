<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
        crossorigin="anonymous">

    <title>E-Commerce | Products</title>
    <style>
        .card-img-top {
            height: 275px;

            object-position: center;
        }
        .card {
            margin-bottom: 20px;
        }
        .navbar {
            margin-bottom: 20px;
        }
    </style>
</head>

<body class="bg-light">
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
           <div class="container-fluid">
               <a class="navbar-brand" href="#">
                   <img src="https://static.vecteezy.com/system/resources/thumbnails/000/538/499/small_2x/shopping_cart-01.jpg"
                   width="auto" height="40" class="d-inline-block align-top" alt="E-Commerce" />
                        <span class="navbar-text ml-2">E-Commerce</span>
               </a>
               <div class="navbar-nav">
                   <ul class="navbar-nav mr-auto">
                    <li> <form id="searchForm" class="form-inline">
                     <input class="form-control mr-sm-2 search-bar" type="search" placeholder="Search" aria-label="Search" id="searchInput">
                     <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                     </form>    </li>
                       <li class="nav-item active"><a class="nav-link" href="/index">Home Page</a></li>
                       <li class="nav-item active"><a class="nav-link" href="/logout">Logout</a></li>
                   </ul>

               </div>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                   <span class="navbar-toggler-icon"></span>
               </button>
           </div>
       </nav>


    <div class="container-fluid">
        <div class="row">
            <%
            try {
                String url = "jdbc:mysql://localhost:3306/springproject";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement stmt = con.createStatement();
                Statement stmt2 = con.createStatement();
                ResultSet rs = stmt.executeQuery("select * from products");

            %>
            <%
            while (rs.next()) {
            int productId = rs.getInt(1);
            int price = rs.getInt(6);

            %>
            <div class="col-md-4 mb-4">
                <div class="card">
                       <img src="<%= rs.getString(3) %>"  class="card-img-top" alt="Product Image">

                    <div class="card-body">
                        <h5 class="card-title"><%= rs.getString(2) %></h5>
                        <p class="card-text">Category:
                            <%
                                int categoryid = rs.getInt(4);
                                ResultSet rs2 = stmt2.executeQuery("select * from categories where categoryid = "+categoryid+";");
                                if(rs2.next())
                                {
                                    out.print(rs2.getString(2));
                                }
                            %>
                        </p>
                        <p class="card-text">Price: Rs <%= rs.getInt(6) %></p>
                        <p class="card-text">Description: <%= rs.getString(8) %></p>
                        <a href="/buy?price=<%= price %>&name=<%= rs.getString(2) %>" class="btn btn-info">Buy</a>
                    </div>

                </div>
            </div>
            <%
            }
            %>
            </div>
            <%
            } catch (Exception ex) {
            out.println("Exception Occurred:: " + ex.getMessage());
            }
            %>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous">
    </script>

    <script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous">
    </script>

    <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous">
    </script>

   <script>
       document.getElementById("searchForm").addEventListener("submit", function(event) {
           event.preventDefault();
           var searchQuery = document.getElementById("searchInput").value.trim().toLowerCase();
           var productCards = document.querySelectorAll(".col-md-4");

           for (var i = 0; i < productCards.length; i++) {
               var productName = productCards[i].querySelector(".card-title").innerText.trim().toLowerCase();
               if (productName.includes(searchQuery)) {
                   productCards[i].style.display = "";
               } else {
                   productCards[i].style.display = "none";
               }
           }
       });
   </script>

</body>
</html>
