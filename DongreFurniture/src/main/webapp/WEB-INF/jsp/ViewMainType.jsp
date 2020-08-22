<%@page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


	<link rel="stylesheet"
	href="css/viewmaintype.css">
	
	
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script type='text/javascript'>
 $(document).ready(function(){
	 var arrayReturn = [];
		
	 $.ajax({
			url : "viewall",
			async : true,
			dataType : 'json',
			success : function(data) {
				for (var i = 0, len = data.length; i < len; i++) {
					//	var desc = data[i].body;
					arrayReturn.push([ data[i].id, data[i].name,"<a href='deleteMainType?maintypeid="+data[i].id+"'>Delete</a>","<a href='updateMainType?maintypeid="+data[i].id+"&name="+data[i].name+"'>Update</a>"]);
				}
				inittable(arrayReturn);
			}
		});

		function inittable(data) {
			//console.log(data);
			$('#grid').DataTable({
				"aaData" : data
			});
		}
 });
</script>
</head>
<body>

<br>
<br>
<br>
<br>
	<div class="container">
	
<div class="row">
	
		
	<p id="pid"></p>
	<table id="grid" class="table table-striped table-bordered table-hover mx-auto my-2">
		<thead>
			<tr>
				<th class="text-center col-md-2">Main Type Id</th>
				<th class="text-center col-md-2">Main Type Name</th>
				<th class="text-center col-md-2">Delete</th>
				<th class="text-center col-md-2">Update</th>
			</tr>
		</thead>
		
		<tbody class="text-center">
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
		
		<tfoot>
			<tr>
				<th class="text-center">Main Type Id</th>
				<th class="text-center">Main Type Name</th>
				<th class="text-center">Delete</th>
				<th class="text-center">Update</th>
			</tr>
		</tfoot>
	</table>
	</div>
	</div>
	
	<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
</body>
</html>

