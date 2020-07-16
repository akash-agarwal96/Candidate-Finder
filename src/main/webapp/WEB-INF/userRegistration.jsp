<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">

	<link href='<c:url value="/resources/css/form1.css" />' rel="stylesheet">
	<title>Form1</title>

	<!--  -->

	<style>

	</style>

</head>

<body>

<form:form action="form1" modelAttribute="user" method="POST">
    <div class="wrapper">
      <div class="title">
        Registration Form
      </div>
    
      <div class="form">
        <div class="inputfield">
          <label>Full Name</label>
          <input type="text" class="form-control" name="fullName" required />
        </div>
        <div class="inputfield">
          <label>E-mail Address</label>
          <input
            type="email"
            class="form-control"
            name="email"
            placeholder="name@example.com"
            value="${email}"
            readonly
          />
        </div>
        <div class="inputfield">
          <label>Phone</label>
          <input type="text" class="form-control" name="phoneNumber" required />
        </div>
        <div class="inputfield">
          <label>WhatsApp Number,if available</label>
          <input type="text" class="form-control" name="whatsAppNumber" required/>
        </div>
        <div class="inputfield">
          <label>Gender</label>
          <div class="custom_select">
            <select class="form-control" name="gender" required>
              <option value="">Select</option>
              <option value="male">Male</option>
              <option value="female">Female</option>
              <option value="other">Other</option>
            </select>
          </div>
        </div>
        <div class="inputfield">
          <label>Marital Status</label>
          <div class="custom_select">
            <select class="form-control" name="martialStatus" required>
              <option value="">Select</option>
              <option value="married">Married</option>
              <option value="unmarried">Un-Married</option>
            </select>
          </div>
        </div>
        <div class="inputfield">
          <label>Language Known</label>
          <input type="text" class="form-control" name="languageKnow" />
        </div>
        <div class="inputfield">
          <label>Native Location</label>
          <input type="text" class="form-control" name="nativeLocation" required />
        </div>
        </div>
       
		<center> <button onclick="location.href ='form1'" type="submit" class="btn btn-lg btn-warning mt-4">Submit</button></center>
    </div>
   		<!-- <input type="submit" value="submit" /> -->
    </form:form>




	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>

	<script>
	</script>

</body>

</html>
