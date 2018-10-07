$(document).ready(function () {

//script for user menu option visibility
var utype = $('#usernameHolder').data('utype');

if(utype=='guest'){
    $('.dts_a').remove();
    $('.dts_am').remove();
    $('.dts_uam').remove();
    $('#changePassword').remove();
} else if(utype=='user'){
    $('.dts_a').remove();
    $('.dts_am').remove();
} else if(utype=='mgmt'){
    $('.dts_a').remove();
} 

console.log(utype);
   //$('.dts_a').remove();
  
   
});

