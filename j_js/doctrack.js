$(document).ready(function () {
    
  //  $("#search")
   // getDocHist(115);
    $("#search").click(function() {
        var tracking=$("#inputTracking").val();
        getDocHist(tracking);
      });


});

//user-defined functions



function getDocHist(doc){
    $.get("../j_php/document_get_dochist.php",{
        tracking: doc,
        }, 
         function(data){
            $("#resultsTable").html(data);
            }
        );
    }
