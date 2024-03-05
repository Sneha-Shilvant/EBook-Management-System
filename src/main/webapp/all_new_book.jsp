<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All New Book</title> 
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #F6F6F6;
}
</style>
</head>
<body>
<%
	User u = (User) session.getAttribute("userobj");
	%>
   <%@include file="all_component/navbar.jsp"%>
   <c:if test="${not empty succMsg }">
		<div class="alert alert-primary" role="alert">${succMsg }</div>
		<c:remove var="succMsg" scope="session" />
</c:if>
<c:if test="${not empty failedMsg }">
		<div class="alert alert-danger" role="alert">${failedMsg }</div>
		<c:remove var="failedMsg" scope="session" />
</c:if>
	<div class="container-fluid">
		<div class="row p-3">
			
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllNewBook();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhoto()%>"
							style="width: 100px; height: 150px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAutor()%></p>
						<p>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="row">
						<%
							if (u == null) {
							%>

							<a href="login.jsp" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i> Add Card</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-4"><i
								class="fa-solid fa-cart-plus"></i> Add Card</a>

							<%
							}
							%>
							 <a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>

					</div>
				</div>

			</div>

			<%
			}
			%>
			
					
			
			</div>
		</div>
	
</body>
</html>