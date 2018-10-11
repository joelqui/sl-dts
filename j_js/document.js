$(document).ready(function () {
    alert('Fuck that shit!');

    
$("#docName").val("aaaaaaaaaaaaaaaaa");
$("#docType").val(3);
$("#docOwnerType").val("");
$("#district").val("HINUJANGAN");
$("#school").val("SHIR");
$("#individual").val("nonot");
$("#other").val("nonota");

$("body").on( "change", "#docOwnerType",function() {
    ownerSelected = $("#docOwnerType").val();
    if(ownerSelected==1){
        console.log('Uno');
        $("#districtOwner").show();
    } else if(ownerSelected==2){
        $("#schoolOwner").show();
    } else if(ownerSelected==3){
        $("#individualOwner").show();
    } else if(ownerSelected==4){
        $("#otherOwner").show();
    }
});



});






