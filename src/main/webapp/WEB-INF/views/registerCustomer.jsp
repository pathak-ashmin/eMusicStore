
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Customer Registration</h1>

			<p class="lead">Please fill below to add a new product.</p>
		</div>

		<form:form action="${pageContext.request.contextPath}/register"
			method="post" commandName="customer">

			<h3>Basic Information</h3>

			<div class="form-group">
				<label for="name">Name</label>
				<form:input path="customerName" cssClass="form-control" id="name" />
			</div>

			<div class="form-group">
				<label for="email">Email</label>
				<form:input path="customerEmail" cssClass="form-control" id="email" />
			</div>

			<div class="form-group">
				<label for="phone">Phone</label>
				<form:input path="customerPhone" cssClass="form-control" id="phone" />
			</div>

			<div class="form-group">
				<label for="username">Username</label>
				<form:input path="username" cssClass="form-control" id="username" />
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<form:password path="password" cssClass="form-control" id="password" />
			</div>

			<h3>Billing Address</h3>

			<div class="form-group">
				<label for="billingStreet">Street Address</label>
				<form:input path="billingAddress.streetName" id="billingStreet"
					cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="billingApartmentNumber">Apartment Address</label>
				<form:input path="billingAddress.apartmentNumber"
					id="billingApartmentNumber" cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="billingCity">City</label>
				<form:input path="billingAddress.city" id="billingCity"
					cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="billingState">State</label>
				<form:input path="billingAddress.state" id="billingState"
					cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="billingCountry">Country</label>
				<form:input path="billingAddress.country" id="billingCountry"
					cssClass="form-control" />
			</div>

			<h3>Shipping Address</h3>

			<div class="form-group">
				<label for="shippingStreet">Street Address</label>
				<form:input path="shippingAddress.streetName" id="shippingStreet"
					cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="shippingApartmentNumber">Apartment Address</label>
				<form:input path="shippingAddress.apartmentNumber"
					id="shippingApartmentNumber" cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="shippingCity">City</label>
				<form:input path="shippingAddress.city" id="shippingCity"
					cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="shippingState">State</label>
				<form:input path="shippingAddress.state" id="shippingState"
					cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="shippingCountry">Country</label>
				<form:input path="shippingAddress.country" id="shippingCountry"
					cssClass="form-control" />
			</div>
			<br>
			<br>

			<input type="submit" value="Submit" class="btn btn-default">
			<a href='<c:url value="/" />' class="btn btn-default">Cancel</a>

		</form:form>

		<%@include file="/WEB-INF/views/template/footer.jsp"%>