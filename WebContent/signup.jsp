<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Yellow Container : Sing Up</title>
</head>
<!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">
<!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="css/style.css">
<style>
	input[type=submit]{
	  display: inline-block;
	  width: 710px;
	  height: 55px;
	  color: #ffffff;
	  background-color: #fbb710;
	  border: none;
	  padding: 0 7px;
	  font-size: 18px;
	  font-weight: 400;
	}input[type='radio'] {
	  -webkit-appearance:none;
	  width:16px;
	  height:16px;
	  border:1px solid darkgray;
	  border-radius:50%;
	  outline:none;
	  background:#e6e6e6;
	  vertical-align:-3px;
	  margin-left:15px;
	}
	input[type='radio']:before {
	  content:'';
	  display:block;
	  width:60%;
	  height:60%;
	  margin: 20% auto;   
	  border-radius:50%;   
	}
	input[type='radio']:checked:before {
	  background:#008675;
	}
	label {font-size: 14px;
  color: #6b6b6b;}
</style>
<body>

    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">

        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand">
                <a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
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
                <a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                  <li><a href="index.html">HOME</a></li>
                  <li><a href="admin.jsp">ADMIN</a></li>
                  <li><a href="buying.jsp">BUYING</a></li>
                  <li><a href="carrier.jsp">CARRIER</a></li>
                  <li class="active"><a href="signup.jsp">SIGN UP</a></li>

                </ul>
            </nav>

            <!-- Cart Menu
            <div class="cart-fav-search mb-100">
                <a href="cart.html" class="cart-nav"><img src="img/core-img/cart.png" alt=""> Cart <span>(0)</span></a>
                <a href="#" class="fav-nav"><img src="img/core-img/favorites.png" alt=""> Favourite</a>
                <a href="#" class="search-nav"><img src="img/core-img/search.png" alt=""> Search</a>
            </div> -->
            <!-- Social Button
            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div> -->
        </header>
        <!-- Header Area End -->

	<div class="cart-table-area section-padding-100">
    	<div class="container-fluid">
        	<div class="row">
            	<div class="col-12 col-lg-8">
                	<div class="checkout_details_area mt-50 clearfix">
                    	<div class="cart-title">
                        	<h2>Sign Up</h2>
                        </div>

                        <form name="Signupform" action="/project02/memberProcServlet?action=signup" method="post">
                        	<div class="row" >
                            	<div class="col-12 mb-3">
                                 	<input type="text" class="form-control" name="m_id" value="" placeholder="ID">
                                </div><br>
                                <div class="col-12 mb-3">
                                	<input type="password" class="form-control" name="m_password" value="" placeholder="PASSWORD" >
                                </div>
                                <div class="col-12 mb-3">
                                	<input type="text" class="form-control" name="m_name" placeholder="COMPANY NAME" value="">
                                </div>
                                <div class="col-12 mb-3">
                                	<input type="text" class="form-control" name="m_tel" placeholder="PHONE NO" value="">
                                </div>

                                <div class="col-12">
                                	<table>
                                		<tr>
                                			<th><label>분    류</label></th>
                                			<td><label><input type="radio" name="m_job" value="1" >&nbsp;구매처</label></td>
                                			<td><label><input type="radio" name="m_job" value="2" >&nbsp;운송회사</label></td>
                                		</tr>
                                		<tr>
                                			<th><label>구매처 선택 - 거래 항목</label></th>
                                		</tr>
                                		<tr>
                                			<td><label><input type="radio" name="m_field" value="A" >&nbsp;의자</label></td>
                                			<td><label><input type="radio" name="m_field" value="B" >&nbsp;침대</label></td>
                                			<td><label><input type="radio" name="m_field" value="C" >&nbsp;테이블</label></td>
                                			<td><label><input type="radio" name="m_field" value="D" >&nbsp;수납장</label></td>
                                			<td><label><input type="radio" name="m_field" value="E" >&nbsp;조명/리빙</label></td>
                                		</tr>
                                		<tr>
                                			<th><label>운송회사 선택 - 운송 지역</label></th>
                                		</tr>
                                		<tr>
                                			<td><label><input type="radio" name="m_field" value="서울경기" >&nbsp;경기권</label></td>
                                			<td><label><input type="radio" name="m_field" value="대전세종충청" >&nbsp;충청권</label></td>
                                			<td><label><input type="radio" name="m_field" value="광주전라" >&nbsp;전라권</label></td>
                                			<td><label><input type="radio" name="m_field" value="부산대구울산경상" >&nbsp;경상권</label></td>
                                			<td><label><input type="radio" name="m_field" value="강원" >&nbsp;강원도</label></td>
                                		</tr>
                                	</table>
                                
                               </div>
                            </div>
                            <div class="mt-70">
                            	<input onMouseover="this.style.background='#333333';" onMouseout="this.style.background='#fbb710';" type="submit" value="Sing Up" name="B1">
                           	</div>
                        </form>
                   	</div>
                </div>
            </div>
        </div>
   	</div>
   	</div>
   	<!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
        <div class="container">
            <div class="row align-items-center">
                <!-- Single Widget Area -->
                <div class="col-12 col-lg-4">
                    <div class="single_widget_area">
                        <!-- Logo -->
                        <div class="footer-logo mr-50">
                            <a href="index.html"><img src="img/core-img/logo2.png" alt=""></a>
                        </div>
                        <!-- Copywrite Text -->
                        <p class="copywrite"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> & Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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
                                            <a class="nav-link" href="index.html">HOME</a>
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