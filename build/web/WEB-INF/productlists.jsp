<%-- 
    Document   : productlists
    Created on : Apr 8, 2019, 9:58:42 PM
    Author     : sakib
--%>

<%@page import="java.util.List"%>
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
        <title>JSP Page</title>
        <style>
            #customers {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #customers tr:nth-child(even){background-color: #f2f2f2;}

            #customers tr:hover {background-color: #ddd;}

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <!----------------------nav bar---------------------------->
    <body>
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

        <!------------------------------------------->
        <br><h1 align="center"> Product Lists </h1>

        <table id="customers">
            <tr align="center">
                <th class="text-center">Name</th>
                <th class="text-center">Price</th>
                <th class="text-center">Stock</th>
                <th></th>
            </tr>
            <%
                List<Product> products = (List<Product>) request.getAttribute("productList");
                for (int i = 0; i < products.size(); i++) {
                    Product product = products.get(i);
            %>
            <tr>
                <td align="center"> <%= product.getName()%> </td>
                <td align="center"> <%= product.getPrice()%> </td>
                <td align="center"> <%= product.getStock()%> </td>
                <td align="center"> <a href= "<%= "ProductUpdate?id=" + product.getId()%>" class="btn btn-success"> Update</a>
                    &nbsp;&nbsp;&nbsp;<a href="ProductAdd" class="btn btn-success">Add Product</a>
                </td>
            </tr>
            <%
                }
            %>

        </table>  

        

        <!-- Footer -->
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
