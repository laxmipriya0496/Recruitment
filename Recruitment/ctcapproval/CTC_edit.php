<?php
require '../../connect.php';
$id=$_REQUEST['id'];

$stmt = $con->prepare("SELECT cfd.first_name,zdm.dept_name,cfd.position,rd.current_ctc,rd.exp_ctc,ca.ctc_offered,ca.offered_take_home,ca.offered_designation,ca.dept_head_approval,ca.dept_director_approval,ca.CUG,ca.mail_id,ca.system,ca.seating FROM `final_technical_team_details` md join candidate_form_details cfd on md.candidate_id=cfd.id join z_department_master zdm on zdm.id=cfd.department join recruiter_details rd on cfd.id=rd.candidate_id join ctc_approval_table ca on cfd.id=ca.candidate_id where md.head_status=13 and cfd.id='$id'"); 
$stmt->execute(); 
$row = $stmt->fetch();

?>
<div class="container-fluid">
<div class="card mb-3">
<div class="card-header">
<i class="fa fa-table"></i> CTC APPROVAL
<a onclick="return back_ctc()" style="float: right;" data-toggle="modal" class="btn btn-primary">Back</a>
<input type="button" style="float:right;margin-right:30px;" class="btn btn-warning" name="print" onclick="printDiv('printableArea')"  title="print"  value="Print"> &nbsp;
</a>
</div>
<div class="card-body" id="printableArea">
<form method="POST" action="" enctype="multipart/type">
<table class="table table-bordered">
<tr>
<td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
<td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
</tr>
<tr rowspan="6">
<td >Candidate Name:</td>
<td colspan="5">
<input type="hidden" class="form-control" id="id" name="id" value="<?php echo  $id; ?>" autocomplete="off">
<input type="text" class="form-control" id="candidate_name" name="candidate_name" value="<?php echo  $row[0]; ?>" autocomplete="off" readonly></td>
</tr>
<tr rowspan="6">
<td >Department:</td>
<td colspan="5"><input type="text" class="form-control" id="pctc" name="pctc" value="<?php echo  $row[1]; ?>" autocomplete="off" readonly></td>
</tr>
<tr rowspan="6">
<td>Position:</td>
<td colspan="5"><input type="text" class="form-control" id="ectc" name="ectc" value="<?php echo  $row[2]; ?>" autocomplete="off" readonly></td>
</tr>
<tr rowspan="6">
<td>Candidate CTC:</td>
<td colspan="5"><input type="text" class="form-control" id="cctc" name="cctc" value="<?php echo  $row[3]; ?>" autocomplete="off" readonly></td>
</tr>
<tr rowspan="6">
<td>Candidate Expected CTC:</td>
<td colspan="5"><input type="text" class="form-control" id="ectc" name="ectc" value="<?php echo  $row[4]; ?>" autocomplete="off" readonly></td>
</tr>
<tr>
<td>CTC Offered:</td>
<td colspan="1"><input type="text" class="form-control" id="ctc_offer" value="<?php echo  $row[5]; ?>" name="ctc_offer" autocomplete="off"></td>

<td>Offered Take home:</td>
<td colspan="1"><input type="text" class="form-control" id="take_home" name="take_home" value="<?php echo  $row[6]; ?>" autocomplete="off"></td>
</tr>
<tr>
<td>Offered Designation:</td>
<td colspan="5"><input type="text" class="form-control" id="designation" name="designation" value="<?php echo  $row[7]; ?>" autocomplete="off"></td>
</tr>
<tr>
<td>Department Head Approval:</td>
<td colspan="5"><input type="text" class="form-control" id="head_approval" name="head_approval" value="<?php echo  $row[8]; ?>" autocomplete="off"></td>
</tr>
<tr>
<td>Department director Approval:</td>
<td colspan="5"><input type="text" class="form-control" id="director_approval" name="director_approval" value="<?php echo  $row[9]; ?>" autocomplete="off"></td>
</tr>
<tr>
<td>CUG</td>
<td colspan="5"><input type="text" class="form-control" id="cug" name="cug" value="<?php echo  $row[10]; ?>" autocomplete="off"></td>
</tr>
<tr>
<td>Mail ID</td>
<td colspan="5"><input type="text" class="form-control" id="mail" name="mail" value="<?php echo  $row[11]; ?>" autocomplete="off"></td>
</tr> 
<tr>
<td>System</td>
<td colspan="5"><input type="text" class="form-control" id="system" name="system" value="<?php echo  $row[12]; ?>" autocomplete="off"></td>
</tr>
<tr>
<td>Seating</td>
<td colspan="5"><input type="text" class="form-control" id="seating" name="seating" value="<?php echo  $row[13]; ?>" autocomplete="off"></td>
</tr>
</table>
<input type="button" class="btn btn-primary btn-md"  style="float:right;" name="Update" onclick="ctc_update()" value="Approve"> 
</form>
</div>
</div>
</div>
<script>
function printDiv(divName)
{
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;
    document.body.innerHTML = printContents;
	window.print();
	document.body.innerHTML = originalContents;
}
	function back_ctc()
	{
		$.ajax({
		type:"POST",
		url:"Recruitment/ctcapproval/CTC_view.php",
		success:function(data){
		$("#main_content").html(data);
		}
		})
	}
    function ctc_update()
    {
    var id=<?php echo $id; ?>;
    var data = $('form').serialize();
    $.ajax({
    type:'GET',
    data:"id="+id, data,
    url:'Recruitment/ctcapproval/approval_update.php',
    success:function(data)
    {
      if(data==1)
      { 
        alert('Update Successfully');
        ctc_approval();
      }
      else
      {
        alert("No Data choose");
		ctc_approval();
      }
      
    }       
    });
    }
    </script>