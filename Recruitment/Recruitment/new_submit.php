<?php
require '../../connect.php';
 
$candidateid=$_REQUEST['candidateid'];
$candidate_name=$_REQUEST['candidate_name'];
$father_name=$_REQUEST['father_name'];
$dob=date('Y-m-d',strtotime($_REQUEST['dob']));
$caddress=$_REQUEST['address'];
$paddress=$_REQUEST['paddress'];
$phone=$_REQUEST['phone'];
$mail=$_REQUEST['mail'];

if (!file_exists("uploads/" . $candidateid)) {
	mkdir("uploads/" . $emp_name);
}
$target_Path_aggrement="uploads/$candidateid/";
			
$adharnumber=$_REQUEST['adharnumber'];

echo $ahdarpath="uploads/$candidateid/".basename( $_FILES['adharcard']['name']);
$target_Path_aggrement=$target_Path_aggrement.basename( $_FILES['adharcard']['name']);
		/******File Upload***/
move_uploaded_file( $_FILES['adharcard']['tmp_name'],$target_Path_aggrement);
	
$target_Path_aggrement1="uploads/$candidateid/";
$pannumber=$_REQUEST['pannumber'];

echo $panpath="uploads/$candidateid/".basename( $_FILES['pancard']['name']);
$target_Path_aggrement=$target_Path_aggrement1.basename( $_FILES['pancard']['name']);
		/******File Upload***/
move_uploaded_file( $_FILES['pancard']['tmp_name'],$target_Path_aggrement);
$target_Path_aggrement2="uploads/$candidateid/";
$voternumber=$_REQUEST['voternumber'];

echo $voterpath="uploads/$candidateid/".basename( $_FILES['votercard']['name']);
$target_Path_aggrement=$target_Path_aggrement2.basename( $_FILES['votercard']['name']);
		/******File Upload***/
move_uploaded_file( $_FILES['votercard']['tmp_name'],$target_Path_aggrement);
 
 $target_Path_aggrement3="uploads/$candidateid/";
echo $resumepath="uploads/$candidateid/".basename( $_FILES['resume']['name']);
$target_Path_aggrement=$target_Path_aggrement3.basename( $_FILES['resume']['name']);
		/******File Upload***/
move_uploaded_file( $_FILES['resume']['tmp_name'],$target_Path_aggrement);
 
	
	
$status=17;
$user_id=1;
$today = date("Y-m-d H:i:s"); 

$query=$con->query("INSERT INTO emp_personal_details(emp_id, name, fathers_name, DOB, communication_address, permanent_address, mobile_num, email_id, aadhar_num, pan_num, voter_id, resume, status, created_by, created_on, adhar_card, pan_card, voter_card) VALUES ('$candidateid','$candidate_name','$father_name','$dob','$caddress','$paddress','$phone','$mail','$adharnumber','$pannumber','$voternumber','$resumepath','$status','$candidateid','$today','$ahdarpath','$panpath','$voterpath')");
echo "INSERT INTO emp_personal_details(emp_id, name, fathers_name, DOB, communication_address, permanent_address, mobile_num, email_id, aadhar_num, pan_num, voter_id, resume, status, created_by, created_on, adhar_card, pan_card, voter_card) VALUES ('$candidateid','$candidate_name','$father_name','$dob','$caddress','$paddress','$phone','$mail','$adharnumber','$pannumber','$voternumber','$resumepath','$status','$candidateid','$today','$ahdarpath','$panpath','$voterpath')";


$examination_passed=$_REQUEST['examination_passed'];
$instute=$_REQUEST['instute'];
$degree=$_REQUEST['degree'];
$field=$_REQUEST['field'];
$passing=$_REQUEST['passing'];
$percentage=count($_REQUEST['percentage']); 
$attchement="dox.doc";

 for($i=0;$i<$percentage;$i++)
    {
$s=$con->query("INSERT INTO emp_qualification(emp_id, education, institution_name, degree, field_of_specialization, year_of_passing, percentage, attachment, status, created_on, created_by) VALUES ('$candidateid[$i]','$examination_passed[$i]','$instute[$i]','$degree[$i]','$field[$i]','$passing[$i]','$percentage[$i]','$attchement','$status','$today','$candidateid')"); 
}

$candidateid=$_REQUEST['candidateids'];
$certifcatename=$_REQUEST['certifcatename'];
$certifcatenumber=$_REQUEST['certifcatenumber'];
$validityfrom=$_REQUEST['validityfrom'];
$validityto=$_REQUEST['validityto'];
$certifcatefile="doc.doc";

for($i=0;$i<count($certifcatename);$i++)
    {
$cn=$con->query("INSERT INTO emp_certification(emp_id, certification_name, certification_number, validity_from, validity_to, attachment, status, created_by, created_on) VALUES ('$candidateid[$i]','$certifcatename[$i]','$certifcatenumber[$i]','$validityfrom[$i]','$validityto[$i]','$certifcatefile','$status','$candidateid','$today')"); 
	}
	$c=$con->query("update candidate_form_details set status='$status' where id='$candidateid'");
	
 ?>
 <script>
 alert("Candidate Form Submitted");
 window.location.href="../../login/logout.php";
 </script>