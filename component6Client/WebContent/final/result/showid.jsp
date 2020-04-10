<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <jsp:useBean id="SoapService" scope="session" class="model.SoapserviceProxy" />
<%  

String input =request.getParameter("id");  
out.print("findByid "+input);  
int id = Integer.parseInt(input);	
model.Empolyee emp = SoapService.findByid(id);

%>  
<h3><% out.print(emp.getId()); %></h3>
<br>
<h3><% out.print(emp.getName()); %></h3>
<br>
<h3><% out.print(emp.getSalary()); %></h3>
</body>
</html>