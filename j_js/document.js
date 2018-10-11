$(document).ready(function () {
    var docOwner;
    loadDistricts();
    

    
$("#docName").val();
$("#docType").val(3);
$("#docOwnerType").val("");
$("#district").val("HINUJANGAN");
$("#school").val("SHIR");
$("#individual").val("not");
$("#other").val("no");

$("body").on( "change", "#docOwnerType",function() {
    
});

$("#addDoc").click(function() {
    ownerSelected = $("#docOwnerType").val();
    if(ownerSelected==1){
        docOwner = $("#district option:selected").text();
     } else if(ownerSelected==2){
        docOwner = $("#school option:selected").text();
     } else if(ownerSelected==3){
        docOwner = $("#individual").val();
     } else if(ownerSelected==4){
        docOwner = $("#other").val();
     }
    addDoc(docOwner);
  });

$("body").on( "change", "#district",function() {
    loadSchools();
});



});


//user-defined functions

//loads districts option
function loadDistricts(){
    $.get("../j_php/districts_retrieve.php", function(data){
            $("#district").append(data);
            $("#district").val("");
            }
    );
    
}  
//loads schools option
function loadSchools(){
    $.get("../j_php/schools_retrieve.php",{district: $("#district").val() },function(data){
            $("#school").html(data);
            $("#school").val("");
            }
    );
    
}  

//add document 
function addDoc(docowner){
    $.get("../j_php/document_add.php",{
        docname: $("#docName").val(),
        docowner: docowner,
        doctype: $("#docType").val()
        }, 
        function(data){
            console.log(data);
            if(data){
                window.location.href = "add_document_success.php?tracking="+data;
            }
            else
                alert('Something went wrong!');
            
        }
    );
   
} 

    






