$(document).ready(function() {
 $('#voting_form').on('submit', function(event){
  event.preventDefault();
  var url = $(this).attr('action');
  var data = $(this).serialize();
  console.log(this)
 })
});
