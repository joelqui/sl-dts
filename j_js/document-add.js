$(document).ready(function () {
    
    var tracking = $("#docTrackHolder").data('tracking');

    $("#printReceipt").click(function(){
        window.open('../pdf/print_dts_tracking.php?trackingnum='+tracking, 'window name', 'window settings');
        return false;
      });


});


//user-defined functions

