<section class="content">
<div class="container-fluid">
<div class="row">
<div class="col-md-12">
<div class="card">
<div class="card-header">
<i class="fa fa-table"></i> QUESTIONS  Add
<a onclick="return back_ctc()" style="float: right;" data-toggle="modal" class="btn btn-primary"><i class="fa fa-plus"></i>Back</a>
</div>
<div class="card-body">
<div class="tab-content">

    <div class="active tab-pane" id="for_employment">
    <form method="POST" enctype="multipart/form-data">
    <!-- Post -->
    <table class="table table-bordered">
        <tr>
        <td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
        <td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
        </tr>
      
        <tr>
        <td colspan="6"><center><b>Add Questions</b></center></td>
        </tr>
        <tr>
        <td>Questions</td>
        <td colspan="5"><textarea  class="form-control" id="Questions"  placeholder="Enter Questions" name="Questions"></textarea></td>
        </tr>
        <tr>
        <td>Option A</td>
        <td colspan="5"><input type="text" class="form-control" placeholder="Enter Option_A" id="Option_A" name="Option_A" ></td>
        </tr>
        <tr>
       <td>Option B</td>
        <td colspan="5"><input type="text" class="form-control" placeholder="Enter Option_B" id="Option_B" name="Option_B" ></td>
        </tr>
        <tr>
        <td>Option C</td>
        <td colspan="5"><input type="text" class="form-control" placeholder="Enter Option_C" id="Option_C" name="Option_C" ></td>
        </tr>
        
         <tr>
        <td>Option D</td>
        <td colspan="5"><input type="text" class="form-control" placeholder="Enter Option_D" id="Option_D" name="Option_D" ></td>
        </tr>
		 <tr>
        <td>Correct Answer Key</td>
        <td colspan="5">
			<input type="text"  id="answer_key" name="answer_key" class="form-control"  placeholder="Enter Correct Answer" required="true">
		</td>
        </tr>
        <td colspan="6"><input type="button" class="btn btn-success" name="save" onclick="insert_questions()" value="save"></td>
        </tr>
        </table>
        <!-- /.post -->
    </form>
    </div>

    <script>
    function insert_questions()
    {
    var id=0;
	//alert(id);
    var data = $('form').serialize();
	//alert(data);
    $.ajax({
    type:'GET',
    data:"id="+id, data,
    url:'Recruitment/Question_Management/insert_questions.php',
	
    success:function(data)
    {
      
        alert("Entry Successfully");
		 question_managements()
      
      
    }       
    });
    }
    </script>
