$(document).ready(function() {
  $(".skill-container").on("click", function(e){
    //active tab
    $(this).toggleClass("selected");
    if ($(this).hasClass("selected")){
      $($(this).data('target')).prop("checked", true);
    } else {
      $($(this).data('target')).prop("checked", false);
    }
  });
});
