<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*, member.*, product.*, waybill.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Yellow Container : Buying</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<style>
/*/[발주버튼]*/
.myButton {
	background-color: #fbb810;
	-moz-border-radius: 42px;
	-webkit-border-radius: 42px;
	border-radius: 42px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 10px 20px;
	text-decoration: none;
}

.myButton:hover {
	background-color: #fbb810;
}

.myButton:active {
	position: relative;
	top: 1px;
}

th, td {
	text-align: center;
}
</style>

</head>

<body>
	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">

		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.jsp"><img src="img/core-img/logo.png" alt=""></a>
				<div style="text-align: center">
					${memberName} <a href="/project02/memberProcServlet?action=logout">로그아웃</a>
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
				<div style="text-align: center">
					${memberName} <a href="/project02/memberProcServlet?action=logout">로그아웃</a>
				</div>
			</div>
			<!-- Amado Nav -->
			<nav class="amado-nav">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li class="active"><a
						href="OrdersProcServlet?action=buyinglist&field=${memberField}">발주신청</a></li>
					<li><a
						href="OrdersProcServlet?action=buyingall&field=${memberField}">발주내역</a></li>
				</ul>
			</nav>
		</header>
		<!-- Header Area End -->


		<!-- 테이블 -->
		<div class="single-product-area section-padding-100 clearfix"
			style="margin: auto">
			<h4>
				<span style="color: #fbb810; font-weight: bold">${memberName}</span>님
				발주내역
			</h4>
			<br>
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<nav aria-label="breadcrumb">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>발주번호</th>
										<th>제품코드</th>
										<th>제품명</th>
										<th>가격</th>
										<th>발주수량</th>
										<th>발주시간</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="blist" value="${requestScope.buyingall}" />
									<c:forEach var="buying" items="${blist}">
										<tr>
											<td>${buying.b_id}</td>
											<td>${buying.p_id}</td>
											<td>${buying.p_name}</td>
											<td>${buying.p_price}</td>
											<td>${buying.p_quantity}</td>
											<td>${buying.b_time}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<!-- Product Details Area End -->
	</div>
	<!-- ##### Main Content Wrapper End ##### -->



	<!-- ##### Footer Area Start ##### -->
	<footer class="footer_area clearfix"
		style="padding: 10px; position: absolute; bottom: 0; width: 100%">
		<div class="container" style="text-align: center">
			<span style="color: white"> Copyright &copy;<script>
				document.write(new Date().getFullYear());
			</script> All rights reserved | YeonA & SeEun & MinJi
			</span>

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