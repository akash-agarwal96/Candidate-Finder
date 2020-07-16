<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Candidate Finder-Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href='<c:url value="/resources/css/dashboard_all.min.css" />' rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
 
  <!-- Custom styles for this template-->
  <link href='<c:url value="/resources/css/dashboard_sb-admin-2.min.css" />' rel="stylesheet">

</head>

<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Candidate Finder</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Filters
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <form action="searchjobs" method="get" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
          <span>
            <ul><h5>Skills</h5>
            <li><input type="checkbox" name="skillName" value="c++">  C++</li>
            <li><input type="checkbox" name="skillName" value="python">  Python</li>
            <li><input type="checkbox" name="skillName" value="angular 8">  Angular 8</li>
            <li><input type="checkbox" name="skillName" value="java">  Java</li>
            <li><input type="checkbox" name="skillName" value="machine learning">  Machine Learning</li>

            </ul>

           <ul><h5 class="job">Job Type</h5>
             <li><input type="checkbox" name="jobType" value="permanent"> Permanent</li>
             <li><input type="checkbox" name="jobType" value="contract">  Contract</li>
            </ul>

            <ul><h6 class="desired">Desired Location</h6>
              <input type="search" placeholder="Enter City" name="desiredLocation">
            </ul>
            <ul><h6 class="native">Native Location</h6>
              <input type="search" placeholder="Enter City" name="nativeLocation">
            </ul>

            <ul><h6 class="expected">Expected Salary</h6>
              <label for="price-min">Salary:</label>
               <input type="range" name="expectedSalary" min="10000" max="500000" value="11000" id="slider">
              <!-- <input type="text" placeholder="Min" value="0" name="min">
              <input type="text" placeholder="Max" value="1000000" name="max"> -->
            </ul>
            
               <ul>
              <h6 class="open">Open for Job</h6>
              <li><input type="radio" value="1" name="isWorking">Yes</li>
              <li><input type="radio" value="0" name="isWorking">No</li>
            </ul>
            <ul><h6 class="industry"> Industry</h6>
              <div class="tbox">
              <input type="text" placeholder="Enter Industry"  name="industry">
            </div>
            </ul>
            <ul class="search">
              <h6><button class="fas fa-search fa-sm"> Search</button></h6>
            </ul>
            
          </span>
          
        </a>
        
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
             <!-- <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div> -->

                  <div class="dropdown">
                  <button class="dropbtn"><b>Sort by</b> </button>
                  <div class="dropdown-content">
                   <a href="#">Expected Salary</a>
                  <a href="#">Year of Experience</a>
                  <a href="#">Score</a>
                  </div>
                </div>
            </div>
           <button class="btn btn-primary" type="submit">
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${email }</span>
                <!-- <img class="img-profile rounded-circle" src="css/avatar.svg"> -->
                <img class="img-profile rounded-circle" src="resources/img/avatar.svg" alt="">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
              
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="login" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>
          </ul>
        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
          
          <!-- Content Row -->
          <div class="row">

            
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Candidates</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"></div>${count }</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            
            
          </div>

          
          <!-- Content Row -->
          <div class="row">

            <!-- Content Column -->
            <div class="col-lg-6 mb-4">
            <div class="lmargin">

             <!--user 1 -->
               <c:set var="count" value="0" scope="page" />
             <c:forEach items="${jobs}" var="job">
             <div class="card shadow mb-4">
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary"><c:out value="${count=count + 1}" /></h6>
              </div>
              <div class="card-body">
                <nav>
                  <ul>
                  
                    <li> <b>User ID:</b><c:out value="${job[0] }"/></li>
                    <li> <b>Full Name:</b><c:out value="${job[1] }"/></li>
                    <li> <b>Number:</b><span><c:out value="${job[2] }"/></span></li>
                    <li> <b>Skills:</b><span><c:out value="${job[3] }"/></span></li>
                    <li><b>Year of Experience:<span><c:out value="${job[4] }"/></span></li>
                    <li> Expected Salary:<span><c:out value="${job[5] }"/></span></li>
                    <b></b>
                  </ul>
                </nav>
              </div>
             </div>
 		</c:forEach>
            

             </div>
            </div>
          </div>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  
  
 </body>
</html>
