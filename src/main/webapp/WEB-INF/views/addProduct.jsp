
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Add Product</h1>

			<p class="lead">Please fill below to add a new product.</p>
		</div>

		<form:form
			action="${pageContext.request.contextPath}/admin/productInventory/addProduct"
			method="post" commandName="product">
			<div class="form-group">
				<label for="name">Name</label>
				<form:errors path="productName" cssStyle=" color: #FF0000;"/>
				<form:input path="productName" cssClass="form-control" id="name" />
			</div>

			<div class="form-group">
				<label for="category"> Category</label> <br> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Instrument" />Instrument</label>
				<label class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Record" />Record</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Accesory" />Accessory
				</label>
			</div>

			<div class="form-group">
				<label for="description">Description</label>
				<form:textarea path="productDescription" id="description"
					cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="price">Price</label>
				<form:errors path="productPrice" cssStyle=" color: #FF0000;"/>
				<form:input path="productPrice" id="price" cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="condition">Condition</label> <br> <label
					class="checkbox-inline"><form:radiobutton
						path="productCondition" id="condition" value="New" />New </label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCondition" id="condition" value="Used" />Used </label>
			</div>

			<div class="from-group">
				<label for="status">Status</label> <br> <label
					class="checkbox-inline"><form:radiobutton
						path="productStatus" id="status" value="Active" />Active </label> <label
					class="checkbox-inline"><form:radiobutton
						path="productStatus" id="status" value="Inactve" />Inactive </label>
			</div>

			<div class="form-group">
				<label for="unitInStock">Unit in Stock</label>
				<form:errors path="unitInStock" cssStyle=" color: #FF0000;" />
				<form:input path="unitInStock" id="unitInStock"
					cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="manufacturer">Manufacturer</label>
				<form:input path="productManufacturer" id="manufacturer"
					cssClass="form-control" />
			</div>

			<br>
			<br>

			<input type="submit" value="Submit" class="btn btn-default">
			<a href='<c:url value="/admin/productInventory" />'
				class="btn btn-default">Cancel</a>

		</form:form>

		<%@include file="/WEB-INF/views/template/footer.jsp"%>