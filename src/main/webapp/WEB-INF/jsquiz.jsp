<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Quiz Page</title>

    <!-- style.css -->
    
    <link href='<c:url value="/resources/css/test.css" />' rel="stylesheet">
  </head>
  <body>
    <div class="wrapper">
      <div class="quiz">
        <div class="quiz_header">
          <div class="quiz_user">
            <h4>Welcome! <span class="name"></span></h4>
          </div>
          <div class="quiz_timer">
            <span class="time">00:00</span>
          </div>
        </div>
        <div class="quiz_body">
          <div id="questions">
          

           
          </div>

          <button class="btn-next" onclick="next()">Next</button>
			<button class="btn-next"><a href="page">Finish</a></button>
        </div>
      </div>
    </div>

   
     
      <!-- site.js -->
    <script src='<c:url value="/resources/js/jssite.js" />'></script>

      <!-- user info -->
      
      <script src='<c:url value="/resources/js/userInfo.js" />'></script>

     <!-- timer -->
     
     <script src='<c:url value="/resources/js/timer.js" />'></script>
  </body>
</html>
