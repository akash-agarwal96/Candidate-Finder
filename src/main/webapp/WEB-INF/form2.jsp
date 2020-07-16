<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link
      rel="stylesheet"
      media="screen"
      href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css"
    />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='<c:url value="/resources/css/form1.css" />' rel="stylesheet">

    <title>Registration Form</title>

    <style></style>
  </head>

  <body>
    <form:form action="form2" modelAttribute="user" method="POST">
    <div class="wrapper">
      <div class="title">
        Registration Form
      </div>
    
		<input type="hidden" value="${email }" name="email"/>
        <h3>Professional Details</h3>
        <div class="inputfield">

       <label>Skills</label>
	<TABLE id="dataTable" width="100%">
		<TR>
			<TD><INPUT type="checkbox" name="chk"/></TD>
			<TD><INPUT type="text" class="form-control mr-2" placeholder="Name" name="skillName"/></TD>
			<TD>
				<SELECT class="form-control ml-2" name="level">
					<OPTION value="">Level</OPTION>
					<OPTION value="1">1</OPTION>
					<OPTION value="2">2</OPTION>
					<OPTION value="3">3</OPTION>
					<OPTION value="4">4</OPTION>
					<OPTION value="5">5</OPTION>
				</SELECT>
			</TD>
		</TR>
  </TABLE>
  <div class="row">
    <div class="col-sm text-right"></div>
    <div class="col-sm text-right">
<input type="button" class="btn btn-primary ml-3 mt-2" value="Add More" onclick="addRow('dataTable')"/>
  <INPUT type="button" value="Delete" class="btn btn-danger ml-3 mt-2" onclick="deleteRow('dataTable')" /></div>
  </div>
      </div>
        
        <!-- </div> -->
<hr>

        <!-- <div class="inputfield"> -->
<!-- "Work History" -->
<div class="row">
       <div class="col-xs-12">
            <div class="col-md-12" >
                <h3>Work History</h3>
                <div id="field">
                <div id="field0">
<!-- Text input-->
</div>
</div>
<!-- Button -->
             
            </div>
        </div>
    </div>
    
    

    <div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingFive">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
          Work History- 1
        </button>
      </h2>
    </div>

    <div id="collapseFive" class="collapse show" aria-labelledby="headingFive" data-parent="#accordionExample">
      <div class="card-body">
        <div class="form-group">
  
  <label class="col-md-4 control-label text-secondary" for="action_id">Organisation Name</label>  
  <div class="inputfield">
  <input id="action_id" name="orgName" type="text" placeholder="Organisation Name" class="form-control input-md">    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label text-secondary" for="action_name">Tenure</label> 
  <div class="row">
  <div class="col-md-6">
    <label class="control-label text-secondary" for="action_id">Current</label>  
    <input type="checkbox" id="chk" onclick="myFunction()" />
  <label class="control-label text-secondary" for="action_id"> Start Date</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
   <div class="col-md-6">
    <label class="control-label text-secondary" for="action_name"> End Date</label> 
    <input id="checkdis" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
  <label class="col-md-4 control-label" for="action_name"></label> 
  <div class="row">
  </div>
</div>
<br>
<div class="inputfield">
  <label class="col-md-3 control-label" for="action_id">Title</label>  
</div>
<div class="inputfield">
  <div class="inputfield col-md-12">
  <input id="action_id" name="title" type="text" placeholder="Enter Title" class="form-control input-md"> 
  </div>   
</div>

<div class="inputfield">
  <label class="col-md-3 control-label" for="action_id">Work</label>  
</div>   
<div class="inputfield">
  <div class="inputfield col-md-12">
  <textarea placeholder="Project Name" class="form-control input-md" name="description">Enter Description</textarea>
  </div>
</div> 
<div class="inputfield">
  <div class="inputfield col-md-12">
  <textarea placeholder="Project Name" class="form-control input-md" name="contribution">Enter Contribution </textarea>
  </div>
</div>

<div class="inputfield">
  <label class="col-md-4 control-label" for="action_name">Duration</label> 
  <div class="row">
  <div class="col-md-6">
  <label class="control-label" for="action_id">From</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
  <div class="col-md-6">
    <label class="control-label" for="action_id">To</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
  </div>
</div>

<div class="inputfield">
  <div class="inputfield col-md-12">
  <textarea placeholder="Project Name" class="form-control input-md" name="otherComment">Other Comment</textarea>
  </div>
</div>
</div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingSix">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
          Work History- 2
        </button>
      </h2>
    </div>
    <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample">
      <div class="card-body">
       <div class="form-group">
  
  <label class="col-md-4 control-label text-secondary" for="action_id">Organisation Name</label>  
  <div class="inputfield">
  <input id="action_id" name="orgName" type="text" placeholder="Organisation Name" class="form-control input-md">    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label text-secondary" for="action_name">Tenure</label> 
  <div class="row">
  <div class="col-md-6">
    <label class="control-label text-secondary" for="action_id">Current</label>  
    <input type="checkbox" id="chk" onclick="myFunction()" />
  <label class="control-label text-secondary" for="action_id"> Start Date</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
   <div class="col-md-6">
    <label class="control-label text-secondary" for="action_name"> End Date</label> 
    <input id="checkdis" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
  <label class="col-md-4 control-label" for="action_name"></label> 
  <div class="row">
  </div>
</div>
<br>
<div class="inputfield">
  <label class="col-md-3 control-label" for="action_id">Title</label>  
</div>
<div class="inputfield">
  <div class="inputfield col-md-12">
  <input id="action_id" name="action_id" type="text" placeholder="Enter Title" class="form-control input-md"> 
  </div>   
</div>

<div class="inputfield">
  <label class="col-md-3 control-label" for="action_id">Work</label>  
</div>   
<div class="inputfield">
  <div class="inputfield col-md-12">
  <textarea placeholder="Project Name" class="form-control input-md">Enter Description</textarea>
  </div>
</div> 
<div class="inputfield">
  <div class="inputfield col-md-12">
  <textarea placeholder="Project Name" class="form-control input-md">Enter Contribution </textarea>
  </div>
</div>

<div class="inputfield">
  <label class="col-md-4 control-label" for="action_name">Duration</label> 
  <div class="row">
  <div class="col-md-6">
  <label class="control-label" for="action_id">From</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
  <div class="col-md-6">
    <label class="control-label" for="action_id">To</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
  </div>
</div>

<div class="inputfield">
  <div class="inputfield col-md-12">
  <textarea placeholder="Project Name" class="form-control input-md">Other Comment</textarea>
  </div>
</div>
</div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingSeven">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
          Work Histroy- 3
        </button>
      </h2>
    </div>
    <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample">
      <div class="card-body">
        <div class="form-group">
  
  <label class="col-md-4 control-label text-secondary" for="action_id">Organisation Name</label>  
  <div class="inputfield">
  <input id="action_id" name="action_id" type="text" placeholder="Organisation Name" class="form-control input-md">    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label text-secondary" for="action_name">Tenure</label> 
  <div class="row">
  <div class="col-md-6">
    <label class="control-label text-secondary" for="action_id">Current</label>  
    <input type="checkbox" id="chk" onclick="myFunction()" />
  <label class="control-label text-secondary" for="action_id"> Start Date</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
   <div class="col-md-6">
    <label class="control-label text-secondary" for="action_name"> End Date</label> 
    <input id="checkdis" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
  <label class="col-md-4 control-label" for="action_name"></label> 
  <div class="row">
  </div>
</div>
<br>
<div class="inputfield">
  <label class="col-md-3 control-label" for="action_id">Title</label>  
</div>
<div class="inputfield">
  <div class="inputfield col-md-12">
  <input id="action_id" name="action_id" type="text" placeholder="Enter Title" class="form-control input-md"> 
  </div>   
</div>

<div class="inputfield">
  <label class="col-md-3 control-label" for="action_id">Work</label>  
</div>   
<div class="inputfield">
  <div class="inputfield col-md-12">
  <textarea placeholder="Project Name" class="form-control input-md">Enter Description</textarea>
  </div>
</div> 
<div class="inputfield">
  <div class="inputfield col-md-12">
  <textarea placeholder="Project Name" class="form-control input-md">Enter Contribution </textarea>
  </div>
</div>

<div class="inputfield">
  <label class="col-md-4 control-label" for="action_name">Duration</label> 
  <div class="row">
  <div class="col-md-6">
  <label class="control-label" for="action_id">From</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
  <div class="col-md-6">
    <label class="control-label" for="action_id">To</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md">
  </div>
  </div>
</div>

<div class="inputfield">
  <div class="inputfield col-md-12">
  <textarea placeholder="Project Name" class="form-control input-md">Other Comment</textarea>
  </div>
</div>
</div>
      </div>
    </div>
    <br>
  </div>
</div>
    
    <!-- </div> -->
<!-- ============== -->
<hr>
        <!--education-->
<!-- <post graduation> -->
<div class="row">
       <div class="col-xs-12">
            <div class="col-md-12" >
                          <h3>Educational Details</h3>  
                <!-- <div id="field">
                <div id="field0"> -->
<!-- Text input-->

<!-- </div>
</div> -->
</div>
</div> 
</div>
<hr>
       <!--collapse-->
       
       <div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Education- 10th
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
        <div class="form-group">
  <label class="col-md-4 control-label text-secondary" for="action_id">School Board</label>  
  <div class="inputfield">	  
  <input id="action_id" name="tGraduationBoard" type="text" class="form-control input-md" style="margin-bottom: 10px;">    
  </div>

    <label class="col-md-4 control-label text-secondary" for="action_id">School Name</label>  
  <div class="inputfield">
  <input id="action_id" name="tGraduationName" type="text"  class="form-control input-md" style="margin-bottom: 10px;">    
  </div>

  <div class="inputfield">
  <label class="col-md-4 control-label text-secondary" for="action_name">Duration</label> 
  <div class="row">
  <div class="col-md-6">
  <label class="control-label text-secondary" for="action_id">From</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md" style="margin-bottom: 10px;">
  </div>
  <div class="col-md-6">
    <label class="control-label text-secondary" for="action_id">To</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md" style="margin-bottom: 10px;">
  </div>
  </div>
</div>
 <div class="inputfield">
    <label class="col-md-4 control-label text-secondary" for="action_id">Standard</label>  
  <div class="inputfield">
  <input id="action_id" name="tStandard" type="text"  class="form-control input-md" style="margin-bottom: 10px;">    
  </div>
</div>
      <label class="col-md-4 control-label text-secondary" for="action_id">Result</label>  
  <div class="inputfield">
  <input id="action_id" name="tResult" type="text" placeholder="Cgpa" class="form-control input-md">    
  </div>

</div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
         Education- 12th
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
        <div class="form-group">
  <label class="col-md-4 control-label text-secondary" for="action_id">School Board</label>  
  <div class="inputfield">
  <input id="action_id" name="twGraduationBoard" type="text" class="form-control input-md" style="margin-bottom: 10px;">    
  </div>

    <label class="col-md-4 control-label text-secondary" for="action_id">School Name</label>  
  <div class="inputfield">
  <input id="action_id" name="twGraduationName" type="text"  class="form-control input-md" style="margin-bottom: 10px;">    
  </div>

  <div class="inputfield">
  <label class="col-md-4 control-label text-secondary" for="action_name">Duration</label> 
  <div class="row">
  <div class="col-md-6">
  <label class="control-label text-secondary" for="action_id">From</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md" style="margin-bottom: 10px;">
  </div>
  <div class="col-md-6">
    <label class="control-label text-secondary" for="action_id">To</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md" style="margin-bottom: 10px;">
  </div>
  </div>
</div>
 <div class="inputfield">
    <label class="col-md-4 control-label text-secondary" for="action_id">Standard</label>  
  <div class="inputfield">
  <input id="action_id" name="twStandard" type="text"  class="form-control input-md" style="margin-bottom: 10px;">    
  </div>
</div>
      <label class="col-md-4 control-label text-secondary" for="action_id">Result</label>  
  <div class="inputfield">
  <input id="action_id" name="twResult" type="text" placeholder="Cgpa" class="form-control input-md">    
  </div>

</div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Education- Graduation
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
        <div class="form-group">
  <label class="col-md-4 control-label text-secondary" for="action_id">Graduation Board</label>  
  <div class="inputfield">
  <input id="action_id" name="graduationBoard" type="text" class="form-control input-md" style="margin-bottom: 10px;">    
  </div>

    <label class="col-md-4 control-label text-secondary" for="action_id">College Name</label>  
  <div class="inputfield">
  <input id="action_id" name="graduationName" type="text"  class="form-control input-md" style="margin-bottom: 10px;">    
  </div>

  <div class="inputfield">
  <label class="col-md-4 control-label text-secondary" for="action_name">Duration</label> 
  <div class="row">
  <div class="col-md-6">
  <label class="control-label text-secondary" for="action_id">From</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md" style="margin-bottom: 10px;">
  </div>
  <div class="col-md-6">
    <label class="control-label text-secondary" for="action_id">To</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md" style="margin-bottom: 10px;">
  </div>
  </div>
</div>
 <div class="inputfield">
    <label class="col-md-4 control-label text-secondary" for="action_id">Standard</label>  
  <div class="inputfield">
  <input id="action_id" name="standard" type="text"  class="form-control input-md" style="margin-bottom: 10px;">    
  </div>
</div>
      <label class="col-md-4 control-label text-secondary" for="action_id">Result</label>  
  <div class="inputfield">
  <input id="action_id" name="result" type="text" placeholder="Cgpa" class="form-control input-md">    
  </div>

</div>
      </div>
    </div>
  </div>
  
  <div class="card">
    <div class="card-header" id="headingFour">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
          Education- Post Graduation
        </button>
      </h2>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
      <div class="card-body">
       <div class="form-group">
  <label class="col-md-4 control-label text-secondary" for="action_id">Post Graduation Board</label>  
  <div class="inputfield">
  <input id="action_id" name="pGraduationBoard" type="text" class="form-control input-md" style="margin-bottom: 10px;">    
  </div>

    <label class="col-md-4 control-label text-secondary" for="action_id">College Name</label>  
  <div class="inputfield">
  <input id="action_id" name="pGraduationName" type="text"  class="form-control input-md" style="margin-bottom: 10px;">    
  </div>

  <div class="inputfield">
  <label class="col-md-4 control-label text-secondary" for="action_name">Duration</label> 
  <div class="row">
  <div class="col-md-6">
  <label class="control-label text-secondary" for="action_id">From</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md" style="margin-bottom: 10px;">
  </div>
  <div class="col-md-6">
    <label class="control-label text-secondary" for="action_id">To</label>  
  <input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md" style="margin-bottom: 10px;">
  </div>
  </div>
</div>
 <div class="inputfield">
    <label class="col-md-4 control-label text-secondary" for="action_id">Standard</label>  
  <div class="inputfield">
  <input id="action_id" name="pStandard" type="text"  class="form-control input-md" style="margin-bottom: 10px;">    
  </div>
</div>
      <label class="col-md-4 control-label text-secondary" for="action_id">Result</label>  
  <div class="inputfield">
  <input id="action_id" name="pResult" type="text" placeholder="Cgpa" class="form-control input-md">    
  </div>

</div>
      </div>
    </div>
  </div>
</div>
      <hr>
       
        <!--sociallink-->
<br>
<div class="row">
          <label class="col-md-3 control-label">Social Link</label>
          <div class="controls col-sm" id="profs">
      <%--       <form class="input-append"> --%>
              <div id="field"> 
                <input
                  autocomplete="off"
                  class="form-control col-md-10"
                  id="field1"
                  name="link"
                  type="text"
                  placeholder="E.g. Github,Linkedin"
                  data-items="5"
                />
                <button id="b1" class="btn add-more bg-success" type="button">+</button>
              </div>

        <%--     </form> --%>
          </div>
</div>


        <div class="inputfield">
          <label>Total Years of Experience</label>
          <input
            type="number"
            min="0"
            class="form-control"
            name="totalExperience"
            placeholder="Total number of years and months of experience"
            required
          />
        </div>
      
		<center><center> <button onclick="location.href ='form2'" type="submit" class="btn btn-lg btn-warning mt-4">Submit</button></center>
        </div>
        <!-- <input type="submit" value="submit" /> -->
      </form:form>
      
      
      
      
      <!-- <form>
  <label for="username">Username:</label>
  <input type="text" id="username" name="username" required>
  <input type="submit">
</form> -->


<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.8.0/bootstrap-tagsinput.min.js"></script>
    
    <script src='<c:url value="/resources/js/form2.js" />'></script>

    <script>
   function myFunction() {
    var checkornot=document.getElementById("chk");
    var months=document.getElementById("checkdis");
    if(checkornot.checked==true){
      months.disabled = true;
    }else{
      months.disabled = false;
    }
}
    </script>
  </body>
</html>