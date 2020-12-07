<?php
define("Title", 'Recruitment');
try {
	$con = new pdo ('mysql:host=localhost;dbname=hr','root','');
} 
catch (Exception $e) 
{
	echo $e->getMessage();
}
?>
<!--?php
echo "test";
?-->