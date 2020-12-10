<?php require '../../connect.php'; 
include("../../user.php"); 
$userrole=$_SESSION['userrole']; 
$id=$_REQUEST['id'];
$stmt = $con->prepare("SELECT * FROM `emp_personal_details` where emp_id='$id'"); 
$stmt->execute(); 
$row = $stmt->fetch();
?>

<div class="container-fluid">
<div class="card mb-3">
<div class="card-header">
<i class="fa fa-table"></i> INTERVIEW FEEDBACK DETAILS EDIT
<a onclick="return back_ctc()" style="float: right;" data-toggle="modal" class="btn btn-primary"><i class="fa fa-plus"></i>Back</a>
</div>
<div class="card-body" id="printableArea">
<form role="form" action="recruitment/interview_feedback/md_update.php" method="post" enctype="multipart/type">

<table class="table table-bordered">
	<tr>
		<td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
		<td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
	</tr>	
	<tr> <input type="hidden" class="form-control" id="emp_id" name="emp_id" value="<?php echo $id; ?>">
		<td>Name:</td>
		<td colspan="2"><input type="text" class="form-control" id="name" name="name" value="<?php echo  $row['name'];?>"readonly></td>
		<td>Father Name:</td>
		<td colspan="2"><input type="text" class="form-control" id="father_name" name="father_name" value="<?php echo  $row['fathers_name'];?>"readonly></td>
	</tr>
	<tr> 
		<td>Mobile No:</td>
		<td colspan="2"><input type="text" class="form-control" id="mno" name="mno" value="<?php echo  $row['mobile_num'];?>"readonly></td>
		<td>Mail Id:</td>
		<td colspan="2"><input type="text" class="form-control" id="mail_id" name="mail_id" value="<?php echo  $row['email_id'];?>"readonly></td>
	</tr>
	<tr> 
		<td>Communication Address:</td>
		<td colspan="2"><input type="text" class="form-control" id="caddress" name="caddress" value="<?php echo  $row['communication_address'];?>"readonly></td>
		<td>Permanent Address:</td>
		<td colspan="2"><input type="text" class="form-control" id="paddress" name="paddress" value="<?php echo  $row['permanent_address'];?>"readonly></td>
	</tr>
	<tr> 
		<td>Adhar No:</td>
		<td colspan="1"><input type="text" class="form-control" id="adhar_no" name="adhar_no" value="<?php echo  $row['aadhar_num'];?>"readonly></td>
		<td>Pan No:</td>
		<td colspan="1"><input type="text" class="form-control" id="pan_no" name="pan_no" value="<?php echo  $row['pan_num'];?>"readonly></td>
		<td>Voter No:</td>
		<td colspan="1"><input type="text" class="form-control" id="voter_no" name="voter_no" value="<?php echo  $row['voter_id'];?>"readonly></td>
	</tr>
	<tr> 
		<td>Adhar View:</td>
		<td colspan="1"><input type="text" class="form-control" id="adhar_view" name="adhar_view" value="<?php echo  $row['adhar_card'];?>"readonly></td>
		<td>Pan View:</td>
		<td colspan="1"><input type="text" class="form-control" id="pan_view" name="pan_view" value="<?php echo  $row['pan_card'];?>"readonly></td>
		<td>Voter View:</td>
		<td colspan="1"><input type="text" class="form-control" id="voter_view" name="voter_view" value="<?php echo  $row['voter_card'];?>"readonly></td>
	</tr>
	<tr> 
		<td>Resume View:</td>
		<td colspan="5"><input type="text" class="form-control" id="adhar_view" name="adhar_view" value="<?php echo  $row['resume'];?>"readonly></td> 
	</tr>
	<tr>
	 <td colspan="6"><center><b>Employee Educational Details</b></center></td>
	</tr>
	<tr>
		 <th>Education</th>
		 <th>Institue Name</th>
		 <th>Degree / Field of Specialization</th>
		 <th>Percentage</th>
		 <th>Year of Passing</th>
		 <th>Attachement</th>
	 </tr>
	 <tr>
		<?php $sql=$con->query("SELECT * FROM `emp_qualification` where emp_id='$id'");  while($rows = $sql->fetch(PDO::FETCH_ASSOC)) { ?>
		 <td><?php echo $rows['education']; ?></td>
		 <td><?php echo $rows['institution_name']; ?></td>
		 <td><?php echo $rows['degree'].'-'.$rows['field_of_specialization']; ?></td>
		 <td><?php echo $rows['percentage']; ?></td>
		 <td><?php echo $rows['year_of_passing']; ?></td>
		 <td><iframe src="https://docs.google.com/viewer?url=https://Recruitment/Recruitment/Recruitment/uploads/<?php echo $id; ?>/<?php echo $rows['attachment']; ?>">a</iframe></td>
		<?php } ?>
 	 </tr>
 	 <tr>
	 <td colspan="6"><center><b>Experience Details</b></center></td>
	 </tr>
	<tr>
		 <th>Id</th>
		 <th>Organization Name</th>
		 <th>Designation</th>
		 <th>From Date</th>
		 <th>To Date</th>
		 <th>Total Year of Experience</th> 
	 </tr><?php $d=1;$sql=$con->query("SELECT * FROM `emp_details` where emp_id='$id'");  while($rows = $sql->fetch(PDO::FETCH_ASSOC)) { ?>
	  <tr>
		 <td><?php echo $d++; ?></td>
		 <td><?php echo $rows['organization_name']; ?></td>
		 <td><?php echo $rows['designation']; ?></td>
		 <td><?php echo $rows['from_date']; ?></td>
		 <td><?php echo $rows['to_date']; ?></td>
		 <td><?php echo $rows['total_experience']; ?></td> 
		
 	 </tr>
	 <?php } ?>
	 <tr>
	 <td colspan="6"><center><b>Employee Certificate Details</b></center></td>
	</tr>
	<tr>
		 <th>Id</th>
		 <th>Certificate Name</th>
		 <th>Certificate Number</th>
		 <th>Valid From</th>
		 <th>Valid To</th>
		 <th>Attachement</th> 
	 </tr>
	 <?php $c=1;$sql=$con->query("SELECT * FROM `emp_certification` where emp_id='$id'");  while($rows = $sql->fetch(PDO::FETCH_ASSOC)) { ?>
	  <tr>
		 <td><?php echo $c++; ?></td>
		 <td><?php echo $rows['certification_name']; ?></td>
		 <td><?php echo $rows['certification_number']; ?></td>
		 <td><?php echo $rows['validity_from']; ?></td>
		 <td><?php echo $rows['validity_to']; ?></td>
		 <td><?php echo $rows['attachment']; ?></td> 
	</tr>
	<?php } ?>
	 
</table>
</div>
</div>
</div>

<script>
function back_ctc()
{
	$.ajax({
	type:"POST",
	url:"Recruitment/applicationform/view.php",
	success:function(data){
	$("#main_content").html(data);
	}
	})
}
</script>