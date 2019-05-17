<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
	//String id = request.getParameter("userid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
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
 <br><br><br><br>
<div class="row iplRecord">
	
		<div class="col s1">
 	</div>
		<div class="col s10">
		 <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Past 6 Years IPL Records</span>
			 <table class="striped">
		        <thead>
		          <tr>
		          	<th>Year</th>
		              <th>Matches</th>
		              <th>Innings</th>
		              <th>Not Out</th>
		              <th>Runns</th>
		               <th>HighScore</th>
		              <th>Average</th>
		              <th>Strike Rate</th>
		               <th>100</th>
		              <th>50</th>
		              <th>4s</th>
		              <th>6s</th>
		              <th>Economy</th>
		               <th>Wickets</th>
		               <th>Bowling Avg</th>
		               <th>5W</th>
		              <th>Stumping Avg</th>
		          </tr>
		        </thead>
		
		        <tbody>
<%
try{
	Connection connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	String player_id=request.getParameter("value");
	int id=Integer.parseInt(player_id);
	//System.out.println("Player id::"+player_id);
	String sql="SELECT * FROM ipl_stats WHERE player_id="+id+"";
	Statement statement=connection.createStatement();
		//System.out.println(sql);
	//"SELECT idPlayers FROM pendu.players WHERE first= '" + tboxFirst.getText() + "'AND last='Man' AND pass=12345";
	ResultSet resultSet=statement.executeQuery(sql);
	while(resultSet.next())
	{		
%>		
		          <tr>
	          		<td><%=resultSet.getString("year") %></td>
		            <td><%=resultSet.getString("matches") %></td>
		            <td><%=resultSet.getString("innings") %></td>
		            <td><%=resultSet.getString("not_out") %></td>
		            <td><%=resultSet.getString("runns") %></td>
		            <td><%=resultSet.getString("highest_score") %></td>
		            <td><%=resultSet.getString("average") %></td>
		            <td><%=resultSet.getString("strike_rate") %></td>
		            <td><%=resultSet.getString("hundreds") %></td>
		            <td><%=resultSet.getString("fifty") %></td>
		            <td><%=resultSet.getString("fours") %></td>
		            <td><%=resultSet.getString("sixes") %></td>
		            <td><%=resultSet.getString("economy") %></td>
		            <td><%=resultSet.getString("average") %></td>
		            <td><%=resultSet.getString("no_of_wickets") %></td>
		            <td><%=resultSet.getString("five_wickets") %></td>
		            <td><%=resultSet.getString("stumping_avg") %></td>
		          </tr>
		        </tbody>
<%
}
%>
		      </table>
		</div>
		<%	
}
catch(Exception e)
{
 	System.out.println(e);	
}

%>		   
		
</div>		
		</div>	
	</div>


	<div class="row iplRecord">
	
		<div class="col s1">
 	</div>
		<div class="col s10">
		 <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">IPL Records Against Each Team</span>
			 <table class="striped">
		        <thead>
		          <tr>
		          	<th>Against Team</th>
		              <th>Matches</th>
		              <th>Innings</th>
		              <th>Not Out</th>
		              <th>Runns</th>
		               <th>HighScore</th>
		              <th>Average</th>
		              <th>Strike Rate</th>
		               <th>100</th>
		              <th>50</th>
		              <th>4s</th>
		              <th>6s</th>
		              <th>Economy</th>
		               <th>Wickets</th>
		               <th>Bowling Avg</th>
		               <th>5W</th>
		              <th>Stumping Avg</th>
		          </tr>
		        </thead>
		
		        <tbody>
		        <%
try{
	Connection connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	String player_id=request.getParameter("value");
	int id=Integer.parseInt(player_id);
	//System.out.println("Player id::"+player_id);
	String sql="SELECT * FROM ipl_Records WHERE player_id="+id+"";
	Statement statement=connection.createStatement();
		//System.out.println(sql);
	//"SELECT idPlayers FROM pendu.players WHERE first= '" + tboxFirst.getText() + "'AND last='Man' AND pass=12345";
	ResultSet resultSet=statement.executeQuery(sql);
	while(resultSet.next())
	{		
%>		
		          <tr>
	          		<td><%=resultSet.getString("against") %></td>
		            <td><%=resultSet.getString("matches") %></td>
		            <td><%=resultSet.getString("innings") %></td>
		            <td><%=resultSet.getString("not_out") %></td>
		            <td><%=resultSet.getString("runns") %></td>
		            <td><%=resultSet.getString("highest_score") %></td>
		            <td><%=resultSet.getString("average") %></td>
		            <td><%=resultSet.getString("strike_rate") %></td>
		            <td><%=resultSet.getString("hundreds") %></td>
		            <td><%=resultSet.getString("fifty") %></td>
		            <td><%=resultSet.getString("fours") %></td>
		            <td><%=resultSet.getString("sixes") %></td>
		            <td><%=resultSet.getString("economy") %></td>
		            <td><%=resultSet.getString("average") %></td>
		            <td><%=resultSet.getString("no_of_wickets") %></td>
		            <td><%=resultSet.getString("five_wickets") %></td>
		            <td><%=resultSet.getString("stumping_avg") %></td>
		          </tr>
		        </tbody>
<%
}
%>
		      </table>
		</div>
		<%	
}
catch(Exception e)
{
 	System.out.println(e);	
}

%>		   
		
		
	</div>
	<center><a href="playerList.jsp"><i class="large material-icons">arrow_back</i></a></center>
	</div>
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