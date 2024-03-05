<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="all_component/allCss.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Setting</title>
<style type="text/css">
a{
text-decoration: none;
color: black;
}
a:hover{
text-decoration: none;

}
.crd-ho:hover {
	background-color: #F6F6F6;
}
</style>
</head>
<body  style="background-color: #FAFAFA;">
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"> </c:redirect>

 </c:if>
<%@include file="all_component/navbar.jsp"%>
<c:if test="${not empty userobj }">
<h3 class="text-center">Hello,${userobj.name }</h3>
</c:if>

	<div class="container">
	<h3 class="text-center"></h3>
		<div class="row p-5">
			<div class="col-md-4">
			<a href="sell_book.jsp">
				<div class="card crd-ho">
					<div class="card-body text-center">
					<div class="text-primary">
					<i class="fa-solid fa-book-open fa-3x"></i>
					</div >
					<h3>Sell Old Book</h3>
					
					
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="old_book.jsp">
				<div class="card crd-ho">
					<div class="card-body text-center">
					<div class="text-primary">
					<i class="fa-solid fa-book-open fa-3x"></i>
					</div >
					<h3> Old Book</h3>
					
					
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-4">
			<a href="Edit_Profile.jsp">
				<div class="card crd-ho">
					<div class="card-body text-center">
					<div class="text-primary">
					<i class="fa-solid fa-address-card fa-3x" ></i>
					</div >
					<h3>Edit Profile</h3>
					
					
					</div>
				</div>
				</a>
			</div>
			
		
			<div class="col-md-6 mt-3">
			<a href="order.jsp">
				<div class="card crd-ho">
					<div class="card-body text-center">
					<div class="text-danger">
					<i class="fa-solid fa-box-open fa-3x"></i>
					</div >
					<h4>My Order</h4>
					<p>Track Your Order</p>
					
					
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-6 mt-3">
			<a href="helpline.jsp">
				<div class="card crd-ho">
					<div class="card-body text-center">
					<div class="text-success">
					<i class="fa-solid fa-user-circle fa-3x"></i>
					</div >
					<h4>Help Center</h4>
					<p>24*7 Service</p>
					
					
					</div>
				</div>
				</a>
			</div>
		</div>
	</div>
<%@include file="all_component/footer.jsp"%>
</body>
</html>