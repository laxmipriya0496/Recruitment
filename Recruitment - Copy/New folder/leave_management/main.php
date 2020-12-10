<?php
require '../../connect.php';
?>

<div class="content-wrapper" id="main_content">
<div class="container-fluid">
  <!-- Breadcrumbs-->
  <ol class="breadcrumb">
    <li class="breadcrumb-item">
      <a href="#">Dashboard</a>
    </li>
    <li class="breadcrumb-item active">Leave Management <?php if($con) {	echo "connect"; } ?></li>
  </ol>
  <div class="card mb-12">
   
    <div class="card-body">
     <div class="row col-sm-12">
		<div class="col-sm-6"> 
		<h4 style="border:1px solid blue;background-color:yellow;">Leave Status</h4> <br>
		<input type="button" class="btn btn-success btn-md" name="leave_apply" id="leave_apply" value="Leave Apply" onclick="leave_apply()">
		<input type="button" class="btn btn-danger btn-md" name="leave_available" id="leave_available" value="Leave Availability" onclick="leave_available()">
		<input type="button" class="btn btn-primary btn-md" name="leave_approve" id="leave_approve" value="Leave Approve" onclick="leave_approve()">
		<br>
		<br>
		 <div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			  <thead>
				  <tr>
					  <th>#</th>
					  <th colspan="2">Workers Type</th>
					  <th colspan="1">Days</th>
				  <tr>
			  </thead>
			  <tbody>
			  <?php 
			  $id=1;
			  $data=$con->query("SELECT lc.type as type,ml.leave_name,ml.no_of_days FROM `y_leave_category` lc join y_master_leave ml on lc.leave_ids=ml.id where  lc.status=1");
			  while($datas=$data->fetch(PDO::FETCH_ASSOC))
			  {?>
				<tr>
					<td><?php echo $id++; ?></td> 
					<td><?php echo $datas['type']; ?></td> 
					<td><?php echo $datas['leave_name']; ?></td> 
					<td><?php echo $datas['no_of_days']; ?></td> 
				</tr>
			  <?php } ?>
			   </tbody>
			</table> 
		</div>
		</div>
		<div class="col-sm-6">
			<h4 style="border:1px solid blue;background-color:yellow;">Leave Details</h4> <br>	
	
      <div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			  <thead>
				  <tr>
					  <th>#</th>
					  <th colspan="2">Leave</th>
				  <tr>
			  </thead>
			  <tbody>
			  <?php 
			  $id=1;
			  $data=$con->query("SELECT leave_name,no_of_days FROM y_master_leave where status=1");
			  while($datas=$data->fetch(PDO::FETCH_ASSOC))
			  {?>
				<tr>
					<td><?php echo $id++; ?></td> 
					<td><?php echo $datas['leave_name']; ?></td> 
					<td><?php echo $datas['no_of_days']; ?></td> 
				</tr>
			  <?php } ?>
			   </tbody>
			</table> 
		</div>
 
    </div>
    </div>
    </div>
	<hr>
	<div class="card-body">
	<div class="row col-sm-12">
		<div class="col-sm-12"> <h3><center><b>Leave Applied Details</b></center></h3>
		
		 <div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			  <thead>
				  <tr>
					  <th>#</th>
					  <th colspan="1">Name</th>
					  <th colspan="1">Leave Type</th>
					  <th colspan="1">No of Days</th>
					  <th colspan="1">From Date</th>
					  <th colspan="1">Reason</th>
					  <th colspan="1">Approver Name</th>
					  <th colspan="1">Month - Year</th>
					  <th colspan="1">Status of Applied</th>
				  <tr>
			  </thead>
			  <tbody>
			  <?php 
			  $id=1;
			  $data=$con->query("SELECT me.user_name,ml.leave_name,lds.no_of_days,lds.from_date,lds.reason,lds.approver_name,lds.month,lds.year,case when lds.status=1 then 'Waiting For Approval' when lds.status=3 then 'Rejected' else 'Approved' end as status FROM y_leave_details lds join y_masters_employee me on lds.employee_name=me.id join y_master_leave ml on lds.leave_type=ml.id");
			  while($datas=$data->fetch(PDO::FETCH_ASSOC))
			  {?>
				<tr>
					<td><?php echo $id++; ?></td> 
					<td><?php echo $datas['user_name']; ?></td> 
					<td><?php echo $datas['leave_name']; ?></td> 
					<td><?php echo $datas['no_of_days']; ?></td> 
					<td><?php echo date('d-m-Y',strtotime($datas['from_date'])); ?></td> 
					<td><?php echo $datas['reason']; ?></td> 
					<td><?php echo $datas['approver_name']; ?></td> 
					<td><?php echo $datas['month'].'-'.$datas['year']; ?></td> 
					<td><?php echo $datas['status']; ?></td> 
				</tr>
			  <?php } ?>
			   </tbody>
			</table> 
		</div>
		</div>
	</div>
    </div>
  </div>
</div>
</div>
<script>
function leave_apply()
{
	$.ajax({
    type:"POST",
    url:"recruitment/leave_management/new.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function leave_available()
{
	$.ajax({
    type:"POST",
    url:"recruitment/leave_management/leave_available.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function leave_approve()
{
	$.ajax({
    type:"POST",
    url:"recruitment/leave_management/leave_approve.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
</script>
