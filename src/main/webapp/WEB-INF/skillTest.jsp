<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Skill Test</title>
	
	<link href='<c:url value="/resources/css/skillTest.css" />' rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<!-- <img class="wave" src="resources/img/image.png" alt=""> -->
	
	<div class="container">
		<div class="img">
			<img src="resources/img/image.png" alt="">

		</div>
		<div class="login-content">
			<form>
				<img src="resources/img/avatar.svg" alt="">
				
                <h2 class="title">Skill Test</h2>
           		
           		 <h3>Choose a Skill below you want to give exam</h3>  
				<a href="cquiz"><h3 class="btn">C++</h3></a>
				<a href="jquiz"><h3 class="btn">JAVA</h3></a>
                 
                 <a href="pquiz"><h3 class="btn">PYTHON</h3></a>
                 <a href="jsquiz"><h3 class="btn">JAVA SCRIPT</h3></a>
                 <a href="mlquiz"><h3 class="btn">MACHINE LEARNING</h3></a>
                 
				
           		  
            </form>
        </div>
    </div>
    
    <script src='<c:url value="/resources/js/skillTest.js" />'></script>
</body>
</html>
