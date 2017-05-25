// Autocomplete for the form
$(document).ready(function() {
  var horntrip_address = $('#horntrip_address').get(0);

  if (horntrip_address) {
    var autocomplete = new google.maps.places.Autocomplete(horntrip_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(horntrip_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault();
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#horntrip_address').trigger('blur').val(components.address);
}

// Autocomplete for navbar search
$(document).ready(function() {
  var navbar_input = $('#navbar_input').get(0);

  if (navbar_input) {
    var autocomplete = new google.maps.places.Autocomplete(navbar_input, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(navbar_input, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault();
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#navbar_input').trigger('blur').val(components.address);
}

// Autocomplete for navbar search in homepage
$(document).ready(function() {
  var horntrip_q = $('#horntrip_q').get(0);

  if (horntrip_q) {
    var autocomplete = new google.maps.places.Autocomplete(horntrip_q, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(horntrip_q, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault();
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#horntrip_q').trigger('blur').val(components.address);
}


function getAddressComponents(place) {
  var street_number = null;
  var route = null;
  var zip_code = null;
  var city = null;
  var country_code = null;
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type == 'street_number') {
        street_number = component.long_name;
      } else if (type == 'route') {
        route = component.long_name;
      } else if (type == 'postal_code') {
        zip_code = component.long_name;
      } else if (type == 'locality') {
        city = component.long_name;
      } else if (type == 'country') {
        country_code = component.short_name;
      }
    }
  }

  return {
    address: street_number == null ? route : (street_number + ' ' + route),
    zip_code: zip_code,
    city: city,
    country_code: country_code
  };
}
