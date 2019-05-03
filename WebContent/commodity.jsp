<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*, java.util.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Yellow Container : commodity </title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">

  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
  <!--===============================================================================================-->

</head>

<body>
    <!-- Search Wrapper Area Start -->
    <div class="search-wrapper section-padding-100">
        <div class="search-close">
            <i class="fa fa-close" aria-hidden="true"></i>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-content">
                        <form action="#" method="get">
                            <input type="search" name="search" id="search" placeholder="Type your keyword...">
                            <button type="submit"><img src="img/core-img/search.png" alt=""></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Wrapper Area End -->

    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">

        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand">
                <a href="index.jsp"><img src="img/core-img/logo.png" alt=""></a>
                <div style="text-align:center">
	                ${memberName}
					<a href="/project02/memberProcServlet?action=logout">로그아웃</a>
				</div>
            </div>
            <!-- Navbar Toggler -->
            <div class="amado-navbar-toggler">
                <span></span><span></span><span></span>
            </div>
        </div>

        <!-- Header Area Start -->
        <header class="header-area clearfix">
            <!-- Close Icon -->
            <div class="nav-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <!-- Logo -->
            <div class="logo">
                <a href="index.jsp"><img src="img/core-img/logo.png" alt=""></a>
                <div style="text-align:center">
	                ${memberName}
					<a href="/project02/memberProcServlet?action=logout">로그아웃</a>
				</div>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                	<li><a href="index.jsp">HOME</a></li>
                    <li class="active"><a href="commodity.jsp">재고내역</a></li>
                    <li><a href="order.jsp">주문내역</a></li>
                    <li><a href="sales.jsp">판매내역</a></li>
                    <li><a href="#">발주내역</a></li>
                    <li><a href="#">운송내역</a></li>
                    <li><a href="#">매출 총 이익</a></li>
            </nav>


        </header>
        <!-- Header Area End -->

        <div class="shop_sidebar_area">

            <!-- ##### Single Widget ##### -->
            <div class="widget catagory mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">관리자</h6>

                <!--  Catagories  -->
                <div class="catagories-menu">
                    <ul>
                        <li class="active"><a href="commodity.jsp">재고내역</a></li>
                        <li><a href="order.jsp">주문내역</a></li>
                        <li><a href="sales.jsp">판매내역</a></li>
                        <li><a href="#">발주내역</a></li>
                        <li><a href="#">운송내역</a></li>
                        <li><a href="#">매출총이익</a></li>
                    </ul>
                </div>
            </div>

            </div>


          <div class="amado_product_area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <!-- Single Product Area -->
                    <div class="col-12 col-sm-6 col-md-12 col-xl-15">
                        <div class="single-product-wrapper">
                            <!-- Product Image -->
                            <div>
                              <div>
                                <div style="margin-left: -10px; margin-right: 160px;">
                                  <table class="table table-hover">
                                          <thead>
                                              <tr>
                                                  <th>물품id</th>
                                                  <th>물품명</th>
                                                  <th>가격</th>
                                                  <th>수량</th>
                                              </tr>
                                          </thead>
                                          <tbody>
                                              <tr>
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                              </tr>
                                              <tr>
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                              </tr>
                                              <tr>
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                              </tr>
                                              <tr class="success">
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                              </tr>
                                              <tr class="danger">
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                              </tr>
                                          </tbody>
                                      </table>
                                  </div>
                                </div>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>

    <!-- ##### Main Content Wrapper End ##### -->



    <!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
        <div class="container">
            <div class="row align-items-center">
                <!-- Single Widget Area -->
                <div class="col-12 col-lg-4">
                    <div class="single_widget_area">
                        <!-- Logo -->
                        <div class="footer-logo mr-50">
                            <a href="index.jsp"><img src="img/core-img/logo2.png" alt=""></a>
                        </div>
                        <!-- Copywrite Text -->
                        <p class="copywrite"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> & Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
                <!-- Single Widget Area -->
                <div class="col-12 col-lg-8">
                    <div class="single_widget_area">
                        <!-- Footer Menu -->
                        <div class="footer_menu">
                            <nav class="navbar navbar-expand-lg justify-content-end">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent" aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                                <div class="collapse navbar-collapse" id="footerNavContent">
                                    <ul class="navbar-nav ml-auto">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.jsp">HOME</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="admin.jsp">ADMIN</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="buying.jsp">BUYING</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="carrier.jsp">CARRIER</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="signup.jsp">SIGN UP</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

    <!--===============================================================================================-->
    	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    	<script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    	<script src="vendor/bootstrap/js/popper.js"></script>
    	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    	<script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    	<script src="vendor/daterangepicker/moment.min.js"></script>
    	<script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    	<script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    	<script src="js/main.js"></script>

    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>