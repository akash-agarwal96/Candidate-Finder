<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>JavaScript Quiz</title>
    
    <!-- style.css -->
    <link href='<c:url value="/resources/css/test.css" />' rel="stylesheet">
</head>
<body>
    <div class="wrapper">
        <div>
           <i class="fas fa-award award_icon"></i>
           <h2 class="username">Well done! </h2>
          <h3> <p class="userpoints">Your Points:<b> <span class="points" value="points"></span></b>/50</p></h3>
           <%-- <input type="text" name ="marks" value="${points}" /> --%>
         <h3><p class="usertime"> Time taken: <b><span class="time_taken"></span></b>Seconds</p></h3>
         <button class="b1"><a href="userDashboard">Go to Dash Board -></a></button>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/d56261bbb9.js"></script>


        <!-- user info -->
        <script src='<c:url value="/resources/js/userInfo.js" />'></script>
</body>
</html>