function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var boatLocation = document.getElementById('boat_location');

    if (boatLocation) {
      var autocomplete = new google.maps.places.Autocomplete(boatLocation, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(boatLocation, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
