<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style1.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
  
<script type="text/javascript" src="tabcontent.js"></script>
 <style> 
  .myButton {
	-moz-box-shadow: 0px 1px 0px 0px #fff6af;
	-webkit-box-shadow: 0px 1px 0px 0px #fff6af;
	box-shadow: 0px 1px 0px 0px #fff6af;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffec64), color-stop(1, #ffab23));
	background:-moz-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-webkit-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-o-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-ms-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffec64', endColorstr='#ffab23',GradientType=0);
	background-color:#ffec64;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #ffaa22;
	display:inline-block;
	cursor:pointer;
	color:#333333;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:7px 44px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffee66;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	background-color:#ffab23;
}
.myButton:active {
	position:relative;
	top:1px;
}
     
      #map {
        width: 920px;
        height: 600px;
      }
.style12 {font-size: 12px}
 </style>

<script type="text/javascript" src='js/jquery-1.10.0.min.js'></script>

<script language="javascript">
function verify(){
var s1 = document.f2.pas.value;
var s2 = document.f2.pas1.value;
if(s1==""){
	alert("Enter password.");
	document.f2.pas.focus();
	return false;
}else if(s2==""){
	alert("Enter confirm password.");
	document.f2.pas1.focus();
	return false;
}else if(s1.length<6){
	alert("Password should not be less than 6 character.");
	document.f2.pas.focus();
	return false;
}else if(s2.length<6){
	alert("Confirm Password should not be less than 6 character.");
	document.f2.pas1.focus();
	return false;
}else if(s1!=s2){
	alert("Password and Confirm Password does not match.");
	document.f2.pas.focus();
	return false;
}else
    return true;
}
</script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="">Smart City <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
		<jsp:include page="topmenu.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	<h2>Welcome to Vehicle Registration</h2>
        <div class="article">
         
<form  name="f2" id="f2" method="get" action="vehiclesignup3.jsp">
	<table width="708">
	<tr> 
		<td>Registration Number</td>
		<td><input type="text" name="vno" value="<%=request.getParameter("a2")%>" readonly="true" /></td>
		<td></td>
		<td>Type </td>
		<td><input type="text" name="type" value="<%=request.getParameter("a1")%>" readonly="true" /></td>
		<td></td>
		</tr>
		<td>Log Name </td>
		<td><input type="text" name="logna" > </td>
		<td></td>
		<td>Model</td>
		<td><input type="text" name="model"/></td></tr>
		<tr>
		<td>Password</td>
		<td><input type="password" name="pas" ></td>
		<td></td>
		<td>Confirm Password</td>
		<td><input type="password" name="pas1"></td>
	</tr>
	<tr>
	    <td>Security Question</td>
		<td>
		<select name="c4">
		<option value="What is the name of your driver?">When is the name of your driver?</option>
		<option value="What is your registration number?">What is your registration number?</option>
		</select>		</td>
		<td></td>
		<td>Security Answer</td>
		<td><input type="text" name="sec1"></td>
	     </tr>
		<td>Owner Name</td>
		<td><input type="text" name="oname"></td>
		<td></td>
		<td>Driver Name</td>
		<td><input type="text" name="dname" ></td></tr>
		<tr>
		<td>City</td>
		<td><input type="text" name="city"></td>
		<td></td>
		<td>District</td>
		<td><input type="text" name="dist" /></td>
		</tr>
        <td>State</td>
		<td><input type="text" name="state" ></td>
		</tr>
		<tr>
	    <td>Timing</td>
		<td><input type="text" name="timing" ></td>
		<td></td>
		<td>Booking Contact</td>
		<td><input type="text" name="dno"/></td>
		<td></td>
		</tr>
		<tr>
		<td>Price (Base+Per/Km)</td>
		<td><input type="text" name="base" /> <input type="text" name="perkm" > </td>
		<td>&nbsp;</td>
		<td></td>
		</tr>
		 <tr>
	   <td>Latitude</td>
	   <td><input name="lat" type="text" id="lat"></td>
	   <td></td>
	   <td>Longitude</td>
	   <td><input name="lng" type="text" id="lng"></td>
	   </tr>
		
	<tr><td height="57"><input type="submit" value="SUBMIT" onclick="return verify()" align="center"></td></tr>		
	</table>
	</form>
 
  <br />
  <div id="map"></div>

<script>

      // This example displays a marker at the center of Australia.
      // When the user clicks the marker, an info window opens.

var markers = [];

      function initMap() {
        var baseLatLong = {lat: 20.2860587, lng: 85.8345398};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: baseLatLong
        });

        

        google.maps.event.addListener(map, 'click', function(event) {
         placeMarker(map,event.latLng);
         //console.log(event);
      });


        // START :: Current Location

        var infoWindow1 = new google.maps.InfoWindow({map: map});
        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };



              var currentPosition  = new google.maps.LatLng(pos.lat, pos.lng);
              var otherPoint = new google.maps.LatLng(baseLatLong.lat, baseLatLong.lng);

             // alert(calcDistance(currentPosition , otherPoint));


            console.log(pos);

            infoWindow1.setPosition(pos);
            infoWindow1.setContent('Current Location : Latitude:'+pos.lat + " Longitude:"+ pos.lng);
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow1, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow1, map.getCenter());
        }

        //END :: Current Location

      }


      function placeMarker(map, location) {

        removeMarkers();
        
          var marker = new google.maps.Marker({
              position: location, 
              map: map
          });
          //console.log(location);
      
      document.getElementById("lat").value=location.lat();
      document.getElementById("lng").value=location.lng();

          var contentData = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>'+
            '<h1 id="firstHeading" class="firstHeading">Location</h1>'+
            '<div id="bodyContent">'+
            '<p><b>Latitude: '+location.lat()+'</b></p>' +  
            '<p><b>Longitude: '+location.lng()+'</b></p>' + 
            '</div>'+
            '</div>';
        var infowindow2 = new google.maps.InfoWindow({
          content: contentData
        });

        marker.addListener('click', function() {
          infowindow2.open(map, marker);
        });


        //Add marker to the array.
         markers.push(marker);

      }


      function removeMarkers() {
        //Loop through all the markers and remove
        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(null);
        }
        markers = [];
    };

      //Function for Current Location
      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
      }


      //calculates distance between two points in km's
      function calcDistance(p1, p2){
        return (google.maps.geometry.spherical.computeDistanceBetween(p1, p2) / 1000).toFixed(2);
      }


/*
      var rad = function(x) {
        return x * Math.PI / 180;
      };

      var getDistance = function(p1, p2) {
        var R = 6378137; // Earth’s mean radius in meter
        var dLat = rad(p2.lat() - p1.lat());
        var dLong = rad(p2.lng() - p1.lng());
        var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
          Math.cos(rad(p1.lat())) * Math.cos(rad(p2.lat())) *
          Math.sin(dLong / 2) * Math.sin(dLong / 2);
        var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        var d = R * c;
        return d; // returns the distance in meter
      };*/

    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDBRwuvgr8Thn-kajeeHeMwr6speR549AI&libraries=geometry&callback=initMap">
    </script>
	
	        
          <p>&nbsp;</p>
        </div>
		<br /><br /><br /><br /><br />
      </div>
      <div class="sidebar"> 
        <div class="gadget">
		
        </div>
        
      </div>
      <div class="clr"></div>
    </div>
  </div> 
  <div class="footer">
    <jsp:include page="footer.jsp" />
  </div>
</div>
</body>
</html>
