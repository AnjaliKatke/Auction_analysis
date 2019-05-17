<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*"%>
    <%
    	String name=request.getParameter("username");
    	session.setAttribute("teamname",name);
    	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
      <!--Import Google Icon Font-->
      <!-- cdn links for materialised css -->
      
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
  
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <style>
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
		       <li><a href="viewShortlist.jsp">View Shortlist</a></li>
		       <li><a class="dropdown-trigger" href="#!" data-target="dropdown1"><%= request.getParameter("username") %><i class="material-icons right">arrow_drop_down</i></a></li>
		    
		     </ul>
		  </div>
		</nav>
  </div>
  <br><br><br>

   
  <!-- Section: Slider -->
  <div class="container">
  <div class="ror">
  <div class="col s8">
  <section class="slider">
    <ul class="slides">
      <li>
        <img src="image/back.png">
        <!-- random image -->
        <div class="caption center-align">
          <h5 class="light grey-text text-lighten-3 hide-on-small-only"></h5>
        </div>
      </li>
      <li>
        <img src="image/ipl-auction.jpg">
        <!-- random image -->
        <div class="caption left-align">
          <h2></h2>
          <h5 class="light grey-text text-lighten-3 hide-on-small-only"></h5>
        </div>
      </li>
      <li>
        <img src="image/CricketBall.jpg">
        <!-- random image -->
        <div class="caption right-align">
          <h2></h2>
          <h5 class="light grey-text text-lighten-3 hide-on-small-only"></h5>
        </div>
      </li>
    </ul>
  </section>
</div>
</div>
</div>

  <!-- Section: Icon Boxes -->
  <section class="section section-icons grey lighten-4 center">
    <div class="container">
      <div class="row">
        <div class="col s12 m4">
          <div class="card-panel">
            <i class="material-icons large teal-text">done_all</i>
            <h4>Auction Rules</h4>
            <p>The auction for the 2019 Indian Premier League will take place on Tuesday in Jaipur, with a total of 346 players up for grabs.

Nine overseas players have set the maximum reserve price of INR 2 crore (�220,980), with no Indians following suit. Only Jaydev Unadkat, India's most expensive player last season, joined 10 more overseas cricketers in the bracket worth INR 1.5 crore (�165,735).

Some of the top players available include Brendon McCullum, Lasith Malinga, Corey Anderson and Yuvraj Singh.</p>
          </div>
        </div>
        
         <div class="col s12 m8">
          <div class="card-panel">
            <i class="material-icons large teal-text">done_all</i>
            <h4>Team Budgets</h4>
           	 <table class="centerd">
        <thead>
          <tr>
              <th>Team Name</th>
              <th>Team Budget</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Chennai Super Kings</td>
            <td>8.40 crore rupees</td>
          </tr>
          <tr>
            <td>Delhi Capitals</td>
            <td>25.50 crore rupees</td>
          </tr>
          <tr>
            <td>Kolkata Knight Riders</td>
            <td>11.15 crore rupees</td>
          </tr>
           <tr>
            <td>Kings XI Punjab</td>
            <td>36.20 crore rupees</td>
          </tr>
           <tr>
            <td>Mumbai Indians</td>
            <td>20.95 crore rupees</td>
          </tr>
           <tr>
            <td>Rajasthan Royals</td>
            <td>36.20 crore rupees</td>
          </tr>
            <tr>
            <td>Royal Challengers Bangalore</td>
            <td>18.15 crore rupees</td>
          </tr>
            <tr>
            <td>Sunrisers Hyderabad</td>
            <td>9.7 crore rupees</td>
          </tr>
        </tbody>
      </table>
          </div>
        </div>
      </div>
    </div>
    
    
  </section>

  <!-- Section: Popular Places -->
  <section id="popular" class="section section-popular scrollspy">
    <div class="container">
      <div class="row">
        <h4 class="center">
          <span class="teal-text">Popular</span> Player</h4>
        <div class="col s12 m4">
          <div class="card">
            <div class="card-image">
              <img src="image/Kohli.jpg" alt="">
              <span class="card-title">VIRAT KOHLI</span>
            </div>
            <div class="card-content">
              Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nostrum ea deserunt officia, dicta sint perferendis.
            </div>
          </div>
        </div>
        <div class="col s12 m4">
          <div class="card">
            <div class="card-image">
              <img src="image/Chris-Gayle-RCB.jpg" alt="">
              <span class="card-title">CHRIS-GAYLE</span>
            </div>
            <div class="card-content">
              Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nostrum ea deserunt officia, dicta sint perferendis.
            </div>
          </div>
        </div>
        <div class="col s12 m4">
          <div class="card">
            <div class="card-image">
              <img src="image/redmwqfbjcece.jpg" alt="">
              <span class="card-title">ABD</span>
            </div>
            <div class="card-content">
              Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nostrum ea deserunt officia, dicta sint perferendis.
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Section: Follow -->
  <section class="section section-follow teal darken-2 white-text center">
    <div class="container">
      <div class="row">
        <div class="col s12">
          <h4></h4>
          <p></p>
          <a href="#" class="white-text">
            <i class="fab fa-facebook fa-4x"></i>
          </a>
          <a href="#" class="white-text">
            <i class="fab fa-twitter fa-4x"></i>
          </a>
          <a href="#" class="white-text">
            <i class="fab fa-linkedin fa-4x"></i>
          </a>
          <a href="#" class="white-text">
            <i class="fab fa-google-plus fa-4x"></i>
          </a>
          <a href="#" class="white-text">
            <i class="fab fa-pinterest fa-4x"></i>
          </a>
        </div>
      </div>
    </div>
  </section>

 
  <!-- Footer -->
  <footer class="section teal darken-2 white-text center">
    <p class="flow-text">Player Zone &copy; 2019</p>
  </footer>

  <!--JavaScript at end of body for optimized loading-->
<script type="text/javascript" src="js/materialize.min.js"></script>
  <script>
    // Sidenav
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