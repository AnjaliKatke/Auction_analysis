<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
      	body{
      		
      		 background-size: cover;
      		 
      	}
     
      	.team .card{
      		background:rgba(0,0,0,.75);
      		margin-top:25px;
      		margin-left:10px;
      	}
      	.team label{
      		color:white;
      		font-size:20px;
      	}
      	.team input{
      		color:white;
      		font-size:30px;
      	}
      	.change_psw{
      		color:red;
      		font:40px;
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
		  <li><a href="#!">View Profile</a></li>
		  <li><a href="#!">Activity Log</a></li>
		  <li class="divider"></li>
		  <li><a href="#!">Log Out</a></li>
		</ul>
	<div class="row navbar">
		<nav>
		  <div class="nav-wrapper">
		     <a href="#" class="brand-logo">Player Zone</a>
		
		     <ul class="right hide-on-med-and-down">
		
		      <li><a href="webHomePage.html" class="red">Home</a></li>
		       <li><a href="create_team.jsp">Create Team</a></li>
		        <li><a href="playerList.jsp">View Player</a></li>
		       <li><a href="viewPrevTeam.jsp">View Team</a></li>
		       <li><a href="create_shortlist.jsp">View Shortlist</a></li>
		       <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Setting<i class="material-icons right">arrow_drop_down</i></a></li>
		    
		     </ul>
		  </div>
		</nav>
  </div>
 <br><br>
	<div class="row final_team">
	
		<div class="col s2">
		</div>
		<div class="col s8">
			   <div class="card white">
			    &nbsp;&nbsp;<span class="card-title">Team Name:CSK</span>
			        <div class="card-content black-text">
			        	 <table class="responsive">
					        <thead>
					          <tr>
					              <th>Sr.No</th>
					              <th>Player Name</th>
					              <th>Category</th>
					              <th>Base Price</th>
					              <th>Premium</th>
					              <th>Total Price</th>
					              <th>Remaining Budget</th>
					          </tr>
					        </thead>
					
					        <tbody>
					          <tr>
					            <td>1</td>
					            <td>Virat Kohli</td>
					            <td>Batsman</td>
					            <td>16 Crore</td>
					            <td width="20px"> <input id="first_name" type="text" class="validate"></td>
					            <td>18 Crore</td>
					            <td>53 Crore</td>
					          </tr>
					           <tr>
					            <td>2</td>
					            <td>Rohit Sharma</td>
					            <td>Batsman</td>
					            <td>10 Crore</td>
					            <td> <input id="first_name" type="text" class="validate"></td>
					            <td>15 Crore</td>
					            <td>38 Crore</td>
					          </tr>
					           <tr>
					            <td>3</td>
					            <td>M.S.Dhoni</td>
					            <td>Wicket-Keeper</td>
					            <td>12 Crore</td>
					            <td> <input id="first_name" type="text" class="validate"></td>
					            <td>18 Crore</td>
					            <td>20 Crore</td>
					          </tr>
					        
					        </tbody>
					    </table>
            
			        </div>
			   	<center>   <a class="waves-effect waves-light btn">Save</a>
			        <a class="waves-effect waves-light btn">Print</a></center>
			   </div>
		</div>
		<div class="col s2"></div>
			
	</div>
			
			<!-- Footer -->
  <footer class="section teal darken-2 white-text center">
    <p class="flow-text">Player Zone &copy; 2019 </p>
  </footer>

 <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <script>
      const sideNav = document.querySelector('.sidenav');
      M.Sidenav.init(sideNav, {});

      // Slider
      const slider = document.querySelector('.slider');
      M.Slider.init(slider, {
        indicators: false,
        height: 500,
        transition: 500,
        interval: 6000
      });

      // Autocomplete
     
      // Material Boxed
      const mb = document.querySelectorAll('.materialboxed');
      M.Materialbox.init(mb, {});

      // ScrollSpy
      const ss = document.querySelectorAll('.scrollspy');
      M.ScrollSpy.init(ss, {});
  	
     
      document.addEventListener('DOMContentLoaded', function() {
    	    var elems = document.querySelectorAll('.dropdown-trigger');
    	    var instances = M.Dropdown.init(elems, options);
    	  });

    	  // Or with jQuery

    	  $('.dropdown-trigger').dropdown();
      </script>
</body>
</html>