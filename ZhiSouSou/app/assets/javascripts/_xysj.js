
$(function (argument) {
	$('.y-xysj-contant-left-part-title').on('click', function(event) {

        $('.y-xysj-contant-left-part > a').css('background', '#fff')
          $('.y-xysj-contant-left-part > a').css('color','#337ab7')
        $(this).css('background','#4285f4')
         $(this).css('color','#fff')


	});
	
         $('.y-form tbody tr td:first-child').on('mouseenter', function(event){
       
     
        $(this).children('.font-table').show();
	     });


         $('.y-form tbody tr td:first-child').on('mouseleave', function(event){
       
     
        $(this).children('.font-table').hide();
	     });


})


