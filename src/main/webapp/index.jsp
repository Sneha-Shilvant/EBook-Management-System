<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/back.png");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #F6F6F6;
}

.head {
	color: white;
	text-shadow: 1px 1px 2px black, 25px 25px 25px #e65100, 5px 5px 5px darkred;
	position: absolute;
	top: 40%;
	left: 25%;
	
	transform: traslate(-50%, -50%);
}
</style>

</head>
<body style="background-color: #FAFAFA;">
	<%
	User u = (User) session.getAttribute("userobj");
	%>


	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="head">
			<h1 style="font-size:50px">EBook Management System</h1>
		</div>
	</div>
	<!-- Recent Book -->
	<div class="container">
		<h3 class="text-center" style="font-size:40px">Recent Book</h3>
		<div class="row">
			<%
			BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list1 = dao1.getRecentBook();
			for (BookDtls b : list1) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhoto()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAutor()%></p>
						<p>

							<%
							if (b.getBookCategory().equals("Old")) {
							%>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="row">

							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>
						Categories:
						<%=b.getBookCategory()%></p>
						<div class="row">
							<%
							if (u == null) {
							%>

							<a href="login.jsp" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i>Add Card</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i>Add Card</a>

							<%
							}
							%>

							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
						</div>


						<%
						}
						%>

					</div>
				</div>
			</div>

			<%
			}
			%>
		</div>

	</div>
	<div class=" text-center mt-1">
		<a href="all_recent_book.jsp"
			class="btn btn-danger btn-sm text-white ">View All</a>
	</div>
	<!-- End Recent Book -->


	<hr>
	<!-- New Book -->
	<div class="container">
		<h3 class="text-center" style="font-size:40px">New Book</h3>
		<div class="row">

			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getNewBook();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhoto()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
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
								class="fa-solid fa-cart-plus"></i>Add Card</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i>Add Card</a>

							<%
							}
							%>





							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
						</div>

					</div>
				</div>

			</div>

			<%
			}
			%>



		</div>


		<div class=" text-center mt-1">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white ">View
				All</a>
		</div>
	</div>
	<!-- End New Book -->
	<hr>
	<!-- Old Book -->
	<div class="container">
		<h3 class="text-center" style="font-size:40px">Old Book</h3>
		<div class="row">
			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao1.getOldBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhoto()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAutor()%></p>
						<p>
							Categories:
							<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
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
		<div class=" text-center mt-1">
			<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white ">View
				All</a>
		</div>
	</div>
	<!-- End Old Book -->

	<%@include file="all_component/footer.jsp"%>
</body>
</html>