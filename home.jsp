<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <!--Import Google Icon Font-->
      <!-- cdn links for materialised css -->
      
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
body {
    background:white;
}
    .content1 {
    max-width: 1200px;
    margin: auto;
    background: white;
    padding: 10px;
    position: relative;
    
    }
                
nav{
		      position: fixed;
		      background:black;
		      padding:0px 20px;
		    }
		    
		    .box{
		      margin-top: 20px;
		      height: 1000px;
		    }
		    nav li a:hover{
		      background: red;
		    }
		    .slider{
		    	color:red;
		    }
    </style>


</head>

<body>

	<div class="row navbar">
		<nav>
		  <div class="nav-wrapper">
		     <a href="home.jsp" class="brand-logo"><i class="material-icons">home</i></a>
   <ul class="right hide-on-med-and-down">
	<li><a href="Notifications.jsp"> <i class="material-icons">notifications</i></a></li>
	<li><a href="profile.jsp">Add player Record</a> </li>
	 <li><a href="players.jsp">View players     </a> </li>
	 <li><a href="ViewUser.jsp">View User        </a> </li>
	 <li><a href="ChangePassword.jsp">Change Password</a>   </li>
		
	 <li><a href="LogOut.jsp"><i class="material-icons">power_settings_new</i></a></li>
	
  </ul>
		  </div>
		</nav>
  </div>
  <br><br>
<br><br><br>
<div class="center-align">
  <img src="logo.jpg" alt= "logo1.jpg" id ="logo1">
  <div id="data"><br><br><br><br><br><br><br><br><br><h1> Only ADMIN Work here !</h1>
</div></div>
   <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script>
      
      document.addEventListener('DOMContentLoaded', function() {
  	    var elems = document.querySelectorAll('dropdown-trigger');
  	    var instances = M.Dropdown.init(elems, options);
  	  });
  	  // Or with jQuery
  	  $('.dropdown-trigger').dropdown();
    
      </script>
    
</body>
</html>