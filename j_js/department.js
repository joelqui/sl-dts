$(document).ready(function () {

    loadDeptData(1);
    loadHeads();

    

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



function loadHeads(){
    console.log('YEAH');
    $.get("../../j_php/retrieve_heads.php", function(data){
            $('optgroup').html(data);
            }
        );
    
    }   



  



