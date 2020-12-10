<?php
require '../../connect.php';
?>
<div class="content-wrapper" style="padding-left: 50px;">
<!-- Content Header (Page header) -->

<!-- Main content -->
<section class="content">
<section class="content-header">
<div class="container-fluid">
<div class="row mb-2">
<div class="col-sm-6">
<h1>CTC List</h1>
</div>
<div class="col-sm-6">
<a onclick="return add_ctc()" style="float: right;" data-toggle="modal" class="btn btn-primary"><i class="fa fa-plus"></i>ADD</a>
</div>
</div>
</div><!-- /.container-fluid -->
</section>
<div class="container-fluid">
<div class="row">
<div class="col-md-12">
<!-- Profile Image -->
<div class="card card-primary card-outline">
<div class="card-body box-profile">
<table id="example1" class="table table-bordered">
<thead>
<th>#</th>
<th>Name</th>
<th>Department</th>
<th>Position</th>
<th>Apptitude & Logical Results</th> 
<th>Actions</th>
</thead>
<tbody>
<?php
$emp_sql=$con->query("SELECT md.candidate_id,cfd.first_name,cfd.position,zdm.dept_name FROM `final_technical_team_details` md right join candidate_form_details cfd on md.candidate_id=cfd.id join z_department_master zdm on zdm.id=cfd.department where cfd.status=13");
$i=1;
while($ctc_res = $emp_sql->fetch(PDO::FETCH_ASSOC))
{
	$candidate_id=$ctc_res['candidate_id'];
	$answer=$con->query("SELECT count(cr.answer) as tot_marks FROM `candicate_results` cr join question_master qm on cr.question=qm.id where ueser_id='$candidate_id' and cr.answer=qm.answer_key");
	$total_mark=$answer->fetch(PDO::FETCH_ASSOC);
?>
<tr>
<td><?php echo $i++; ?></td>
<td><?php echo $ctc_res['first_name']; ?></td>
<td><?php echo $ctc_res['dept_name']; ?></td>
<td><?php echo $ctc_res['position']; ?></td>
<td><center><?php echo $total_mark['tot_marks']; ?></center></td>  
<td>
<button data-id="<?php echo $ctc_res['candidate_id']; ?>" onclick="ctc_edit(<?php echo $ctc_res['candidate_id']; ?>)"><i class="fa fa-edit"></i></button>
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
function add_ctc()
{
$.ajax({
type:"POST",
url:"Recruitment/ctcapproval/CTC_approval.php",
success:function(data){
$(".content").html(data);
}
})
}
function ctc_edit(v){
	$.ajax({
	type:"POST",
	url:"Recruitment/ctcapproval/CTC_edit.php?id="+v,
	success:function(data)
	{
		$(".content").html(data);
		
	}
	})
}
</script>