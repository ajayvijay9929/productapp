<%@page import="com.productapp.model.Product"%>
<%@page import="java.util.List"%>
<%@include file="./base.jsp"%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	 --%>
<html>
<head>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product App</h1>

				<table class="table table-dark table-striped">
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<%-- <tbody>
					<c:forEach items="${product }" var="p">
						<tr>
							<th scope="row">${p.id }</th>
							<td>${p.name }</td>
							<td>${p.description }</td>
							<td>${p.price }</td>
						</tr>
						</c:forEach>
					</tbody> --%>
					<tbody>
						<%
						List<Product> productList = (List<Product>) request.getAttribute("product");
						System.out.println("this is ");
						if (productList != null) {
							for (Product p : productList) {
						%>
						<tr>
							<th scope="row"><%=p.getId()%></th>
							<td><%=p.getName()%></td>
							<td><%=p.getDescription()%></td>
							<td>&#x20B9; <%=p.getPrice()%></td>
							<td>
							<a href="delete/<%=p.getId()%>"><i class="fa-solid fa-trash text-danger"></i></a>
							<a href="update/<%=p.getId()%>"><i class="fa-solid fa-pen-nib text-primary"></i></a>
							</td>
						</tr>
						<%
						}
						}
						%>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
