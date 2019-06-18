<%-- 
    Document   : homepage
    Created on : Apr 10, 2019, 10:24:25 PM
    Author     : Monir
--%>

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

        <!-- Navigation -->
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
                            <a class="nav-link" href="SaleDetails">Sell Details</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="History">History</a>
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

        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <div class="col-lg-3">

                    <h1 class="my-4">Welcome !</h1>
                   

                </div>
                <!-- /.col-lg-3 -->

                <div class="col-lg-9">

                    <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="img\Inventory.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="img\Inventory2.jpg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="img\Inventory3.jpg" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                    <div class="row">

                        <div class="col-lg-4 col-md-6 mb-4">
                            
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img\sub1.png" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Huawei Mate20 lite</a>
                                    </h4>
                                    <h5>$124.99</h5>
                                    <p class="card-text">The stunning visuals of the 6.3" FHD+ (2340 x 1080) FullView Display immerse you in moments of magic, while the sleek symmetrical rear cover rests comfortably in the palm of your hand.</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img\sub2.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Rolex</a>
                                    </h4>
                                    <h5>$5090.99</h5>
                                    <p class="card-text">Xplore the Rolex collection of prestigious, high-precision timepieces. Rolex offers a wide assortment of Classic and Professional watch models to suit any wrist.</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img\sub3.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Samsung S10</a>
                                    </h4>
                                    <h5>$999</h5>
                                    <p class="card-text">After 10 years of mobile pioneering firsts, it's time to meet our latest and greatest innovation yet.

Introducing the Galaxy S10. The next generation has arrived.</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img\sub4.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Pocophone</a>
                                    </h4>
                                    <h5>$385.99</h5>
                                    <p class="card-text">The Pocophone F1 runs on a Snapdragon 845 (10 nm) processor. It has Adreno 630 to handle graphics. It features a 6.18" IPS LCD capacitive touchscreen screen with an aspect ratio of 18.7:9 and a resolution of 1080 x 2246 pixels. The display also has a wide notch at the top. There is also the Gorilla Glass.</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img\sub5.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Xiaomi Note7 Pro</a>
                                    </h4>
                                    <h5>$279.99</h5>
                                    <p class="card-text">The Redmi Note 7 Pro is the most refreshing Redmi Note upgrade till date. it has something for everyone. A good camera, best in class performance, impressive battery life and a new design. Xiaomi, once again, raises the bar for the entire segment.The more pixels, the clearer the picture.</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="img\sub6.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">MacBook Au8200</a>
                                    </h4>
                                    <h5>$500.99</h5>
                                    <p class="card-text">The MacBook features many firsts from Apple, using a butterfly mechanism keyboard, the Force Touch trackpad, and a USB Type-C port.[1] This lack of Type-A USB ports ubiquitous among modern PCs means it requires a physical adapter to attach almost any 3rd-party peripheral on release.</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.col-lg-9 -->

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

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

