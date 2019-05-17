<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
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
	</style>
   </head>

<body>
		<ul id="dropdown1" class="dropdown-content">
		  <li><a href="#!">View Profile</a></li>
		  <li><a href="#!">Activity Log</a></li>
		  <li><a href="#!">Log Out</a></li>
		   <li><a href="change_password.jsp">Change Password</a></li>
		</ul>
		<ul id="dropdown2" class="dropdown-content">
		  <li><a href="#!">Base Price</a></li>
		  <li><a href="#!">Strike Rate</a></li>
		  <li><a href="#!">Average</a></li>
		  <li><a href="#!">Most 100</a></li>
			  <li><a href="#!">Runs</a></li>
		  <li><a href="#!">Hitting Average</a></li>
		</ul>
		<ul id="dropdown3" class="dropdown-content">
		  <li><a href="#!">Indian Player</a></li>
		  <li><a href="#!">Overseas Player</a></li>
		  <li><a href="#!">Under 19 Player</a></li>
		  <li><a href="#!">ICC Grade</a></li>
		  <li><a href="#!">BCCI Ranking</a></li>
		</ul>
	<div class="row navbar">
		<nav>
		  <div class="nav-wrapper">
		     <a href="#" class="brand-logo">Players Info</a>
		
		     <ul class="right hide-on-med-and-down">
		
		       <li><a href="webHomePage.html" class="red">Home</a></li>
		       <li><a href="create_team.jsp">Create Team</a></li>
		       <li><a href="viewPrevTeam.jsp">View Team</a></li>
		       <li><a href="PlayerList.html">View Shortlist</a></li>
		       <li><a class="dropdown-trigger" href="#!" data-target="dropdown2">SORT_BY<i class="material-icons right">arrow_drop_down</i></a></li>
		       <li><a class="dropdown-trigger" href="#!" data-target="dropdown3">FILTER_BY<i class="material-icons right">arrow_drop_down</i></a></li>
		       <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Setting<i class="material-icons right">arrow_drop_down</i></a></li>
		    
		     </ul>
		  </div>
		</nav>
  </div>
  <br><br><br>
  <div class="row year">
 	<div class="col s2">
 	</div>
 	<div class="col s8">
 		 <a class='dropdown-trigger btn' href='#' data-target='Year'>FILTER BY</a>

			  <!-- Dropdown Structure -->
			  <ul id='Year' class='dropdown-content'>
			    <li><a href="playerList.jsp?filter=1">INDIAN</a></li>
			    <li><a href="playerList.jsp?filter='overseas'">OVERSEAS</a></li>
			  </ul>
			   <a class='dropdown-trigger btn' href='#' data-target='team'>SORT BY</a>

			  <!-- Dropdown Structure -->
			  <ul id='team' class='dropdown-content'>
			    <li><a href="#!">BASE PRICE</a></li>
			    <li><a href="#!">STRIKE RATE</a></li>
			    <li><a href="#!">BEST BATING AVERAGE</a></li>
			    <li><a href="#!">BEST BOWLING AVERAGE</a></li>
			    <li><a href="#!">NO OF 100</a></li>
			    <li><a href="#!">MOST RUNNS</a></li>
			    <li><a href="#!">MOST WICKETS</a></li>
			  </ul>
 	</div>
 </div>
  <div class="row">
  <div class="col s1"></div>
    <div class="col s10 m10">
      <div class="card white">
        <div class="card-content black-text">
          <table class="centered">
        <thead>
          <tr>
          	  <th>Sr.No</th>
              <th>PlAYER NAME</th>
              <th>CATEGORY</th>
              <th>BORN(Age)</th>
              <th>NATIONALITY</th>
              <th>BASE PRICE</th>
              <th>ADD IN TEAM</th>
              <th>ADD IN SHORTLIST</th>
          </tr>
        </thead>
<%!
	void sort(String sql)
	{
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
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try{
			connection=DriverManager.getConnection(connectionUrl+database, userid, password);
			statement=connection.createStatement();
			resultSet=statement.executeQuery(sql);
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
%>
<%
try{
	String filter=request.getParameter("filter");
	if(filter!=null)
	{
		int n=Integer.parseInt(filter);
		if(n==1)
		{
			String sql="select * from player_profile where nationality=indian";
			sort(sql);
			
		}
	}
	//sort(sql);
	//resultSet = statement.executeQuery(sql);
	int i=1;
	while(resultSet.next())
	{
%>
        <tbody>
          <tr>
          <td><%=i%></td>
            <td><a href="player_profile.jsp?value=<%=resultSet.getString(2)%>"><%=resultSet.getString("name")%>
            </a></td>
            <td><%=resultSet.getString("player_category") %></td>
            <td><%=resultSet.getString("age") %></td>
             <td><%=resultSet.getString("nationality") %></td>
             <td><%=resultSet.getString("base_price") %></td>
            <td> 
            <p>
      <label>	
        <input type="checkbox" checked="checked" />
        <span></span>
      </label>
    </p>
            </td>
            <td> 
        		 <p>
      <label>
        <input type="checkbox" checked="checked" />
        <span></span>
      </label>
    </p>
            </td>
          </tr>
	<%
	i++;
	}
	connection.close();
	}

catch(Exception e)
{
	e.printStackTrace();
}
%>
        </tbody>
      </table>	
          
        </div>
        <div class="card-action">
          <a href="#">This is a link</a>
          <a href="#">This is a link</a>
        </div>
      </div>
    </div>
  </div>

		<br>
  <footer class="section teal darken-2 white-text center">
    <p class="flow-text">Player Zone &copy; 2019 </p>
  </footer>
 <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <script>
      document.addEventListener('DOMContentLoaded', function() {
    	    var elems = document.querySelectorAll('.dropdown-trigger');
    	    var instances = M.Dropdown.init(elems, options);
    	  });

    	  // Or with jQuery

    	  $('.dropdown-trigger').dropdown();
    	        
      </script>
      
</body>
</html>