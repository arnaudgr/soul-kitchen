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
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap


/* DROPDOWN NAVBAR MAMENE */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}
// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
} 

/* CREATION RECETTE */

  $(document).ready(function() {
  $('#add-step').on('click', function() {
  var base_url = "/recipe/add_step"
  var description = $('#description').val()
  var url = base_url+'/'+description
  
  $.get(url);
    });
  });

  $(document).ready(function() {
  $('#add-ingredient').on('click', function() {
  var base_url = "/recipe/add_ing"
  var quantity = $('#quantity').val()
  var namevrai = $('#namevrai').val()
  var url = base_url+'/'+quantity+'/'+namevrai
  
  $.get(url);
    });
  });