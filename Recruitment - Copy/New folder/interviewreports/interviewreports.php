<?php
require '../../connect.php';
?>

<div class="content-wrapper">
<div class="container-fluid">
  <!-- Breadcrumbs-->
  <ol class="breadcrumb">
    <li class="breadcrumb-item">
      <a href="#">Dashboard</a>
    </li>
    <li class="breadcrumb-item active">Weeekly Reports</li>
  </ol>
  <!-- Example DataTables Card-->
  <div class="card mb-3">
    <div class="card-header">
<table class="table table-bordered"> 
   <tr><td>  <input type="date" style="float:left;" class="form-control" name="from_date" id="from_date"></td>
     <td> <input type="date" style="float:left;" class="form-control" name="to_date" id="to_date" onchange="report()"></td>
	 </tr>
	 </table>
	</div>
	<div class="card-body" id="response">
      
	</div>
  </div>
</div>
<script>
function report()
{  
	var from_date=$('#from_date').val();// alert(from_date);
	var to_date=$('#to_date').val();// alert(to_date);
	$.ajax({
    type:"GET",
	data:"from_date="+from_date+"&to_Date="+to_date,
    url:"Recruitment/interviewreports/response.php",
    success:function(data){
      $("#response").html(data);
    }
  })
}
</script>
<script src="js/sb-admin-datatables.min.js"></script>