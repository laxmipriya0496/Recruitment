<!-<?php
require '../../connect.php';


$Questions=$_REQUEST['Questions'];

 $Option_A=$_REQUEST['Option_A'];
$Option_B=$_REQUEST['Option_B'];
$Option_C=$_REQUEST['Option_C'];
$Option_D=$_REQUEST['Option_D'];
$answer_key=$_REQUEST['answer_key'];





$sql=$con->query("insert into question_master(Questions,Option_A,Option_B,Option_C,Option_D,answer_key) values('$Questions','$Option_A','$Option_B','$Option_C','$Option_D','$answer_key')");


?>