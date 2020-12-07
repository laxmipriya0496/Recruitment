<?php
require '../../connect.php';
include("../../user.php");
$userrole=$_SESSION['userrole'];
?> 
<div class="content-wrapper" style="padding-left: 50px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-12">
          <div class="col-sm-12">
            <h1>Candidate List</h1>
          </div>
          <div class="col-sm-12">
		 
	<?php	
		 if($userrole=='ROLE-003')
				{?>
	<table id="example1" class="table table-bordered">
	   <thead>
		<tr>
		  <th>Id</th>
		  <th>Candidate Name</th>
		  <th>Position</th> 
		  <th>Status</th> 
		   <th>Action</th>
		</tr>
      </thead>
      <tbody>
      <?php
      $emp_sql=$con->query("SELECT * FROM candidate_form_details cfd join emp_personal_details epd on cfd.id=epd.emp_id where  cfd.status=17");
      $i=1;
      while($emp_res = $emp_sql->fetch(PDO::FETCH_ASSOC))
      {
      $emp_id = $emp_res['id'] ;
      ?>
      <tr>
	  <td><?php echo $emp_res['id']; ?></td>
		  <td><?php echo $emp_res['name']; ?></td>
		 
		  <td><?php echo $emp_res['email_id']; ?></td>
		   
		     <td>
		  <?php 
		  if($emp_res['status'] == 17)
		  {
			  ?>
		<span style="color:orange;text-align:center;"><b>Candidate Submitted Details</b></span>
		  <?php
		  } 
		  ?>
		  </td>
		  
		   <td> 
		   <?php  if($emp_res['status'] ==17){?>  <button class="btn btn-primary btn-sm" data-id="<?php echo $emp_res['id']; ?>" onclick="admin_view(<?php echo $emp_res['id']; ?>)"> View</button>
	 <?php } ?>
	 

		 </td>
      </tr>
      <?php
      }
      ?>
      </tbody>
      </table>
				<?php } ?>
				
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
		 
  function admin_view(v){
	$.ajax({
	type:"POST",
	url:"Recruitment/applicationform/admin_view.php?id="+v,
	success:function(data)
	{
		$(".content-wrapper").html(data);
	}
	})
}  
</script>