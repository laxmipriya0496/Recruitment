<?php
require '../../connect.php';
include("../../user.php");
$userrole=$_SESSION['userrole'];
?>
<div class="content-wrapper" style="padding-left: 50px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Department Mapping</h1>
          </div>
          <div class="col-sm-6">
		
		  <a onclick="department_mapping()" style="float: right;" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> ADD</a>
	
		
		
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
      <th>#</th>
      <th>Company Name</th>
      <th>Department Name</th>
      <th>Head Name</th>
      <th>Status</th>
      <th>Tools</th>
      </thead>
      <tbody>
      <?php
      $emp_sql=$con->query("SELECT *,d.id as dmid FROM `department_mapping` d join `z_department_master` z on d.department_id=z.id join z_user_master u on u.user_id=d.department_head join company_master c on c.id=d.department_id  ");
      $i=1;
      while($emp_res = $emp_sql->fetch(PDO::FETCH_ASSOC))
      {
       ?>
      <tr>
      <td><?php echo $emp_res['dmid']; ?></td>
      <td><?php echo $emp_res['companyname']; ?></td>
      <td><?php echo $emp_res['dept_name']; ?></td>
      <td><?php echo $emp_res['user_name']; ?></td>
	  <td>
	  <?php
	  if($emp_res['status']==1)
	  {
		  echo "Active"; 
	  }
	  else
	  {
		  echo "Inactive";
	  }
	  ?>
	  </td>
      <td>
	  <button class="btn btn-success btn-sm edit btn-flat" data-id="<?php echo $emp_res['dmid']; ?>" onclick="question_edit(<?php echo $emp_res['dmid']; ?>)"><i class="fa fa-edit"></i> Edit</button>
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
   function department_mapping()
    {
    $.ajax({
    type:"POST",
    url:"/Recruitment/Recruitment/masters/new_department_mapping.php",
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  function question_edit(v)
    {
    $.ajax({
    type:"POST",
    url:"/Recruitment/Recruitment/masters/edit_department_mapping.php?id="+v,
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  
</script>