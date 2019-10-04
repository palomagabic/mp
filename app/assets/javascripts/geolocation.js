$(document).ready(function(){

    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(getAddress);
    }else {
      console.log("Geolocation is not possible");
    }
  });
  function getAddress(position) {
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    $.ajax({
      type: 'GET',
      url: 'geocoder_findadress_path',
      dataType: 'script',
      data: { latitude: latitude, longitude: longitude }
    })

  }
