<%@page import="model.Empolyee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.Vector " %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ShowEmployee</title>
</head>
<body>
<jsp:useBean id="SoapService" scope="session" class="model.SoapserviceProxy" />
<div class="container text-center mt-5  ">
<h1>Employee List</h1>
<table class="table  table-bordered table-hover">
<thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Salary</th>
    </tr>
  </thead>
    <tbody>
    <%
    for ( Object emp : SoapService.findAllEmpolyee()) {

  	  model.Empolyee target =(model.Empolyee) emp;
  	out.println("<tr>");
 	  out.println("<th scope='row'>" + target.getId() +"</th>"); 
  	  out.println("<td>" + target.getName()+"</td>"); 
  	  out.println("<td> " + target.getSalary()+"</td>"); 
  	out.println("</tr>");
  }  
    
    %>
    </tbody>
</table>
<a href="../index.jsp" style=" text-decoration: none;"><button type="button" class="btn  btn-outline-primary btn-lg btn-block">Back to Home page</button></a>
</div>




<!-- Vector v =  SoapService.findAllEmpolyee(); 
out.print(SoapService.findAllEmpolyee().length) ; 
   for ( Object emp : SoapService.findAllEmpolyee()) {
	  out.println("<br> : " + emp); 
	  model.Empolyee target =(model.Empolyee) emp;
	  out.println("ID  : " + target.getId()); 
	  out.println("Name  : " + target.getName()); 
	  out.println("Salary  : " + target.getSalary()); 
}   
 -->

</body>
</html>