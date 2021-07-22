<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"   uri="http://www.springframework.org/tags" %>   
    
<!DOCTYPE html>
<html>
<head>
      <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css">
     <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
     <link rel="stylesheet" href="resources/bootstrap/js/bootstrap.js">
     <link rel="stylesheet" href="resources/bootstrap/js/bootstrap.min.js">
  
<meta charset="ISO-8859-1">
<title>User Form</title>
</head>

<spring:url value="/save" var="saveURL" />
 
<section class="container">

 <div class="row">
        <div class="thumbnail">
           <div class="caption">
    <form:form modelAttribute="userForm" method="post" action="${saveURL }" >
    <form:hidden path="id"/>
  <table class="table table-hover">
     <tr>
          <th class="text-center">UNIT CODE</th>
          <th class="text-center">UNIT NAME</th>
          <th class="text-center">LECTURER</th>
          <th class="text-center">L/CONTACTS</th>
          <th class="text-center">DAY</th>
          <th class="text-center">TIME</th>
          <th class="text-center">VENUE</th>
          <th class="text-center">SAVE</th>
     </tr>
     <tr>
          <td class="text-center">
              <form:input path="unit_code"/>
          </td>
          <td class="text-center">
              <form:input path="unit_name"/>
          </td>
          <td class="text-center">
              <form:input path="lecturer"/>
          </td>
          <td class="text-center">
              <form:input path="lecturer_contacts"/>
          </td>
          <td class="text-center">
              <form:input path="day"/>
          </td>
          <td class="text-center">
              <form:input path="time"/>
          </td>
          <td class="text-center">
              <form:input path="venue"/>
          </td>
          <td class="text-center">
              <button type="submit">Save</button>
          </td>
      </tr>
  </table>
  
 </form:form>
 </div>
 </div>
 </div>
 </section>  

</body>
</html>