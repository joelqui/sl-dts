
$(document).ready(function () {

//script for user menu option visibility
    
    //hide default error message
 
   // $('#usernameHolder').text(username);
  
    

});


function successFn(result){
 
    if(result==1){
        window.location.href = "index.php";
        console.log('Yes'); 
        }
    else if(result==0){
        $('#errorContainer').show();
        console.log('No');
     //    console.log(msg);
    //    $("#loginNotify").html(msg);
         
         
    }
}  

      