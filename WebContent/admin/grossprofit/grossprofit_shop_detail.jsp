<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*, member.*, product.*, waybill.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Yellow Container : grossprofit_shop</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" type="text/css" href="css/core-style.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<style>
h4 {
	margin-left: 15px;
	margin-bottom: 20px;
}

th, td {
	text-align: center;
}
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

button {
	margin-left: 15px;
	margin-bottom: 20px;
	background-color: #fbb710;
	color: #fff;
	width: 80px;
	height: 30px;
}

button:hover {
	background-color: #333333;
}
</style>
</head>

<body>
	<%@ include file="header.jspf"%>

	<div class="amado_product_area section-padding-100">
		<div class="row">
			<h4>
				<span style="color: #fbb810; font-weight: bold;">
					"${requestScope.shopcode}" </span> 상세대금내역 <span
					style="font-size: 0.8em; font-weight: normal;">(송장개수 :
					${requestScope.shippay})</span>
			</h4>
			<br>

			<!-- Single Product Area -->
			<div class="col-12 col-sm-6 col-md-12 col-xl-15">
				<div class="single-product-wrapper">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>상품코드</th>
								<th>상품이름</th>
								<th>상품가격</th>
								<th>상품개수</th>
								<th>총 가격</th>
								<th>대금청구액</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="slist" value="${requestScope.shopList_detail}" />
							<c:set var="total" value="0" />
							<c:forEach var="shop" items="${slist}">
								<tr>
									<td>${shop.p_id}</td>
									<td>${shop.p_name}</td>
									<td><fmt:formatNumber value="${shop.p_price}"
											pattern="#,###" /></td>
									<td>${shop.p_count}</td>
									<td style="color: blue"><fmt:formatNumber
											value="${shop.p_total}" pattern="#,###" /></td>
									<td style="color: red"><fmt:formatNumber
											value="${shop.total}" pattern="#,###" /></td>
									<c:set var="total" value="${total + shop.total}" />
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<br>
					<br>
					<div align=center>
						<h5 style="font-weight: bold;">
							운송대금 : <span style="color: red;"><fmt:formatNumber
									value="${requestScope.shippay * 10000}" pattern="#,###" /></span>
							&nbsp;/&nbsp;상품대금 : <span style="color: red;"><fmt:formatNumber
									value="${total + shop.total}" pattern="#,###" /></span>
						</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!-- ##### Main Content Wrapper End ##### -->
	<%@ include file="/footer.jspf"%>

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