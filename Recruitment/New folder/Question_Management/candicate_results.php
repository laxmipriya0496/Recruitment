<?php
require '../../connect.php';
?>
<div class="content-wrapper" style="padding-left: 50px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Candidate Results</h1>
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
<tr>
<th class="center">SNO</th>
<th>NAME</th>
<th>EMAIL ID</th>
<th>DATE</th>
<th>CONTACT NUMBER</th>
<th> EXAMINATION MARKS  </th>
<th> OUT OF MARKS   </th>
<th> Status   </th>
<th> Accept   </th>
<th> Reject   </th>
</tr>
</thead>
<tbody>

<?php

$sql=$con->query("SELECT DISTINCT ueser_id FROM Candicate_results");
$cnt=1;
while($row = $sql->fetch(PDO::FETCH_ASSOC))

{
	$user_id=$row['ueser_id'];
	$sql_users=$con->query("select * from Candicate_results WHERE ueser_id='$user_id'");
	$k=1;
	$sq_fnud_userl=$con->query("SELECT * FROM  candidate_form_details WHERE id='$user_id'");
	$rows = $sq_fnud_userl->fetch(PDO::FETCH_ASSOC);
	
	unset($marks);
	unset($question);
	unset($answer);
	while($row_user = $sql_users->fetch(PDO::FETCH_ASSOC))
	{
		$question=$row_user['question'];
        $answer=$row_user['answer'];
		$sql_answers=$con->query("select * from question_master WHERE id='$question' AND answer_key='$answer'");
   	$row_answers = $sql_answers->fetch(PDO::FETCH_ASSOC);
		
		$correct_answer=$row_answers['answer_key'];
		if(!empty($correct_answer)){
		$marks[]=1;
		}
		$k++;
		}
		?>
<tr>
<td class="center"><?php echo $cnt;?>.</td>
<td><?php echo $rows['first_name'].'.'.$rows['last_name'];?></td>
<td><?php echo $rows['mail'];?></td>
<td><?php echo $rows['created_on'];?></td>
<td><?php echo $rows['phone'];?></td>
<td><?php echo 24;?></td>
<td><?php echo count($marks);?></td>
<td>
<?php if(($rows['status']==11))  
{

echo '<span style="color:green;text-align:center;"><b>Selected</b></span>';
}
if(($rows['status']==12))  
{
	echo '<span style="color:red;text-align:center;"><b>Rejected</b></span>';

}
?></td>
<td><?php if ($rows['status'] == '2' ) : ?><button class="btn btn-success"   name="Acccept" onclick="updatestatus1(this.id,this.value)" id="1" value="<?php echo $rows['id'];?>">Acccept</button><?php endif ?></td>
<td><?php if ($rows['status'] == '2' ) : ?><button class="btn btn-danger"   name="Rejected" onclick="updatestatus(this.id,this.value)" id="0" value="<?php echo $rows['id'];?>">Rejected</button><?php endif ?></td>

</tr>
<?php 
$cnt=$cnt+1;
 }?></tbody>
      </table>
    
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
function updatestatus1(sta,id) {
	
	 
	$.ajax({
		 // alert(sta);
	type:"GET",
	url: "Recruitment/Question_Management/status.php",
	data:'sta='+sta+'&id='+id,
	//data:{sta: sta,id:id}

	success: function(data){
		  {
      if(data==1)
      { 
        alert('Update Successfully');
		candicate_results()
      }
      else
      {
        alert("not updated");
      }
      
    }
	}
	});



}
</script>	
		<script>
function updatestatus(sta,id) {
	//alert(sta);
	//alert(id);
	 
	$.ajax({
		 // alert(sta);
	type:"GET",
	url: "Recruitment/Question_Management/statusss.php",
	data:'sta='+sta+'&id='+id,
	//data:{sta: sta,id:id}

	success: function(data){
		  {
      if(data==1)
      { 
        alert('Update Successfully');
		candicate_results()
      }
      else
      {
        alert("not updated");
      }
      
    }
	}
	});



}
</script>