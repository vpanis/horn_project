$(document).ready(function() {
  $('#navbar_input').on('change', function() {
    var address = $(this).val();
    $('#horntrip_q').val(address);
  })
})
