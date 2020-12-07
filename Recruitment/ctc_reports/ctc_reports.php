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
    <li class="breadcrumb-item active">CTC Reports</li>
  </ol>
  <!-- Example DataTables Card-->
  <div class="card mb-3">
    <div class="card-header">
	<table class="table table-bordered"> 
	<tr> 
     <td> 
		<select class="form-control" id="ctc_report" name="ctc_report" onchange="report()" >
				<option value="">Choose Employee</option>
			<?php $stmt = $con->query("SELECT xtc.employee_id,yme.user_name FROM x_table_ctcapproval xtc join y_masters_employee yme on xtc.employee_id=yme.emp_no where xtc.status=1");
				while ($row = $stmt->fetch()) {?>
				 <option value="<?php echo $row['employee_id']; ?>"> <?php echo $row['user_name']; ?> </option>
			<?php } ?>
		</select> 
	 </td>
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
	var ctc_report=$('#ctc_report').val();// alert(ctc_report);
	$.ajax({
    type:"GET",
	data:"ctc_report="+ctc_report,
    url:"Recruitment/ctc_reports/response.php",
    success:function(data){
      $("#response").html(data);
    }
  })
}
</script>
<script src="js/sb-admin-datatables.min.js"></script>