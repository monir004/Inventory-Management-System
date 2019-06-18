<%-- 
    Document   : sell_products
    Created on : Apr 9, 2019, 9:44:36 PM
    Author     : Monir
--%>

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
        <%

            String customer = (String) session.getAttribute("customer");
            if (customer == null) {
                customer = "";
            }
        %>
        <form action="SellProducts" method="POST">
            Customer name <input type="text" name="customer" value=<%= customer%>> <br/>
            Product name
            <select name="product">
                <%
                    List<Product> products = (List<Product>) request.getAttribute("productList");
                    for (int i = 0; i < products.size(); i++) {
                        Product product = products.get(i);
                %>
                <option value="<%=product.getId()%>"><%=product.getName()%></option>
                <%
                    }
                %>
            </select>
            <br/>
            quantity <input type="text" name="quantity"> <br/>
            <input type="submit" name="Add" value="add">
            <br/>
            <!--//-------------------------- showing products -------------------------------------->
            <table style="border: solid">
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
                <%
                    List<Cart> cartItems = (List<Cart>) request.getAttribute("cartItems");
                    for (int i = 0; i < cartItems.size(); i++) {
                        Cart cart = cartItems.get(i);
                %>
                <tr>
                    <td> <%= cart.getName()%> </td>
                    <td> <%= cart.getQuantity()%> </td>
                    <td> <%= cart.getPrice()%> </td>


                </tr>
                <%
                    }
                %>


            </table>

            <br/> <h3>Total amount is ${total}</h3>
            <!--<h3> My name is request.getAttribute("name")</h3>-->
            <td> <a href="ClearProducts">  Clear</a></td>
            <td> <a href="SellItems">  Sell</a></td>
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
