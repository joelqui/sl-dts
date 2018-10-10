$(document).ready(function () {
    var selected;
    loadUserData(1);
    loadDepts();


    $("#tableArea").on( "click", ".page-item",function() {
        loadUserData($(this).data('value'));
      });

    $("#tableArea").on( "click", ".btn-primary",function() {
        selected=$(this).parent().parent().data('id');
        loadSelectedUser(selected);
        $("input:password").parent().hide();
     });
    
    $("body").on( "click", ".btn-success",function() {
        $("input:password").parent().show();
        $("select,input").val("");
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

function loadDepts(){
    $.get("../../j_php/departments_retrieve.php", function(data){
            $("#dept").children().html(data);
            }
        );
    
    }  

function loadSelectedUser(userid){
    $.get("../../j_php/user_view.php",{
        user_id: userid,
        }, 
        function(data){
            var r = JSON.parse(data);
            $("#username").val(r.username);
            $("#firstname").val(r.firstname);
            $("#lastname").val(r.lastname);
            $("#dept").val(r.dept_id);
            $("#usertype").val(r.usertype);
        }
    );
}



