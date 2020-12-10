<?php
require '../../connect.php';
?>
<div class="content-wrapper" style="padding-left: 50px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Employee List</h1>
          </div>
          <div class="col-sm-6">
		  <a onclick="return add_employee()" style="float: right;" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> ADD</a>
          </div>
        </div>
      </div><!-- /.container-fluid -->
	</section>
    <!-- Main content -->
    <section class="content">
    <div class="container-fluid">
    <div class="row">
    <div class="col-md-12">
    <!-- Profile Image -->
    <div class="card card-primary card-outline">
    <div class="card-body box-profile">
    <table id="example1" class="table table-bordered">
    <thead>
      <th>Employee ID</th>
      <th>Position</th>
      <th>Name</th>
      <th>Mobile</th>
      <th>Member Since</th>
      <th>Tools</th>
      </thead>
      <tbody>
      <?php
      $emp_sql=$con->query("SELECT id,position, name, fathers_name, DOB, communication_address, permanent_address, mobile_num, email_id, aadhar_num, pan_num, voter_id, resume, status, created_by, created_on, modified_by, modified_on FROM emp_personal_details");
      $i=1;
      while($emp_res = $emp_sql->fetch(PDO::FETCH_ASSOC))
      {
      $emp_id = $emp_res['id'] ;
      ?>
      <tr>
      <td><?php echo $emp_res['id']; ?></td>
      <td><?php echo $emp_res['position']; ?></td>
      <td><?php echo $emp_res['name']; ?></td>
      <td><?php echo $emp_res['mobile_num']; ?></td>
      <td><?php echo date('M d, Y', strtotime($emp_res['created_on'])) ?></td>
      <td>
      <button class="btn btn-success btn-sm edit btn-flat" onclick="edit_employee(<?php echo $emp_res['id']; ?>)" data-id="<?php echo $emp_res['id']; ?>"><i class="fa fa-edit"></i> Edit</button>
      </td>
      </tr>
      <?php
      }
      ?>
      </tbody>
      </table>
      </div>
<!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </div><!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>

<script>
		function add_employee()
    {
    $.ajax({
    type:"POST",
    url:"/Recruitment/Recruitment/Recruitment/employee_add.php",
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  
	function edit_employee(v){
	$.ajax({
	type:"POST",
	url:"Recruitment/Recruitment/Recruitment/employee_edit.php?id="+v,
	success:function(data)
	{
		$(".content").html(data);
	}
	})
  }
</script>