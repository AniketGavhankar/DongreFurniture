<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dongre</title>
</head>
<body>

<jsp:include page="AdminMaster.jsp"></jsp:include>

	<div class="column2 col-lg-10 col-md-10 col-sm-12">
		
		<br><br>
<form name='frm' action='SaveMainType' method='POST'>
<input type='text' name='name'  value='' style='width:400px;height:30px' placeholder='Enter the Furniture Type'/>
<br><br>
<input type='submit'  name='s' value='Add Funiture Type' style='width:200px;height:30px' />
	<div class="column2 col-lg-10 col-md-10 col-sm-12">
</form>
<span style='color:white;background-color:red;'>${msg}</span>

			</div>
		</div>
	</div>
</body>
</html>