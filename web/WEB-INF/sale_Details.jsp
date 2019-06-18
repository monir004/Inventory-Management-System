<%-- 
    Document   : history
    Created on : Apr 10, 2019, 11:05:19 PM
    Author     : Monir
--%>

<%@page import="db.OrderedItems"%>
<%@page import="db.Order"%>
<%@page import="db.Cart"%>
<%@page import="java.util.List"%>
<%@page import="db.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--<meta name="description" content="">-->
        <meta name="author" content="">

        <title>Inventory Management</title>

        <!-- Bootstrap core CSS -->
        <link href="/inventory/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- css -->
        <link href="/inventory/css/shop-homepage.css" rel="stylesheet">
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
    <body style="background-color:powderblue;">
        <!--------------------nav bar starts-------------------------------->
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
                            <a class="nav-link" href="SellProducts">Sell</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ProductList">Products</a>
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
                            <a class="nav-link" href="LogoutServlet">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!------------------------------nav bar ends here------------------------>



        <br><h1 align="center"> Order Lists </h1>

        <table id="customers">
            <tr align="center">
                <th class="text-center">Product name</th>
                <th class="text-center">Quantity</th>
                <th class="text-center">Price</th>
                <!--<th class="text-center">Total Amount</th>-->
                <!--<th></th>-->
            </tr>
            <%
                List<OrderedItems> orderedItems = (List<OrderedItems>) request.getAttribute("ordered_lists");
                for (int i = 0; i < orderedItems.size(); i++) {
                    OrderedItems order = orderedItems.get(i);
            %>
            <tr>
                <td align="center"> <%= order.getProduct_name()%> </td>
                <td align="center"> <%= order.getQuantity()%> </td>
                <td align="center"> <%= order.getPrice()%> </td>


                <%
                    }
                %>

        </table>  



        <!------------------------footer starts------------------------------------->
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
