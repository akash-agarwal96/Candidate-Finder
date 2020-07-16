<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>SignUp and Login</title>
	<link href='<c:url value="/resources/css/loginstyle.css" />' rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="container" id="container">
<div class="form-container sign-up-container">

<form:form action="signedUp" modelAttribute="userSignUp" method="POST">
	<h1>Create Account</h1>
	<div class="social-container">
	</div>
		<h4 style="color:red">${success }</h4>
		<input type="text" name="name" placeholder="Name"><form:errors cssClass="error" path="name"></form:errors>
		<input type="email" name="email" placeholder="Email"><form:errors cssClass="error" path="email"></form:errors>
		<input type="password" name="password" placeholder="Password"><form:errors cssClass="error" path="password"></form:errors>
		<input type="password" name="cPassword" placeholder="Confirm Password"><td><form:errors cssClass="error" path="cPassword"></form:errors>
		<!-- <button>Sign Up</button> -->
		<button onclick="location.href ='signedUp'" >Sign In</button>
		<!-- <input type="submit" value="Sign Up"> -->
	</form:form>

</div>
<div class="form-container sign-in-container">
	<form:form action="loggedIn" modelAttribute="customerLogin" method="POST">
	
		<h1>Sign In</h1>
		<div class="social-container"></div>
		<input type="email" name="email" placeholder="Email">
		<input type="password" name="password" placeholder="Password">
		<button onclick="location.href ='loggedIn'" >Sign In</button>
		<!-- <input type="submit" value="Sign In"> -->
	</form:form>
</div>
<div class="overlay-container">
	<div class="overlay">
		<div class="overlay-panel overlay-left">
			<h1>Login</h1>
			<p>To keep connected with us please login</p>
			<button class="ghost" id="signIn">Sign In</button>
		</div>
		<div class="overlay-panel overlay-right">
			<h1>Create an Account</h1>
			<p>Enter your details and start journey with us</p>
			<button class="ghost" id="signUp">Sign Up</button>
		</div>
	</div>
</div>
</div>

<script type="text/javascript">
	const signUpButton = document.getElementById('signUp');
	const signInButton = document.getElementById('signIn');
	const container = document.getElementById('container');

	signUpButton.addEventListener('click', () => {
		container.classList.add("right-panel-active");
	});
	signInButton.addEventListener('click', () => {
		container.classList.remove("right-panel-active");
	});
</script>


</body>
</html>