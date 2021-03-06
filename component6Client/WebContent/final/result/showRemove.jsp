<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ShowRemove EmployeeData</title>

</head>
<body>
	<jsp:useBean id="SoapService" scope="session"
		class="model.SoapserviceProxy" />
	<div class="container  mt-5 text-center ">
		<br> <br>
		<h3>ShowRemove Target Employee Data</h3>
		<br>
		<%
			String input = request.getParameter("id");
/* 			out.print("findByid " + input); */
			int id = Integer.parseInt(input);
			model.Empolyee emp = SoapService.findByid(id);
		%>

		<form action="removeEmp.jsp" method="post">
			<div class="form-group row">
				<label for="id" class="col-sm-2 col-form-label">EmployeeID</label>
				<div class="col-sm-10">
					<input type="text" readonly class="form-control-plaintext"
						name="id" id="id" value="<%=emp.getId()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="Name" class="col-sm-2 col-form-label">Name</label>
				<div class="col-sm-10">
					<input type="text" readonly class="form-control-plaintext"
						name="Name" id="Name" value="<%=emp.getName()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="Salary" class="col-sm-2 col-form-label">Salary</label>
				<div class="col-sm-10">
					<input type="text" readonly class="form-control-plaintext"
						name="Salary" id="Salary" value="<%=emp.getSalary()%>">
				</div>
			</div>
			<button type="submit" name="delete" class="btn btn-danger">Delete</button>
			<button type="submit" name="cancel" class="btn btn-default">Cancel</button>
		</form>
</body>
</html>