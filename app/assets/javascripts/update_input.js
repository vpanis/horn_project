$(document).ready(function() {
  $('#navbar_input').on('change', function() {
    var location = $(this).val();
    $('#horntrip_q').val(location);
  })
})
