<?php
require '../../connect.php';
 $id=$_REQUEST['id'];

$stmt = $con->prepare("SELECT id,Questions,Option_A,Option_B,Option_C,Option_D,answer_key,status FROM question_master WHERE id='$id'"); 
$stmt->execute(); 
$row = $stmt->fetch();

?>
<div class="container-fluid">
<div class="card mb-3">
<div class="card-header">
<i class="fa fa-table"></i> QUESTIONS  EDIT
<a onclick="return back_ctc()" style="float: right;" data-toggle="modal" class="btn btn-primary"><i class="fa fa-plus"></i>Back</a>
</div>
<div class="card-body" id="printableArea">
<form method="POST" action="" enctype="multipart/type">
<table class="table table-bordered">
<tr>
<td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
<td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
</tr>
<tr rowspan="6">
<td >Question</td>
<input type="hidden" class="form-control" id="get_id" name="get_id" value="<?php echo  $row[0]; ?>"></td>
<td colspan="5">

<input type="text" class="form-control" id="Questions" name="Questions" value="<?php echo  $row[1]; ?>"></td>
</tr>


<tr rowspan="6">
<td >Option A</td>
<td colspan="5"><input type="text" class="form-control" id="Option_A" name="Option_A" value="<?php echo  $row[2]; ?>"></td>
</tr>
<tr rowspan="6">
<td>Option B</td>
<td colspan="5"><input type="text" class="form-control" id="Option_B" name="Option_B" value="<?php echo  $row[3]; ?>"></td>
</tr>
<tr>
<td>Option C</td>
<td colspan="1"><input type="text" class="form-control" id="Option_C" name="Option_C" value="<?php echo  $row[4]; ?>"></td>
</tr>
<tr>
<td>Option D</td>
<td colspan="1"><input type="text" class="form-control" id="Option_D" name="Option_D" value="<?php echo  $row[5]; ?>"></td>
</tr>
<tr>
<td>Answer Key</td>
<td colspan="5"><input type="text" class="form-control" id="answer_key" name="answer_key" value="<?php echo  $row[6]; ?>"></td>
</tr>
<tr>

<td>Status</td>
<td colspan="5">
<select id="status" name="status" class="form-control" >
 
<?php 
if($row[7] ==1)
{
?>
    <option value="1">Active</option>
	 <option value="2"> IN Active</option>
<?php }else {?>
  <option value="2"> IN Active</option>
  <option value="1">Active</option>
<?php } ?>
</select>
</td>
</tr>

</table>
<input type="button" class="btn btn-primary btn-md"  style="float:right;" name="Update" onclick="question_update()" value="Update"> 
</form>
</div>
</div>
</div>
<script>
	function back_ctc()
	{
		$.ajax({
		type:"POST",
		url:"Recruitment/Question_Management/new.php",
		success:function(data){
		$("#main_content").html(data);
		}
		})
	}
    function question_update()
    {
    var id=$('#get_id').val();
	//alert(id);
    var data = $('form').serialize();
    $.ajax({
    type:'GET',
    data:"id="+id, data,
    url:'Recruitment/Question_Management/update.php',
    success:function(data)
    {
      if(data==1)
      { 
        alert('Not updated');
      
      }
      else
      {
        alert("Update Successfully");
		question_managements()
      }
      
    }       
    });
    }
    </script>