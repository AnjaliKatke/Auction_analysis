<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
	//String id = request.getParameter("userid");
	String driver = "com.mysql.jdbc.Driver";
	String  connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "auction";
	String userid = "root";
	String password = "root";
	try 
	{
		Class.forName(driver);
	} 
	catch(ClassNotFoundException e)
	{
		e.printStackTrace();
	}
	
%>
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
<%
    String name=(String)session.getAttribute("teamname");
%>
<body>
		<ul id="dropdown1" class="dropdown-content">
		  <li><a href="#!">View Profile</a></li>
		  <li><a href="#!">Activity Log</a></li>
		  <li class="divider"></li>
		  <li><a href="#!">Log Out</a></li>
		  <li><a href="change_password.jsp"></li>
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
		       <li><a class="dropdown-trigger" href="#!" data-target="dropdown1"><%=name %><i class="material-icons right">arrow_drop_down</i></a></li>
		    
		     </ul>
		  </div>
		</nav>
  </div>
 <br><br>
	<div class="row team">
		<div class="col s4"></div>
		<div class="col s4">
<%
try{
	Connection connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	String player_name=request.getParameter("value");
	//int player_id=Integer.parseInt(player_name);
	System.out.println("Player name::"+player_name);
		String sql="SELECT * FROM player_profile WHERE name='"+player_name+"'";
		Statement statement=connection.createStatement();
		System.out.println(sql);
	//"SELECT idPlayers FROM pendu.players WHERE first= '" + tboxFirst.getText() + "'AND last='Man' AND pass=12345";
	ResultSet resultSet=statement.executeQuery(sql);
	while(resultSet.next()){
%>
			 <div class="card">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img class="activator" src="image/Kohli.jpg">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator white-tex0t text-darken-4"><%=resultSet.getString("name") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn-floating pulse"><i class="material-icons">account_circle</i></a></span>
				      <p><a href="playerStatistics.jsp?value=<%=resultSet.getInt(1)%>">Check Statistics</a></p>
				       <p><a href="iplRecords.jsp?value=<%=resultSet.getInt(1)%>">Check IPL records</a></p>
				        <p><a href="playerList.jsp">Back</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title pink lighten-4-text text-darken-4">Basic Information<i class="material-icons right">close</i></span>
				     <table class="highlight">
				        <thead>
				           <tr>
						    <th>Born Date</th>
						    <td><%=resultSet.getString("name") %></td>
						  </tr>
						   <tr>
						    <th>Playing Category</th>
						    <td><%=resultSet.getString("player_category") %></td>
						  </tr>
						   <tr>
						    <th>Nationality</th>
						    <td><%=resultSet.getString("nationality") %></td>
						  </tr>
						  <tr>
						    <th>Playing Role</th>
						    <td><%=resultSet.getString("batting_style") %></td>
						  </tr>
						  <tr>
						    <th>Batting Style</th>
						    <td><%=resultSet.getString("bowling_style") %></td>
						  </tr>
						   <tr>
						    <th>Bowling Style</th>
						    <td><%=resultSet.getString("name") %></td>
						  </tr>
						   <tr>
						    <th>Base Price</th>
						    <td><%=resultSet.getString("base_price") %></td>
						  </tr>
						   <tr>
						    <th>ICC Rank</th>
						    <td><%=resultSet.getString("icc_rank") %></td>
						  </tr>
						   <tr>
						    <th>BCCI Grade</th>
						    <td><%=resultSet.getString("bcci_grade") %></td>
						  </tr>
				        </thead>
				      </table>
				</div>
			 </div>

		</div>
		<%
}
}
catch(Exception e)
{
	System.out.println(e);
}%>		
		<div class="col s4"></div>
			
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