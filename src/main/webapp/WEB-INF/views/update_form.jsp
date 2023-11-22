<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@include file="./base.jsp"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

	<div class="container mt-3">
		<div class="container row">
			<div class="container col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change  product detail</h1>
				<form action="${pageContext.request.contextPath }/handle-product" method="post">
				<input type="hidden" value="${product.id}" name="id">
					<div class="form-group mt-3">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the product name here"
							value="${product.name}">
					</div>
					<div class="form-group mt-3">
						<label for="description">Product Description</label>
						<textarea class="form-control" name="description" id="description"
							 rows="5">${product.description}</textarea>
					</div>
					<div class="form-group mt-3">
						<label for="price">Product Price</label> <input type="text"
							placeholder="Enter Product Price" name="price"
							class="form-control" id="price" value="${product.price}">
					</div>
					<div class="container text-center mt-3">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
