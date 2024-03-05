<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<title>Selling page</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #FAFAFA;">
<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>

	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center text-primary">Sell Old Book</h4>
					<c:if test="${not empty succMsg}">
					<h5 class="text-center text-success">${succMsg}</h5>
					<c:remove var="succMsg" scope="session"/>
					</c:if>
					<c:if test="${not empty failedMsg}">
					<h5 class="text-center text-danger">${failedMsg}</h5>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
					<form action="add_old_book" method="post" enctype="multipart/form-data">
						<input type="hidden" value="${userobj.email }" name="user">
						<div class="form-group">
								<label for="exampleInputEmail1">Book Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="bname">
								
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"> Author Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="author">
								
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Price</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="price">
								
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Upload Photo</label> <input
									type="file" class="form-control-file" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="bimg">
							</div>
							<button type="submit" class="btn btn-primary">Sell</button>
							</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>