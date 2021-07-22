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
<title>Insert title here</title>
</head>
<body>
   <section>
      <div class="jumbotron">
        <div class="container">
          <h1>Units</h1>
          <p>Add Unit</p>
        </div>
      </div>
   </section>

<section class="container">
     <form:form method="POST" modelAttribute="newUnit2"  class="form-horizontal" enctype="multipart/form-data">
        <fieldset>
        <legend>Add new Unit</legend>
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="unitCode">Unit Code</label>
              <div class="col-lg-10">
                  <form:input id="unitCode" path="unitCode" type="text" class="form:input-large"/>
              </div>
           </div>
           
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="unitName">Unit Name</label>
              <div class="col-lg-10">
                  <form:input id="unitName" path="unitName" type="text" class="form:input-large"/>
              </div>
           </div>
           
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="lecturer">Lecturer</label>
              <div class="col-lg-10">
                  <form:input id="lecturer" path="lecturer" type="text" class="form:input-large"/>
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