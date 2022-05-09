<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"   uri="http://www.springframework.org/tags" %>   
    
<!DOCTYPE html>
<html>
<head>
      <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
      <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Edit Timetable</title>
</head>
<body>

<div class="pull-right" style="padding-right:50px">
                <a href="<c:url value="/welcome" />"><b>Home</b></a>
           </div>

<br><br>

<section class="container">
      <div class="row">
        <div class="thumbnail">
           <div class="caption">
           
           
           
                         <table class="table table-hover">
                            <tr>
                                <th colspan="10" class="text-center">
                                    BUSINESS INFORMATION TECHNOLOGY
                                </th>  
                            </tr> 
                            <tr>
                                <th class="text-center">ID</th>
                                <th class="text-center">UNIT CODE</th>
                                <th class="text-center">UNIT NAME</th>
                                <th class="text-center">LECTURER</th>
                                <th class="text-center">L/CONTACTS</th>
                                <th class="text-center">DAY</th>
                                <th class="text-center">TIME</th>
                                <th class="text-center">VENUE</th>
                                <th class="text-center" colspan="2">ACTION</th>
                                
                            </tr>
                <c:forEach items="${editTimetable}" var="bbit">          
                            <tr>
                                <td class="text-center">${bbit.id}</td>
                                <td class="text-center">${bbit.unit_code}</td>
                                <td class="text-center">${bbit.unit_name}</td>
                                <td class="text-center">${bbit.lecturer}</td>
                                <td class="text-center">${bbit.lecturer_contacts}</td>
                                <td class="text-center">${bbit.day}</td>
                                <td class="text-center">${bbit.time}</td>
                                <td class="text-center">${bbit.venue}</td>
                                
                                <td>
                                    <spring:url value="/update/${bbit.id }" var="updateURL" />
                                        <a href="${updateURL }"> 
                                            <button type="button" class="btn btn-success">
                                                <span class="glyphicon glyphicon-edit"></span> Update
                                            </button>
                                        </a>
                                </td>
                                
                                <td>
                                     <spring:url value="/delete/${bbit.id }" var="deleteURL" />
                                         <a href="${deleteURL }">
                                              <button type="button" class="btn btn-danger">
                                                 <span class="glyphicon glyphicon-remove"></span> Delete
                                              </button>  
                                         </a>
                                </td>
                            </tr>
                </c:forEach>             
                        </table>
                        
        </div>
        </div>                 
    </div>                      
</section>


</body>
</html>