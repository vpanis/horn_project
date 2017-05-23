      $(function() {
          $('input.datepicker').data({behaviour: "datepicker"}).datepicker();
      });

      $('input#horntrip_starting_day').datepicker({
        weekStart: 1,
        multidate: false,
        todayHighlight: true,
        altField: '#horntrip_starting_day',
        altFormat: 'yy-mm-dd',
      });
