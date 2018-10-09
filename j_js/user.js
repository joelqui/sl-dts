$(document).ready(function () {
    
    loadUserData(1);



    $("#tableArea").on( "click", ".page-item",function() {
        loadUserData($(this).data('value'));
      });
});

function loadUserData(pagenum){
    $.get("../../j_php/users_view.php",{
        page: pagenum,
        }, 
        function(data){
            $('#tableArea').html(data); 
        }
    );
}


function loadHeads(){
    $.get("../../j_php/retrieve_heads.php", function(data){
            $('optgroup').html(data);
            }
        );
    
    }  