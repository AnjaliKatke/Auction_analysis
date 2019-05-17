<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
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
<%
	try{
		connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		String id=request.getParameter("value");
		int idd=Integer.parseInt(id);
		int player_id=0;
		String sql1="select * from shortlist where player_id=?";
		PreparedStatement st=connection.prepareStatement(sql1);
		st.setInt(1,idd);
		ResultSet rs =st.executeQuery();
		while(rs.next())
		{
			player_id=rs.getInt("player_id");
			System.out.println("id::"+player_id);
		}
		//Date todate=new Date();
		//SimpleDateFormat DATE_FORMAT=new SimpleDateFormat("dd-MM-yyyy");
		//String dateto=DATE_FORMAT.format(todate);
		if(player_id==0)
		{

			String sql = "insert into shortlist(shortlist_id,player_id) values (?, ?)";
			PreparedStatement stmt = connection.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
			stmt.setString(1,null);
			stmt.setInt(2,idd);
			//stmt.setString(2,dateto);
			int n=stmt.executeUpdate();
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
			          <a href="playerList.jsp?added=1&id=<%=idd%>">Player Added In Shortlist</a>
			        </div>
			      </div>
				</div>
					<div class="col s2">
				</div>
			<%}
		}
		else
		{%>
			<div class="row">
				<div class="col s2">
				</div>
				<div class="col s8">
					 <div class="card blue-grey darken-1">
			        <div class="card-content red-text">
			        <i class="large material-icons">close</i>
			        </div>
			        <div class="card-action">
			          <a href="playerList.jsp?added=1&id=<%=idd%>">Player Already Exixts In Shortlist</a>
			        </div>
			      </div>
				</div>
					<div class="col s2">
				</div>
		<%}
		
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>