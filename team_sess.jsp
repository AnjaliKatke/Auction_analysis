<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <style>
      	body{
      		
      		 background-size: cover;
      		 background-image:url("image/login.jpg");
      	}
      </style>
    </head>
<%
	String teamname=null;
	String budget=null;
	teamname=request.getParameter("team");
	budget=request.getParameter("budget");
	//System.out.println("You Entered::"+teamname);
	//out.println("You Entered budget::"+budget);
	if(teamname!=null && budget!=null)
	{
		out.println(budget);
		out.println(teamname);
		session.setAttribute("teamname",teamname);
		session.setAttribute("budget",budget);
		%>
		<body>
		<div class="row login">
		<div class="col s2">
		</div>
		<div class="col s8">
			 <div class="card white">
	        <div class="card-content red-text">
	          <h5><p>Create	Your Team click Here To add Player</p></h5>
	           <a href="playerList.jsp"> <button class="btn waves-effect waves-light blue" type="submit" name="action">Click Here
	    					
	 						 </button></a>
	        </div>
	      </div>
		</div>
			<div class="col s2">
		</div>
		</div>
<% 	}
	else
	{%>
		<body>
		<div class="row login">
		<div class="col s2">
		</div>
		<div class="col s8">
			 <div class="card white">
	        <div class="card-content red-text">
	          <h5><p>Please Enter valid Team name and Budget</p></h5>
	           <a href="create_team.jsp"> <button class="btn waves-effect waves-light blue" type="submit" name="action">Click To Back
	    					
	 						 </button></a>
	        </div>
	      </div>
		</div>
			<div class="col s2">
		</div>
		</div>	
	<%}
%>

      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>