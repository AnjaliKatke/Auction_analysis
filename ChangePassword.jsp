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
	<html>
    <head><base>
    <title>Change Password</title>
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

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

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
  <br>
  <div class="container">
		<div class="center-align">
			<div class="content1">
				<h4>
					<strong><b>Change Password </b></strong>
				</h4>
				
  
  <div class="row">
    <form class="col s12" action="ChangePassword.jsp" method = "get" >
      <div class="row">
  
   <div class="input-field col s12">
          <input  id="old" name="old" type="text" class="validate">
          <label for="old"><b>Enter Old Password:</b></label>
        </div><br><br><br>
         <div class="input-field col s12">
          <input  id="pass" name="pass" type="text" class="validate">
          <label for="pass"><b>Enter New Password:</b></label>
        </div><br><br><br>
         <div class="input-field col s12">
          <input  id="cpass" name="cpass" type="text" class="validate">
          <label for="cpass"><b>Re-enter New Password: </b></label>
        </div><br><br><br>
   <button class="btn waves-effect waves-light"	type="submit" name="action">Submit <i class="material-icons right">send</i>
		</button>
   <%
					       		try{
					       			Connection connection = DriverManager.getConnection(connectionUrl+database, userid, password);
					       			//System.out.println("ok");
					       			Statement st=connection.createStatement();
					       			int id=0;
					       			String psw=request.getParameter("old");
					       			String npsw=request.getParameter("pass");
					       			String cnpsw=request.getParameter("cpass");
					       			if(psw!=null && npsw!=null && cnpsw!=null)
					       			{
					       				ResultSet rs=st.executeQuery("select * from login where password='"+psw+"'");
					       				while(rs.next())
					       				{
					       					id=rs.getInt(1);
					       					String pass=rs.getString(4);
					       					//System.out.println(id);
					       					//System.out.println(pass);
					       				}
					       				if(npsw.equals(cnpsw) && id!=0)
					       				{
					       					Statement st1=connection.createStatement();
					       					String sql="update login set password='"+npsw+"'where user_id="+id+"";
					       					int i=st1.executeUpdate(sql);
					       					//out.println(sql);
					       					out.println("Password Change Successfully");
					       				}
					       				else if(!npsw.equals(cnpsw))
					       				{
					       				 	out.println("Password and Confirm password not match");
					    				}
					       				else{
					       					out.println("Invalid Current Password");
					       				}
					       				
					       			}
					       			
					       		}
					       		catch(Exception e)
					       		{
					       			System.out.println(e);	
					       		}
					       %>
			
  </div>
</form>
</div>
</div></div></div>
    <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js"></script>

    </body>
</html>

   