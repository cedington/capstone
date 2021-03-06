<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<script type="text/javascript">
	$(document).ready(function () {
	
		$("form").validate({
			
			rules : {
				userName : {
					required : true
				},
				password : {
					required : true
				}
			},
			messages : {			
				confirmPassword : {
					equalTo : "Password incorrect"
				}
			},
			errorClass : "error"
		});
	});
</script>

<div class="row">
	<div class="col-sm-4"></div>
	<div class="col-sm-4">
		<c:url var="formAction" value="/login" />
		<form method="POST" action="${formAction}">
			<div class="form-group">
				<label for="userName">User Name: </label>
				<input type="text" id="userName" name="userName" placeHolder="User Name" class="form-control" />
			</div>
			<div class="form-group">
				<label for="password">Password: </label>
				<input type="password" id="password" name="password" placeHolder="Password" class="form-control" />
				<div class="error">${error}</div>
			</div>
			<button type="submit" class="btn btn-default">Login</button>
		</form>
		
		<hr>
		
		<div class="form-group">
			<c:url var="newUserHref" value="/users/new" />
			<a href="${newUserHref}"><button class="btn btn-default">Sign Up</button></a>
		</div>
	</div>
	<div class="col-sm-4"></div>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />