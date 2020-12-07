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
    <li class="breadcrumb-item active">Leave Master <?php if($con) {	echo "connect"; } ?></li>
  </ol>
  <!-- Example DataTables Card-->
  <div class="card mb-3">
    <div class="card-header">
      <i class="fa fa-table"></i> Leave Master
	  <input type="button" style="float:right;" class="btn btn-warning" name="new" value="ADD" onclick="Leave_new()">
	  </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
          <tr>
          <th>#</th>
          <th>Leave</th>
          <th>No of days</th>
          <th>Status</th>
          <th>Actions</th>
          </tr>
          </thead>
         
          <tbody>
          <?php

          $sql=$con->query("SELECT id,leave_name,no_of_days,case when status=1 then 'Active' else 'InActive' end as status FROM `y_master_leave` where  status=1");

          $i=1;
          while($res = $sql->fetch(PDO::FETCH_ASSOC))
          {
          ?>
          <tr>
          <td><?php echo $i; ?></td>
          <td><?php echo $res['leave_name'] ; ?></td>
          <td><?php echo $res['no_of_days'] ; ?></td>
          <td><?php echo $res['status'] ; ?></td>
          <td>
          <button class="btn btn-primary"  value="<?php echo $res['id']; ?>" onclick="Leave_view(this.value)"> View</button>
          <button class="btn btn-danger" value="<?php echo $res['id']; ?>" onclick="Leave_edit(this.value)">Edit</button>
          </td>
          </tr>

          <?php
          $i++;
          }
          ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
</div>
<script>
function Leave_view(id)
{
	$.ajax({
    type:"GET",
    data:"ids="+id,
    url:"/Frontdesk/leave_master/Leave_master/view.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Leave_edit(ids)
{
	$.ajax({
    type:"GET",
    data:"ids="+ids,
    url:"/Frontdesk/leave_master/Leave_master/edit.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Leave_new()
{
	$.ajax({
    type:"POST",
    url:"/Frontdesk/leave_master/Leave_master/new.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
</script>
