<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
      integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      media="screen"
      href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css"
    />
    <link href='<c:url value="/resources/css/form1.css" />' rel="stylesheet">

    <title>Form 3</title>

    <!--  -->

    <style></style>
  </head>

  <body>
    <form:form action="skillTest" modelAttribute="user" method="POST">
      <div class="wrapper">
        <div class="title">
          Registration Form
        </div>
        <!--Section 2-->
		<input type="hidden" value="${email }" name="email"/>
        <h3>Desired Job Details</h3>
        <div class="inputfield mt-2">
          <div class="row">
            <div class="col-md-2">
              <label>Industry</label>
            </div>
            <div class="col-sm">
              <input
                type="text"
                class="form-control"
                placeholder="Eg. Finance,Healthcare,Insurance,Education"
                name="industry"
                required
              />
            </div>
          </div>
        </div>

        <div class="inputfield mt-3">
          <div class="row">
            <div class="col-md-2">
              <label>Role</label>
            </div>
            <div class="col-sm">
              <input
                type="text"
                class="form-control"
                placeholder="Eg. Software Developer,Data Analyst,Data Scientist"
                name="role"
                required
              />
            </div>
          </div>
        </div>

        <div class="inputfield mt-3">
          <div class="row">
            <div class="col-md-2">
              <label>Job Type</label>
            </div>
            <div class="col sm">
              <div class="custom_select">
                <select class="form-control" name="jobType" required>
                  <option value="">Select</option>
                  <option value="permanent">Permanent</option>
                  <option value="contract">Contract</option>
                </select>
              </div>
            </div>
          </div>
        </div>

        <div class="inputfield mt-3">
          <div class="row">
            <div class="col-md-2">
              <label>Expected Salary</label>
            </div>
            <div class="col-sm">
              <input
                type="text"
                class="form-control mt-2"
                placeholder="In LPA"
                name="expectedSalary"
                required
              />
            </div>
          </div>
        </div>

        <div class="inputfield mt-3">
          <div class="row">
            <div class="col-md-2">
              <label>Desired Location</label>
            </div>
            <div class="col-sm">
              <input
                type="text"
                class="form-control mt-2"
                placeholder="City in India"
                name="desiredLocation"
                required
              />
            </div>
          </div>
        </div>

        <div class="inputfield mt-3">
          <div class="row">
            <div class="col-md-2">
              <label>Desired Shift</label>
            </div>
            <div class="col-sm">
              <div class="custom_select">
                <select class="form-control" name="desiredShift" required>
                  <option value="">Select</option>
                  <option value="day">Day</option>
                  <option value="night">Night</option>
                  <option value="flexible">Flexible</option>
                </select>
              </div>
            </div>
          </div>
        </div>

        <hr />
      <center> <button onclick="location.href ='skillTest'" type="submit" class="btn btn-lg btn-warning mt-4">Submit</button></center>
      </div>
      <!-- <input type="submit" value="submit" /> -->
    </form:form>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <script></script>
  </body>
</html>
