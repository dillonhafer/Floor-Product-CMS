// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

function stopSpinner() {
  if ($('.alert-box.notice').length) {
    $('.alert-box.notice').hide().fadeIn().delay(2000).fadeOut('fast');
  }
}

  $(document).on('click', '.remove-filter', function() {
    var fid=$(this).parent().parent().parent().attr('id')
    $(this).parent().parent().find('select').val('')
    $(this).parent().parent().find('input').val('')
    $(this).parent().parent().parent().fadeOut();
    var name = 'a[data-field="'+fid+'"]'
    $(name).parent().fadeIn();
  })

  $(document).on('click', '.add-filter', function() {
    var fid=$(this).data('field')
    $('#'+fid).fadeIn();
    $(this).parent().fadeOut();
    $(this).parent().parent().slideUp();
  })

  $(document).on('click', '#add-filter-list', function() {    
    $('#filter-list').slideToggle();
  })

  $(document).on('mouseleave', '#filter-list', function() {    
    $('#filter-list').slideUp();
  })


  $(document).on('click', 'a.product-details-link', function() {        
    $(this).parent().parent().next('tr').fadeToggle('fast');    
  });  


$(document).ready(function() {
if ($('.alert-box.notice').length) {
    $('.alert-box.notice').hide().fadeIn().delay(2000).fadeOut('fast');
  }
})

document.addEventListener("page:load", stopSpinner);

$(document).on('page:load', function() {  
  if ($('.alert-box.notice').length) {
    $('.alert-box.notice').hide().fadeIn().delay(2000).fadeOut('fast');
  }
  $('#nav-select').on('change', function() {
    window.location = $(this).val();    
  });

   $('#palette-select').on('change', function() {
    var cp = $(this).val();  
    $(".title").each(function() {
      if($(this).text().trim()==cp)
        $(this).click();
    });    
  });

  $('a.product-details-link').on('click', function() {
    $(this).parent().parent().next('tr').fadeToggle('fast');    
  });
  $(document).trigger('resize');
});