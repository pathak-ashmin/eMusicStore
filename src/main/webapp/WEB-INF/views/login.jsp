<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
	<div class="login-container">
		<div class="login-box">
			<h2>Please enter your credentials below:</h2>

			<c:if test="${not empty message}">
				<div class="msg" style="color: #008000;">${message}</div>
			</c:if>


			<form name="loginForm"
				action='<c:url value="/j_spring_security_check" />' method="post">
				<c:if test="${not empty error}">
					<div class="error" style="color: #FF0000;">${error}</div>
				</c:if>


				<div class="form-group">
					<label for="username">User:</label> <br><input type="text"
						id="username" name="username" class="form-control" />
				</div>
				<div class="form-group">
					<label for="password">Password:</label><br> <input type="password"
						id="password" name="password" class="form-control" />
				</div>
				<input type="submit" value="Submit" class="btn btn-default">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>