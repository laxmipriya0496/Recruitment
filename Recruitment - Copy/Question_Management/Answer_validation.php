<?php
//echo "<pre>";print_r($_GET);exit();

require '../../connect.php';
for($i=1;$i<=24;$i++)
{
	
	    $session_id=$_GET['candidateid'];
		$question=$_GET['question_value_'.$i];
		$answer=$_GET['answer_value_'.$i];
		

$sql=$con->query("insert into candicate_results(ueser_id,question,answer) values('$session_id','$question','$answer')");
echo "<pre>";print_r($sql);
}
exit();
?>