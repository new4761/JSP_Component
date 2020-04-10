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
String inputId =request.getParameter("id");  
String inputName =request.getParameter("Name");  
String inputSalary =request.getParameter("Salary");  
int id = Integer.parseInt(inputId);	
double Salary = Double.parseDouble(inputSalary);
model.Empolyee emp  = new model.Empolyee();
emp.setId(id);
emp.setName(inputName);
emp.setSalary(Salary);
SoapService.insertEmp(emp);

%>
<jsp:include page="showAll.jsp" />  
</body>
</html>