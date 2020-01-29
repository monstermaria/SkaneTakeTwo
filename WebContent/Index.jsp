<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&display=swap" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.js"></script>

<title>Index Skane App</title>
<link rel="stylesheet" href="Style.css">
</head>
<body id="body">


   <div id="map"></div>
    <script>
		function initMap() {
  		var malmo = {lat: 55.604980, lng: 13.003822};
  		var map = new google.maps.Map(
      		document.getElementById('map'), {zoom: 4, center: malmo});
  		var marker = new google.maps.Marker({position: uluru, map: map});
		}
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC_tDySudXVuZRb7_O-x4bBYasm9_eThn4&callback=initMap">
    </script>

<form action="<%= request.getContextPath() %>/Servlet" method="post">



<h1 id="h1"
> Where do you want to go?</h1>

<ul id="current">
  <li>Current position: </li>
   <li> <input id="current" type="text" name="current">
  </ul>  

<ul id="go">
  <li>Search for address, stop or station: </li>
<li> <input id="go" type="text" name="to">
</ul> 
<input type="submit" value="Go!">


</form>

<script>
window.addEventListener("load", function(){
    window.cookieconsent.initialise({
        "palette": {
            "popup": {
                "background": "#edeff5",
                "text": "#838391"
            },
            "button": {
                "background": "#4b81e8"
            }
        },
        "theme": "classic",
        "type": "opt-in",
        onInitialise: function (status) {
            var type = this.options.type;
            var didConsent = this.hasConsented();
            if (type == 'opt-in' && didConsent) {
                console.log('Ready to fire cookies');
            }
            if (type == 'opt-out' && !didConsent) {
                // disable cookies
            }
        },
    })
});
</script>


</body>
</html>