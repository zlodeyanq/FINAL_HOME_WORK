function PopUpShow1(){
    $("#modal-el1t").fadeIn(300);
}
function PopUpHide1(){
    $("#modal-el1t").fadeOut(300);
}

$(function() {
    $('.btn-top').click(function(){
       $('html, body').animate({scrollTop: 0}, 'slow');
   });
});