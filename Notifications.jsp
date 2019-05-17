<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <head>
    <title>Notifications</title>
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

<ul id="dropdown1" class="dropdown-content">
	<li><a href="playerinfo.jsp">Add player Record</a> </li>
	 <li><a href="ViewPlayers.jsp">View players     </a> </li>
	 <li><a href="ViewUser.jsp">View User        </a> </li>
	 <li><a href="ChangePassword.jsp">Change Password</a>   </li>
		</ul>

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
  </div><br>

<div class="center-align">

<h4><strong><b>Notifications</b></strong></h4>

	
	<div class="col s10">
		<table class="centered">
        <thead>
          <tr>
              <th><b>SR. No.</b></th>
              <th><b>User Name</b></th>
              <th><b> Email Id</b></th>
              <th><b>Mobile NO</b></th>
              <th><b> Submitted On</b></th>
              <th colspan="2"><b>Approval </b></th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>1</td>
            <td>Madhuri</td>
            <td>Madhuri@gmail.com</td>
            <td>70401234</td>
            <td>12/3/2019</td>
             <td><i class="material-icons">check</i></td>
            <td><i class="material-icons">clear</i></td>
            
            
           </tr>
           
            <tr>
            <td>2</td>
            <td>Anjali</td>
            <td>Anjali@gmail.com</td>
            <td>70401234</td>
            <td>15/3/2019</td>
            <td><i class="material-icons">check</i></td>
            <td><i class="material-icons">clear</i></td>
             </tr>
           
            <tr>
            <td>3</td>
            <td>Upendra</td>
            <td>Upendra@gmail.com</td>
            <td>70401234</td>
            <td>18/3/2019</td>
            <td><i class="material-icons">check</i></td>
            <td><i class="material-icons">clear</i></td>
             </tr>
            <tr>
            <td>4</td>
            <td>Sandip</td>
            <td>sandip@gmail.com</td>
            <td>70401234</td>
            <td>/3/2019</td>
            <td><i class="material-icons">check</i></td>
            <td><i class="material-icons">clear</i></td>
            </tr>
     </tbody>
     
     </table></div></div>
       <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js">
      
      document.addEventListener('DOMContentLoaded', function() {
  	    var elems = document.querySelectorAll('.dropdown-trigger');
  	    var instances = M.Dropdown.init(elems, options);
  	  });
  	  // Or with jQuery
  	  $('.dropdown-trigger').dropdown();
    
      </script>
     </body>
     
     </html>