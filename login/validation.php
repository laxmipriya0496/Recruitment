<?php
Session_start();
require('../connect.php');
$ip=$_SERVER['REMOTE_ADDR'];
$username=$_REQUEST['Inputusername'];
$upassword=$_REQUEST['InputPassword'];
$md5password=md5($upassword);
	$res = $con->query("SELECT candidate_id,user_id,department,user_name,password,full_name,user_group_code,profile FROM z_user_master where user_name='$username' and status=1");
	//echo "SELECT user_id,department,user_name,password,full_name,user_group_code,profile FROM z_user_master where user_name='$username' and status=1";
$num_of_rows = $res->rowCount();
	if($num_of_rows>0)
	{
		while($row = $res->fetch(PDO::FETCH_ASSOC))
		{
			$password=$row['password'];
			$user_name=$row['user_name'];
		if($password==$md5password)
		{
			$_SESSION['username']=$row['user_name'];
			$_SESSION['fullname']=$row['full_name'];
			$_SESSION['profile']=$row['profile'];
			$_SESSION['userrole']=$row['user_group_code'];
			$_SESSION['department_id']=$row['department'];
			$_SESSION['userid']=$row['user_id'];
			$_SESSION['candidateid']=$row['candidate_id'];
			$_SESSION['start'] = time();   $_SESSION['expire'] = $_SESSION['start'] + (60*5);
				$home_ins=$con->query("insert into z_log_entry(user_id,user_name,logdate,system_ip,time) values('$user_id','$user_name',now(),'$ip',now())");
			header('Location:../index.php');	
		}
		else
		{
			$home_ins=$con->query("insert into z_log_error(user_name,password,ip_address,date,time) values('$user_name','$upassword','$ip',now(),now())");	?>
	<script>
		alert("Password Does Not Matched..");
		window.location='login.php';
	</script>
			<?php
		}
	} 	 
}
else
{
	?>
	<script>
	alert("User Name Does Not Matched..");
	window.location='login.php';
	</script>
	<?php
} 
?>