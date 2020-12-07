<?php
$userrole=$_SESSION['userrole'];
$sql = $con->query("SELECT zmsm.id,zmsm.menu_name,zmsm.call_method FROM z_masters_menu zmsm join z_role_detail zrd on zrd.menu_id=zmsm.id WHERE zrd.code='$userrole' group by menu_name");
?>
<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
<?php
while($row = $sql->fetch(PDO::FETCH_ASSOC))
{ 
	$menuid=$row['id'];
    ?>
    <a class="nav-link nav-link-collapse" data-toggle="collapse" href="#collapseMulti_<?php echo $row['id']; ?>" data-parent="#exampleAccordion">
    <i class="fa fa-fw fa-sitemap"></i>
    <span class="nav-link-text"><label onclick="<?php echo $row['call_method']; ?>"><?php echo $row['menu_name']; ?></label></span>
    </a>
    <ul class="sidenav-second-level collapse" id="collapseMulti_<?php echo $row['id']; ?>">
    <?php 
    $sql2 = $con->query("SELECT zmsm.name,zmsm.call_method FROM z_masters_sub_menu zmsm join z_role_detail zrd on zrd.submenu_id=zmsm.id WHERE zrd.code='$userrole' and zrd.menu_id='$menuid'");
    while($res = $sql2->fetch(PDO::FETCH_ASSOC))
    { ?>     
      <li>
        <a onclick="<?php echo $res['call_method']; ?>"><?php echo $res['name']; ?></a>
      </li> 
      <?php
    }
    ?>
 </ul>
    <?php
}
?>
</li>
<script>

function application()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/Recruitment/new.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function feedback()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/interview_feedback/new.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function ctc_approval()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/ctcapproval/CTC_view.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function interview_reports()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/interviewreports/interviewreports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function department_reports()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/departmentreports/departmentreports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function ctc_reports()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/ctc_reports/ctc_reports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function leave_master()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/leave_master/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function scale_master()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/departmentreports/departmentreports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function employee_leave()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/leave_management/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function employee_allowance()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/departmentreports/departmentreports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function employee_payroll()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/departmentreports/departmentreports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function question_managements()
{ 

//alert("bala");
$.ajax({
    type:"POST",
    url:"Recruitment/Question_Management/new.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })

}
function candicate_results()
{ 

//alert("bala");
$.ajax({
    type:"POST",
    url:"Recruitment/Question_Management/candicate_results.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })

}
function question()
{
	//alert("gopi");
$.ajax({
    type:"POST",
    url:"Recruitment/Question_Management/aptitude.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function candidate_form()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/candidate/candidate_form.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function department_master()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/masters/department_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function department_mapping()
{
	
	$.ajax({
    type:"POST",
    url:"Recruitment/masters/department_mapping.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function company_master()
{
	$.ajax({
    type:"POST",
    url:"Recruitment/masters/company_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
} 
function candidate_details()
{  
	$.ajax({
    type:"POST",
    url:"Recruitment/applicationform/view.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
</script>