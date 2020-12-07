<?php
require '../../connect.php';
 $id=$_REQUEST['id'];

$stmt = $con->prepare("select * from recruiter_details 
INNER JOIN candidate_form_details ON recruiter_details.candidate_id = candidate_form_details.id
INNER JOIN z_department_master ON candidate_form_details.department = z_department_master.id
where candidate_id='$id'"); 

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

<form method="POST" action="recruitment/interview_feedback/md_submit.php">

<table class="table table-bordered">
<tr>
<td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
<td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
</tr>
<tr>
<td>Candidate Name:</td>
<input type="text" class="form-control" id="id" name="id" value="<?php echo  $row['candidate_id'];?>"readonly>
<td colspan="5"><input type="text" class="form-control" id="name" name="name" value="<?php echo  $row['first_name'];?>"readonly></td>

</tr>
<tr>
<td>POSITION:</td>
<td colspan="2"><input type="text" class="form-control" id="position" name="position" value="<?php echo  $row['position'];?>"readonly></td>
<td>Department:</td>

<td colspan="2"><input type="text" class="form-control" id="dept_name" name="dept_name" value="<?php echo  $row['dept_name'];?>"readonly></td>
</tr>

<tr>
<td>Type:</td>

<td colspan="2"><input type="text" class="form-control" id="replacements" name="replacements" value="<?php echo  $row['replacement'];?>" readonly></td>
</tr>
<tr id="old_replace">
<td>Replaced Candidate Name:</td>
<td colspan="5"><input type="text" class="form-control" id="replaced_name" name="replaced_name" value="<?php echo  $row['replaced_name'];?>" readonly></td>
</tr>
<tr>
<td>Location/site:</td>
<td colspan="5"><input type="text" class="form-control" id="site" name="site" value="<?php echo  $row['site'];?>" readonly></td>
</tr>
<tr>
<tr>
<td>Reason for waiting to leave the present job:</td>
<td colspan="5"><input type="text" class="form-control" id="Reason_leave" name="Reason_leave" value="<?php echo  $row['reason_leave']; ?>" readonly></td>
</tr>
<tr>
<td>Reference Name</td>
<td colspan="5"><input type="text" class="form-control" id="reference" name="reference" value="<?php echo  $row['reference']; ?>" readonly></td>
</tr>

<tr>
<td>Total Years of Experience</td>
<td colspan="5"><input type="text" class="form-control" id="tot_year_exp" name="tot_year_exp" value="<?php echo  $row['tot_year_exp']; ?>" readonly></td>
</tr>
<tr>
<td>Current CTC</td>
<td colspan="5"><input type="text" class="form-control" id="current_ctc" name="current_ctc" value="<?php echo  $row['current_ctc']; ?>" readonly></td>
</tr>
<tr>
<td>Expected CTC</td>
<td colspan="5"><input type="text" class="form-control" id="exp_ctc" name="exp_ctc" value="<?php echo  $row['exp_ctc']; ?>" readonly></td>
</tr>

<tr>
<td>Notice period</td>
<td colspan="5"><input type="number" class="form-control" id="notice_period" name="notice_period" value="<?php echo  $row['notice_period']; ?>" readonly></td>
</tr>
<tr>
<td>Expected Date of Joining</td>
<td colspan="5"><input type="date" class="form-control" id="date_of_join" name="date_of_join" value="<?php echo  $row['date_of_join']; ?>" readonly></td>
</tr>

<tr>
<td colspan="6"><center><b>Comments by Recruiter</b></center></td>
</tr>
<tr>
<td>Recruiter Name:</td>
<td colspan="5"><input type="text" class="form-control" id="recruiter_name" name="recruiter_name" value="<?php echo  $row['recruiter_name']; ?>" readonly></td>
</tr>
</table>
<table class="table table-bordered">
<tr>
<td>Overall Rating:</td>
<td colspan="5"><input type="text" class="form-control" id="ratings" name="ratings" value="<?php echo  $row['ratings']; ?>" readonly></td>
</tr>
<tr>
<td>Remarks *:</td>
<td colspan="5"><input type="text" class="form-control" id="remarks" name="remarks" value="<?php echo  $row['remarks']; ?>" readonly></td>
</tr>
<tr>
<td>Status *:</td>
<td colspan="5">
<select class="form-control" id="status_recruiter" name="status_recruiter" readonly>
<?php
if($row['status_recruiter'] == 4){
	?>
	
<option value="">Select for Next Level</option>
<?php
}
else if($row['status_recruiter'] == 1){
	?>
	<option value="">Waiting List</option>
	<?php
} else {
?>
<option value="">Rejected</option>
<?php
}
?>
</select></td>
</tr>

<tr id="statushide">

<td>Technical Department Assign:</td>
<td colspan="5">
<input type="text" class="form-control" id="technical_department" name="technical_department" value="<?php echo  $row['dept_name']; ?>" readonly></td>



</tr>
</table>
 <table class="table table-bordered" id="recruiter_page">
<h3><center>Interpersonal Skill</center></h3>
<tbody>

<?php

$sql=$con->query("SELECT * FROM  recruiter_commands where candidate_id='$id'");


$cnt=1;
while($rows = $sql->fetch(PDO::FETCH_ASSOC))

{
	
		?>
<tr>
<input type="hidden" class="form-control" id="get_id" name="get_id" value="<?php echo  $rows['candidate_id']; ?>">
<td>Question</td>
<td colspan="1"><input type="text" class="form-control" id="recruiterquestion_1" name="recruiter_question[]" value="<?php echo  $rows['skill_question']; ?>" readonly></td>

<td>Rating:</td><td colspan="5">
<?php if($rows['rating']== 1)
{
	?><input type="text" class="form-control"  value="<?php echo  $rows['rating']; ?>" readonly>


<?php } else if($rows['rating']== 2){?>
<input type="text" class="form-control"  value="<?php echo  $rows['rating']; ?>" readonly>


<?php
} else if($rows['rating']== 3){
?>
<input type="text" class="form-control"  value="<?php echo  $rows['rating']; ?>" readonly>


<?php
} else if($rows['rating']== 4) {

?>
<input type="text" class="form-control"  value="<?php echo  $rows['rating']; ?>" readonly>


<?php
} else if($rows['rating']== 5) {
?>
<input type="text" class="form-control"  value="<?php echo  $rows['rating']; ?>" readonly>

<?php
}?></td>
<td>Response:</td><td colspan="1"><input type="text" class="form-control" id="recruiteranswer_1" name="recruiter_answer[]" value="<?php echo  $rows['response']; ?>" readonly></td>

</tr>

<?php 
$cnt=$cnt+1;
 }?>
 </tbody>
 
      </table>
	  <?php

$sql=$con->query("SELECT * FROM technical_team_details where candidate_id='$id'");


$cnt=1;
$k=0;
while($rows1 = $sql->fetch(PDO::FETCH_ASSOC))

{
	
		?>
	  <tr>
	  <input type="hidden" class="form-control" id="get_id" name="get_id<?php echo $k;?>" value="<?php echo  $rows1['candidate_id']; ?>">
	 
<td>Technical Person Name:</td>
<td colspan="5"><input type="text" class="form-control" id="head_name" name="head_name" value="<?php echo  $rows1['head_name']; ?>" readonly></td>
</tr>
<?php
}
?>
 <table class="table table-bordered" id="recruiter_page">
<h3><center>Interpersonal Skill</center></h3>
<tbody>

<?php

$sql=$con->query("SELECT * FROM  technical_team_commands where technical_id='$id'");


$cnt=1;
$k=0;
while($rows2 = $sql->fetch(PDO::FETCH_ASSOC))

{
	
		?>
<tr>
 <input type="hidden" class="form-control" id="get_ids" name="get_ids" value="<?php echo  $rows2['id']; ?>">

<td>Question</td>
<td colspan="1"><input type="text" class="form-control" id="technical_question" name="technical_question[]" value="<?php echo  $rows2['skill']; ?>" readonly></td>
<td>Rating:</td><td colspan="5">

<td>Rating:</td>
<td colspan="5">
<?php if($rows2['rating']== 1)
{
	?>
	<input type="text" class="form-control"  value="<?php echo  $rows2['rating']; ?>" readonly>


<?php } else if($rows2['rating']== 2){?>
<input type="text" class="form-control"  value="<?php echo  $rows2['rating']; ?>" readonly>


<?php
} else if($rows2['rating']== 3){
?>
<input type="text" class="form-control"  value="<?php echo  $rows2['rating']; ?>" readonly>

<?php
} else if($rows2['rating']== 4) {

?>
<input type="text" class="form-control"  value="<?php echo  $rows2['rating']; ?>" readonly>

<?php
} else if($rows2['rating']== 5) {
?>
<input type="text" class="form-control"  value="<?php echo  $rows2['rating']; ?>" readonly>
<?php
}?></td>
<td>Response:</td><td colspan="1"><input type="text" class="form-control" id="technical_answer1" name="technical_answer[]" value="<?php echo  $rows2['response']; ?>" readonly></td>

</tr>
<?php 
$k++;
$cnt=$cnt+1;
 }?>
 </tbody>
 
      </table>
<table class="table table-bordered">
<tr>
<td>Overall Rating:</td>
<td colspan="5"><input type="text" class="form-control" id="rating" name="rating"></td>
</tr>
<tr>
<td>Remarks *:</td>
<td colspan="5"><input type="text" class="form-control" id="md_remarks" name="md_remarks"></td>
</tr>	
<tr>
<td>Status *:</td>
<td colspan="5">
<select class="form-control" id="status_recruiter" name="status_recruiter">
<option value="">CHOOSE TYPE</option>
<option value="7" >Select for Next Level</option>
<option value="8">Waiting</option>
<option value="9">Rejected</option>
</select>
</td>
</tr>
</table>
<input type="submit" name="submit" class="btn btn-primary btn-md" style="float:right;">
</form>

</div>
</div>
</div>

<script>
	function back_ctc()
	{
		$.ajax({
		type:"POST",
		url:"Recruitment/interview_feedback/new.php",
		success:function(data){
		$("#main_content").html(data);
		}
		})
	}
	function check2() // Technical
{  
var len=$('#technical_page tr').length;	
len=len+1; 
$('#technical_page').append('<tr class="row_'+len+'"><td>Technical Skill:</td><td colspan="1"><input type="text" class="form-control" id="technicalquestion_'+len+'" name="technical_question[]"></td><td>Rating:</td><td colspan="5"><input type="radio" id="radio_'+len+'" name="performance1" value="1"><label for="performance"> 1 </label>  <input type="radio" id="radio_'+len+'"  name="performance1" value="2"><label for="performance"> 2 </label><input type="radio"  id="radio_'+len+'"  name="performance1" value="3"><label for="performance"> 3</label><input type="radio"  id="radio_'+len+'"  name="performance1" value="4"><label for="performance"> 4</label><input type="radio"  id="radio_'+len+'"  name="performance1" value="5"><label for="performance"> 5</label></td><td>Response:</td><td colspan="1"><select class="form-control" id="technicalanswer_'+len+'" name="technical_answer[]"><option value="">CHOOSE TYPE</option><option value="5" >Excellent</option><option value="4">Good</option><option value="3">Average</option><option value="2">Ok</option><option value="1">Bad</option></select></td></tr>'); 
}

    </script>