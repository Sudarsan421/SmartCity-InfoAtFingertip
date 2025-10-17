<%@ include file="dbcon.jsp"%>
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
.style19 {color: #000000; font-weight: bold; font-size: 12px; }
 </style>

<script type="text/javascript" src='js/jquery-1.10.0.min.js'></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="about.jsp">Smart City <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
		<jsp:include page="admintop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  <br />
	<h4>  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to View Ambulance's Booking History !</h4> <div class="article">


			<%
			try{
			//String qry="select a.* from booking a,login b  where a.uid='"+(String)session.getAttribute("id")+"' and a.status='Complete' and a.uid=b.id  and a.type='Ambulance' order by(a.bookfromdate)";
			  //out.print(qry);
			  //ResultSet rs=st.executeQuery(qry);
			 %>	
						<%}catch(Exception ee){}%>
			 <%
			try{
			String qry1="select * from booking   where uid='"+(String)session.getAttribute("id")+"' and type='Ambulance' and status='Complete' order by(bookfromdate)";
		    //out.print(qry1);
			 ResultSet rs=st.executeQuery(qry1);
			//out.print(qry1);
			%>
			<table width="861">
			<tr>
				<table width="923"  height="65" border="1"  cellpadding="5">
			<tr>
			<td width="110"><span class="style19">Booking ID</span></td> 
			<td width="30"><span class="style19">Vehicle ID</span></td>
			<td width="40"><span class="style19">Booked From Date</span></td>
			<td width="40"><span class="style19">Booked From Time</span></td>
			<td width="40"><span class="style19">Booked Till Date</span></td>
			<td width="40"><span class="style19">Booked Till Time</span></td>
			<td width="68"><span class="style19">Distance</span></td>
			<td width="99"><span class="style19">Price</span></td>
			<td width="94"><span class="style19">User ID</span></td>
			<td width="94"><span class="style19">Type</span></td>
            <td width="120"><span class="style19">Status</span></td>
			</tr>
			<% while(rs.next()){ 	%>
			<tr>
			<td height="29"><span class="style19"><%=rs.getString(1)%></span></td>
			<td><span class="style19"><%=rs.getString(2)%></span></td>
			<td><span class="style19"><%=rs.getString(5)%></span></td>
			<td><span class="style19"><%=rs.getString(6)%></span></td>
			<td><span class="style19"><%=rs.getString(7)%></span></td>
			<td><span class="style19"><%=rs.getString(8)%></span></td>
			<td><span class="style19"><%=rs.getString(9)%></span></td>
			<td><span class="style19"><%=rs.getString(10)%></span></td>
			<td><span class="style19"><%=rs.getString(11)%></span></td>
			<td><span class="style19"><%=rs.getString(12)%></span></td>	
			<td><span class="style19"><%=rs.getString(13)%></span></td>			
			</tr>
			 <% }
			 	%> 
			  </table>
			 
			 <br/><br/>
<%
con.close();
}catch(Exception ee) { }
%>




<div id="map"></div>
    <script>

     var currentPositionLat=20.2860587;
     var currentPositionLng=85.8345398;


    var latis = document.latilongiform.lati;
	var longis = document.latilongiform.longi;
	
      function initMap() {
        var baseLatLong = {lat: 20.2860587, lng: 85.8345398};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: baseLatLong
        });


        /*   START ::  AJAX call for Saved Location    */

              $.ajax({
                url : 'get-saved-locations.jsp',
                data:{type:'Hospital'},      
                dataType: 'json',
                success : function(json) {
                   //console.log(JSON.stringify(json));
                   $(json).each(function(key,value){

                      var savedLatLong = new google.maps.LatLng(value.lat, value.lng)

                      //console.log(savedLatLong);
                      //console.log(baseLatLong);

                         var contentString = '<div id="content">'+
                                    '<div id="siteNotice">'+
                                    '</div>'+
                                    '<h1 id="firstHeading" class="firstHeading">'+value.name+'</h1>'+
                                    '<div id="bodyContent">'+
                                    '<p><b>Latitude: '+value.lat+'</b></p>' +  
                                    '<p><b>Longitude: '+value.lng+'</b></p>' + 
                                    '</div>'+
                                    '</div>';

                        var infowindow = new google.maps.InfoWindow({
                          content: contentString
                        });

                        var marker = new google.maps.Marker({
                          position: savedLatLong,
                          map: map,
                          title: value.name
                        });
                        marker.addListener('click', function() {
                          infowindow.open(map, marker);
                        });


                   });

                }
            });


             /*   END ::  AJAX call for Saved Location    */



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
              //var otherPoint = new google.maps.LatLng(baseLatLong.lat, baseLatLong.lng);

            currentPositionLat=currentPosition.lat();
      		currentPositionLng=currentPosition.lng();

      		//var distance = calcDistance(currentPosition , otherPoint);

      		
      		if(latis!=null)
      		{
      			for(var i=0;i<latis.length;i++)
      			{
      				var lati = latis[i].value;
      				var longi = longis[i].value;
      				var otherPoint = new google.maps.LatLng(lati, longi);

      				var distance = calcDistance(currentPosition , otherPoint);

      				//document.getElementById("distance_"+i).innerHTML
      				$("#distance_"+i).html(distance);

      			}
      		}

      		sortTable();

              //alert(calcDistance(currentPosition , otherPoint));


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
          var marker = new google.maps.Marker({
              position: location, 
              map: map
          });
          //console.log(location);

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
      }

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


function sortTable(){



                    $table  = $('#loctable'),            // cache the target table DOM element
                    $rows   = $('tbody > tr', $table);     // cache all rows from the target table body

                $rows.sort(function(a, b) {

                    var keyA = $('td',a).text();
                    var keyB = $('td',b).text();
                    //var keyA = $(a).children('td').eq(10).text();
					//var keyB = $(b).children('td').eq(10).text();

                   
                        return (keyA < keyB) ? 1 : 0;     // A bigger than B, sorting ascending
                });

                $rows.each(function(index, row){
                  $table.append(row);                    // append rows after sort
                });
           


                	/* //var rows = $('#loctable tbody tr').get();
						var $tbody = $('#loctable tbody');
						var rows = $tbody.find('tr');
						  rows.sort(function(a, b) {

						  var A = $(a).children('td').eq(10).text();
						  var B = $(b).children('td').eq(10).text();

						  console.log(A);
						  console.log(B);

						  if(A < B) {
						    return -1;
						  }

						  if(A > B) {
						    return 1;
						  }

						  return 0;

						  });

						  $.each(rows, function(index, row) {
						    $('#loctable').children('tbody').append(row);    
						  });*/

}



	$(function(){

		$('.sort-table').click(function(e) {
                e.preventDefault();                        // prevent default button click behaviour

                var sortAsc = $(this).hasClass('asc'),     // ASC or DESC
                    $table  = $('#loctable'),            // cache the target table DOM element
                    $rows   = $('tbody > tr', $table);     // cache all rows from the target table body

                $rows.sort(function(a, b) {

                    var keyA = $('td',a).text();
                    var keyB = $('td',b).text();

                    if (sortAsc) {
                        return (keyA > keyB) ? 1 : 0;     // A bigger than B, sorting ascending
                    } else {
                        return (keyA < keyB) ? 1 : 0;     // B bigger than A, sorting descending
                    }
                });

                $rows.each(function(index, row){
                  $table.append(row);                    // append rows after sort
                });
            });

	});

    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDBRwuvgr8Thn-kajeeHeMwr6speR549AI&libraries=geometry&callback=initMap">
    </script>
		</div>
		</div>
		
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="userleft.jsp" />
        </div>
        
      </div>
	  
<br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br />
      <div class="clr"></div>
    </div>
    </div>
  </div>
  <div class="footer">
    <jsp:include page="footer.jsp" />
  </div>
</div>
</body>
</html>
