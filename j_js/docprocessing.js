$(document).ready(function () {
    alert('Documents Baby!!!');
    retrieveIncoming();
    retrieveOnQueue();
    retrieveForwarded();
    loadDepts();
 
    //event listener when an incoming document is selected
    $("#incomingList").on("click", "optgroup",function() {
        $("#incomingButtons button").removeAttr("disabled");
        $("#onQueueButtons button").attr("disabled", "disabled");
        $("#outgoingButtons button").attr("disabled", "disabled");
        $("#onQueueList").val("");
        $("#outgoingList").val("");
      });
    
    //event listener when an onqueue document is selected
    $("#onQueueList").on("click", "optgroup",function() {
        $("#incomingButtons button").attr("disabled", "disabled");
        $("#onQueueButtons button").removeAttr("disabled");
        $("#outgoingButtons button").attr("disabled", "disabled");
        $("#incomingList").val("");
        $("#outgoingList").val("");
      });
    
    //event listener when an incoming document is selected
    $("#outgoingList").on("click", "optgroup",function() {
        $("#incomingButtons button").attr("disabled", "disabled");
        $("#onQueueButtons button").attr("disabled", "disabled");
        $("#outgoingButtons button").removeAttr("disabled");
        $("#onQueueList").val("");
        $("#incomingList").val("");
      });

    //event listener for forwarding document/s
    $("#mForward").click(function() {
        dept=$("#forwardDoc option:selected").val();
        $("#onQueueList option:selected").each(function( index ) {
            sel=$(this).val();
            docForward(sel,dept); 
        });
    });

    





});


//user-defined functions

//retrieve incoming documents list
function retrieveIncoming() {
    $.get("../j_php/incomingdocs_retrieve.php",function(data){
        $("#incomingList optgroup").html(data);
        });
}

//retrieve on queue documents list
function retrieveOnQueue() {
    $.get("../j_php/onqueuedocs_retrieve.php",function(data){
        $("#onQueueList optgroup").html(data);
        });
}

//retrieve forwarded documents list
function retrieveForwarded() {
    $.get("../j_php/forwardeddocs_retrieve.php",function(data){
        $("#outgoingList optgroup").html(data);
        });
}

//load departments to forward option
function loadDepts(){
    $.get("../j_php/departments_retrieve.php", function(data){
            $("#forwardDoc select optgroup").html(data);
        });
    
} 

//forwards document to selected department
function docForward(doc,dept){
    $.get("../j_php/document_forward.php", {
        dept_id: dept,
        doc_id: doc 
        },function(data){
            console.log('success');
        });
    
} 







