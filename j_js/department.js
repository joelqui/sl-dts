$(document).ready(function () {
    var selected;
    loadDeptData(1);
    loadHeads();
    

    $("#addSave").click(function() {
        console.log('Joel');
        saveDept();
      });
    
    $("#editSave").click(function() {
        console.log('id'+selected);
      });
    
    $("#tableArea").on( "click", ".btn-primary",function() {
        selected=$(this).parent().parent().data('id');
        loadSelectedDept($(this).parent().parent().data('id'));
        
      });

    $("#tableArea").on( "click", ".page-item",function() {
        console.log($(this).data('value'));
        loadDeptData($(this).data('value'));
      });


});

function loadDeptData(pagenum){
    $.get("../../j_php/retrieve_departments.php",{
        page: pagenum,
        },
        successFn,
        "text");
}



function successFn(result){
    $('#tableArea').html(result);    
}


//loads the user accounts of the management
function loadHeads(){
    $.get("../../j_php/retrieve_heads.php", function(data){
            $('optgroup').html(data);
            }
        );
    
    }  
    
function saveDept(){

    $.get("../../j_php/department_add.php",{
        dname: $("#deptName").val(),
        dcode: $("#deptCode").val(),
        dhead: $("#deptHeadAdd").val()
        }, 
        function(data){
            if(data==1){
                
                alert($("#deptName").val()+' department was successfully created');
                location.reload();
                }
            else
                alert('Something went wrong!');
            
            }
        );
   
    } 

function loadSelectedDept(deptid){
    $.get("../../j_php/department_retrieve.php",{
        dept_id: deptid,
        }, 
         function(data){
            var r = JSON.parse(data);
            $("#deptLabel").text(r.dcode);
            $("#deptHeadEdit").val(r.dhead);
            console.log(r.dcode);
        
            
            //console.log(data['dhead']);
            }
        );
   
    } 



  



