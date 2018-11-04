$(document).ready(function () {
    var dept = $("#usernameHolder").data('dept');

   // getDocList(1,1,dept);
    getDocList(0,1,64);

    $("#tableHolder").on( "click", ".page-item",function() {
        page = $(this).data('value');
        console.log;
        getDocList(0,page,64);
      });
   


});

//user-defined functions



function getDocList(utype,page,dept){
    $.get("../../j_php/documents_list.php",{
        is_admin: utype,
        page: page,
        dept: dept
        }, 
         function(data){
            $("#tableHolder").html(data);
            }
        );
    }
