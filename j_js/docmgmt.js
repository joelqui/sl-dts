$(document).ready(function () {
    var dept = $("#usernameHolder").data('dept');
    console.log($("#viewSelect").val());
    
    getDocList(1);
   // getDocList(0,1,64);

    $("#tableHolder").on( "click", ".page-item",function() {
        page = $(this).data('value');

       getDocList(page);
      });

    //event listener for view select
    $("body").on( "change", "select",function() {
        getDocList(1);
        console.log($("#viewSelect").val());
      });
   


});

//user-defined functions



function getDocList(page){
    $.get("../../j_php/documents_list.php",{
        docstatus: $("#viewSelect").val(),
        page: page
        }, 
         function(data){
            $("#tableHolder").html(data);
            }
        );
    }
