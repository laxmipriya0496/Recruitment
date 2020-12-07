<?php

require '../../connect.php';

$candidate_id=$_REQUEST['get_id'];
//echo "<pre>";print_r($candidate_id);exit();
$status_recruiters=$_REQUEST['status_recruiters'];
 




$sql3= $con->query("Update candidate_form_details set status='$status_recruiters' where id='$candidate_id'");
?>