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
<title>Yellow Container : commodity</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css">
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

button {
	margin-left: 15px;
	margin-bottom: 20px;
	background-color: white;
	border:1px solid green;
	color: green;
	width: 80px;
	height: 30px;
	font-weight: bold;
}

button:hover {
	background-color: #62C15B;
	border:1px solid #62C15B;
	color:white
}
</style>
</head>

<body>
<%@ include file="header.jspf"%>
		<div class="amado_product_area section-padding-100">
			<div class="row">
			<div style="width:100%; position:relative;">
				<h4>
					<span style="color: #fbb710; font-size: 1em; font-weight: bold">
						${requestScope.date} </span>&nbsp;재고 DB
				</h4>
				<div style="float: right;">
					<button type="button" 
						onclick="location.href='FileProcServlet?action=down&date=${requestScope.date}'">다운로드</button>
				</div>
				</div>
				<div class="col-12 col-sm-6 col-md-12 col-xl-15">
					<div class="single-product-wrapper">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>제품코드</th>
									<th>제품이름</th>
									<th>기초재고</th>
									<th style="color: blue">입고</th>
									<th style="color: red">출고</th>
									<th>기말재고</th>
								</tr>
							</thead>
							<tbody>
							<tbody>
								<c:set var="clist" value="${requestScope.cDtoList}" />
								<c:forEach var="c" items="${clist}">
									<tr>
										<td>${c.p_id}</td>
										<td style="text-align:left">${c.p_name }</td>
										<td>${c.c_basic}</td>
										<td>${c.c_in}</td>
										<td>${c.c_out}</td>
										<c:if test="${c.c_close < 10}">
											<td style="color: red; font-weight: bold">${c.c_close}</td>
										</c:if>
										<c:if test="${c.c_close >= 10}">
											<td>${c.c_close}</td>
										</c:if>
									</tr>
								</c:forEach>
							</tbody>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Main Content Wrapper End ##### -->

<!-- ##### Footer Area Start ##### -->     
<%@ include file="/footer.jspf" %>   
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