<?php
require '../../connect.php';
?>

<div class="content-wrapper" id="main_content">
<div class="container-fluid">
  <div class="card mb-3">
    <div class="card-header">
      <i class="fa fa-table"></i> Leave Master
	  <input type="button" style="float:right;" class="btn btn-warning" name="back" value="BACK" onclick="Leave_master()">
	  </div>
    <div class="card-body">
	 <form method="POST">
		  <div class="form-group row">
			<label for="Leave" class="col-sm-2 col-form-label">Leave Name</label>
			<div class="col-sm-10">
			  <input type="text"  class="form-control" id="Leave" name="Leave" placeholder="Leave Name">
			</div>
		  </div>
		  <div class="form-group row">
			<label for="days" class="col-sm-2 col-form-label">No of Days</label>
			<div class="col-sm-10">
			  <input type="number" class="form-control" id="no_of_days" name="no_of_days" placeholder="No of Days..">
			</div>
		  </div>
		  <div class="form-group row">
			<div class="col-sm-10"></div>
			<div class="col-sm-2">
			  <input type="button" class="btn btn-primary btn-md" onclick="Leave_create()" value="Create">
			</div>
		  </div>
	</form>
    </div>
  </div>
</div>
</div>
<script>
function Leave_master()
{
  $.ajax({
    type:"POST",
    url:"/Frontdesk/HR_Management/Leave_master/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Leave_create()
{
	var field=1;
	var data = $('form').serialize();
	$.ajax({
		type:'GET',
		data:"field="+field, data,
		url:'/Frontdesk/HR_Management/Leave_master/Leave_new_submit.php',
		success:function(data)
		{
			if(data==0)
			{
				alert("Created Leave Master");
				Leave_master();
			}
			else
			{
				alert("Not Created Leave Master");
				Leave_master();
			}	
		}       
	});
}
</script>
