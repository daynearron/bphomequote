
$(function() {
  $(".phone").inputmask("(999) 999-999");
  $(".dob").inputmask("99/99/99");
  $("#quote_new_usr").on("change", function() {
    if ($(this).is(":checked")) {
      document.getElementById('indicator').innerHTML = "- Remove";
      $(".add_new_insured").removeClass("hidden");
    } else {
      document.getElementById('indicator').innerHTML = "+ Add";
      $(".add_new_insured").addClass("hidden");
    }
  });
});

