<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
      	}
     
      	.login .card{
      		background:rgba(0,0,0,.75);
      		margin-top:25px;
      		margin-left:10px;
      	}
      	.login label{
      		color:white;
      		font-size:20px;
      	}
      	.login input{
      		color:white;
      		font-size:30px;
      	}
      
      </style>
    </head>

<body>
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
<%
	try{
		connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		String id=request.getParameter("value");
		int idd=Integer.parseInt(id);
		int player_id=0;
		String sql1="select * from team where player_id=?";
		PreparedStatement st=connection.prepareStatement(sql1);
		st.setInt(1,idd);
		ResultSet rs =st.executeQuery();
		while(rs.next())
		{
			player_id=rs.getInt("player_id");
			System.out.println("id::"+player_id);
		}
		String name=(String)session.getAttribute("teamname");
		String budget=(String)session.getAttribute("budget");
		//out.println("teamname::"+name);
		//out.println("budget::"+budget);
		Date todate=new Date();
		SimpleDateFormat DATE_FORMAT=new SimpleDateFormat("dd-MM-yyyy");
		String dateto=DATE_FORMAT.format(todate);
		//out.println(dateto);
		int n=0;
		if(player_id==0)
		{
			String sql = "insert into team(team_id,team_name,budget,creation_date,player_id) values (?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
			stmt.setString(1,null);
			stmt.setString(2,name);
			stmt.setString(3,budget);
			stmt.setString(4,dateto);
			stmt.setInt(5,idd);
			//stmt.setString(2,dateto);
			n=stmt.executeUpdate();
		}
			if(n>0)
			{%>
			 
			     <div class="row">
				<div class="col s2">
				</div>
				<div class="col s8">
					 <div class="card blue-grey darken-1">
			        <div class="card-content blue-text">
			       <i class="large material-icons">check_box</i>
			        </div>
			        <div class="card-action">
			          <a href="playerList.jsp?added=1&id=<%=idd%>">Player Added In Team</a>
			        </div>
			      </div>
				</div>
					<div class="col s2">
				</div>
			      
			<%}
			else{
				%>
				<div class="row">
				<div class="col s2">
				</div>
				<div class="col s8">
					 <div class="card blue-grey darken-1">
			        <div class="card-content red-text">
			        <i class="large material-icons">close</i>
			        </div>
			        <div class="card-action">
			          <a href="playerList.jsp?added=1&id=<%=idd%>">Player Already Exixts In Team</a>
			        </div>
			      </div>
				</div>
					<div class="col s2">
				</div>
			<%}
			%>
	<%
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>