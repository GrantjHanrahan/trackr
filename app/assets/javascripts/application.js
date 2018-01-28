// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require jquery_ujs
//= require_tree .
//= require moment


// $('#calendar').fullCalendar({
//
// 
// });

// $(distances(){
//   var $select = $(".1-100");
//  for (i=1;i<=100;i++){
//      $('#distance_select').append($('<option></option>').val(i).html(i))
//  }
// });
//
// $('#distance_select').on('click', distances)

$(document).ready(function() {


  $('#add1').click(function(event) {
         event.preventDefault();
         $('#Act2').show();
      // alert("Add button");
    });

  $('#remove2').click(function(event){
    event.preventDefault();
    $('#Act2').hide();
  });

  $('#add2').click(function(event) {
         event.preventDefault();
         $('#Act3').show();
      // alert("Add button");
    });

    $('#remove3').click(function(event){
      event.preventDefault();
      $('#Act3').hide();
    });


});
