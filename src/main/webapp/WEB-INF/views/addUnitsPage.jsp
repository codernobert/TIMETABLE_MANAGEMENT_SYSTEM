<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"   uri="http://www.springframework.org/tags" %>   
    
<!DOCTYPE html>
<html>
<head>
      <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
      
<meta charset="ISO-8859-1">
<title>Add Units</title>
</head>
<body>
     <section>
    <div class="pull-left" style="padding-right:50px">
          <a href="<c:url value="/adminDashboard" />">Home</a>
    </div>
</section>

   <section>
      <div class="jumbotron">
        <div class="container">
          <h1>Units</h1>
          <p>Add Unit</p>
        </div>
      </div>
   </section>

<section class="container">
     <form:form method="POST" modelAttribute="newUnit"  class="form-horizontal" enctype="multipart/form-data">
        <fieldset>
        <legend>Add new Unit</legend>
           <form:hidden path="id"/>
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="unit_code">Unit Code</label>
              <div class="col-lg-10">
                  <form:input id="unit_code" path="unit_code" type="text" class="form:input-large"/>
              </div>
           </div>
           
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="unit_name">Unit Name</label>
              <div class="col-lg-10">
                  <form:input id="unit_name" path="unit_name" type="text" class="form:input-large"/>
              </div>
           </div>
           
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="lecturer">Lecturer</label>
              <div class="col-lg-10">
                  <form:input id="lecturer" path="lecturer" type="text" class="form:input-large"/>
              </div>
           </div>
           
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="lecturer_contacts">Lecturer Contacts</label>
              <div class="col-lg-10">
                  <form:input id="lecturer_contacts" path="lecturer_contacts" type="text" class="form:input-large"/>
              </div>
           </div>
           
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="day">Day</label>
              <div class="col-lg-10">
                  <form:input id="day" path="day" type="text" class="form:input-large"/>
              </div>
           </div>
           
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="time">Time</label>
              <div class="col-lg-10">
                  <form:input id="time" path="time" type="text" class="form:input-large"/>
              </div>
           </div>
           
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="venue">Venue</label>
              <div class="col-lg-10">
                  <form:input id="venue" path="venue" type="text" class="form:input-large"/>
              </div>
           </div>

           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="session">Session</label>
              <div class="col-lg-10">
                  <form:input id="session" path="session" type="text" class="form:input-large"/>
              </div>
           </div>
          
           <div class="form-group">
               <div class="col-lg-offset-2 col-lg-10">
                    <input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
               </div>
           </div>
        </fieldset>
     </form:form>
</section>
      
</body>
</html>