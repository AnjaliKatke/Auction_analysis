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
     <title>View Player </title>
     
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
  </div><br>
  

<div class="center-align">
	
 <h4><strong><b>View Players</b></strong></h4>	
	
		  
	<div class="row">
	<div class="col s1">
	</div>
	<div class="col s10">
		<table class="centered">
        <thead>
          <tr>
              <th>PlAYER NAME</th>
              <th>CATEGORY</th>
             
              <th>DELETE</th>
              <th> EDIT</th>
          </tr>
        </thead>
<% 
try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	
	
			String sql="select * from player_profile";
			resultSet = statement.executeQuery(sql);
			while(resultSet.next())
			{
			%>
					
     <tbody>   
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("player_category") %></td>
<td><a href="deleterecord.jsp?value=<%=resultSet.getInt(1)%>"><i class="material-icons">delete</i></a></td>
<td><a href="Edit.jsp"><i class="material-icons">edit</i></a></td>         
</tr>
<%
		}
connection.close();
} 
catch (Exception e) {
e.printStackTrace();
}
%>

            </tbody>        
            </table>
            </div>
            </div></div>
             <!--JavaScript at end of body for optimized loading-->
 <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js"> </script> 
       </body></html>














