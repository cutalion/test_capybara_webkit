// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery(function($){
  $('form').bind("ajax:complete", function(event, xhr){
    $('#posts').html(xhr.responseText)
  })
})
