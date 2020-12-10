<?php
define("Title", 'Recruitment');
try {
	$con = new pdo ('mysql:host=localhost;dbname=hr','root','Best2020Know');
} 
catch (Exception $e) 
{
	echo $e->getMessage();
}
?>