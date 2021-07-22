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
<title>Edit Session</title>
</head>
<body>
      <section>
            <div class="pull-right" style="padding-right:50px">
               <a href="<c:url value="/lecturerDashboard" />">Logout</a>
            </div>
         </section>
       
       <section class="container">
      <div class="row">
        <div class="thumbnail">
           <div class="caption">
           
                         <table class="table table-hover">
                            <tr >
                                <th colspan="8" class="text-center">
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
                                <th class="text-center">SESSION STATUS</th>
                                <th class="text-center">UPDATE</th>
                            </tr>
                <c:forEach items="${editSession}" var="bbit">          
                            <tr>
                                <td class="text-center">${bbit.id}</td>
                                <td class="text-center">${bbit.unit_code}</td>
                                <td class="text-center">${bbit.unit_name}</td>
                                <td class="text-center">${bbit.lecturer}</td>
                                <td class="text-center">${bbit.lecturer_contacts}</td>
                                <td class="text-center">${bbit.day}</td>
                                <td class="text-center">${bbit.time}</td>
                                <td class="text-center">${bbit.venue}</td>
                                <td class="text-center">${bbit.session}</td>
                                 <td>
                                     <spring:url value="/updateSession/${bbit.id }" var="updateURL" />
                                         <a href="${updateURL }">Update</a>
                                </td>
                            </tr>
                            >
                </c:forEach>             
                        </table>
                        
        </div>
        </div>                 
    </div>                      
</section>
      
</body>
</html>