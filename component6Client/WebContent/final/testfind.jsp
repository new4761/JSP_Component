<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="SoapService" scope="session" class="model.SoapserviceProxy" />

<% 
 SoapService.findAllEmpolyee(); 
/*  Vector<model.Empolyee> empList  = SoapService.findAllEmpolyee();
out.print(SoapService.findAllEmpolyee()); 
for (model.Empolyee emp : empList) {
	  out.println("getId : " + emp.getId()); 
}  */
%>
</body>
</html>