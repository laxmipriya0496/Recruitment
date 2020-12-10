<?php
require '../../connect.php';
include("../../user.php");
//echo "<pre>";print_r($_POST['submit']);
if(isset($_POST['submit']))
{
$candidate_id=$_REQUEST['id'];

$rating=$_REQUEST['rating'];

$md_remarks=$_REQUEST['md_remarks']; 

$status_recruiter=$_REQUEST['status_recruiter'];
//echo "<pre>";print_r($status_recruiter);exit();


//echo "<pre>";print_r($performance);



    $sql=$con->query("insert into md_details(candidate_id,rating,md_remarks,status_recruiter) values('$candidate_id','$rating','$md_remarks','$status_recruiter')"); 
	
	$sql2 = $con->query("Update candidate_form_details set status='$status_recruiter' where id='$candidate_id'");

//echo "Update candidate_form_details set status='$status_recruiter' where id='$candidate_id'";

if($sql)
{
    echo "<script>alert(' successfully Updated');</script>";
    
}

	header("location:/Recruitment/index.php");
}
?>

