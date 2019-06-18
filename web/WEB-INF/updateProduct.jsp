<%-- 
    Document   : updateProduct
    Created on : Apr 8, 2019, 11:28:09 PM
    Author     : sakib
--%>

<%@page import="db.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Bootstrap core CSS -->
        <link href="/inventory/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- css -->
        <link href="/inventory/css/shop-homepage.css" rel="stylesheet">
    </head>


    <body style="background-color:powderblue;">
        <!--------------------nav bar stars----------------------->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">Inventory Management</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="HomePage">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sell</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Products</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sell Details</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">History</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-------------------nav bar ends------------------------>

        <% Product product = (Product) request.getAttribute("product");%>

        <form action="ProductUpdate" method="POST">
            <input type="hidden" name="id" value="<%= product.getId()%>"> <br/>
            name <input type="text" name="name" value="<%= product.getName()%>"> <br/>
            price <input type="text" name="price" value="<%= product.getPrice()%>"> <br/>
            stock <input type="text" name="stock" value="<%= product.getStock()%>"> <br/>

            <input type="submit" name="submit" value="update">
        </form>

        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Inventory Management 2019</p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>   
    </body>
</html>
