<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color:#FAFAFA;">
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"/>
	
	</c:if>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Book</h4>
						
						<c:if test="${not empty succMsg}">
					<h5 class="text-center text-success">${succMsg}</h5>
					<c:remove var="succMsg" scope="session"/>
					</c:if>
					<c:if test="${not empty failedMsg}">
					<h5 class="text-center text-danger">${failedMsg}</h5>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
						
						<form action="../add_books" method="post" enctype="multipart/form-data">
						
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
								<label for="inputState">Book Categories</label> <select id="inputState"
								name="btype" class="form-control">
								<option selected>---select---</option>
								<option value="new">New Book</option>
								</select>
							</div>
							<div class="form-group">
								<label for="inputState">Book Status</label> <select id="inputState"
								name="bstatus" class="form-control">
								<option selected>---select---</option>
								<option value="Active">Active</option>
								<option value="Inactive">Inactive</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Upload Photo</label> <input
									type="file" class="form-control-file" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="bimg">
							</div>
							<button type="submit" class="btn btn-primary">Add</button>
							</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="footer.jsp"%>

</body>
</html>