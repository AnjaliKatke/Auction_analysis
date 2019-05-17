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
			<li><a href="change_password.jsp">Change Password</a></li>
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
	<div class="row change_psw">
	
		<div class="col s2">
		</div>
		<div class="col s8">
			   <div class="card white">
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="card-title">Change Password</span>
			        <div class="card-content black-text">
			         <div class="row">
					    <form action="change_password.jsp"method="GET" class="col s12">
					      <div class="row">
					        <div class="input-field col s3">
					          <i class="material-icons prefix">enhanced_encryption</i>
					          <input id="icon_prefix" type="text" class="validate"name="psw">
					          <label for="icon_prefix">Enter Old Password</label>
					        </div>	
					        <div class="input-field col s3">
					          <i class="material-icons prefix">enhanced_encryption</i>
					          <input id="icon_lock" type="text" class="validate"name="npsw">
					          <label for="icon_lock">Enter New Password</label>
					        </div>
					        <div class="input-field col s3">
					          <i class="material-icons prefix">enhanced_encryption</i>
					          <input id="icon_lock" type="text" class="validate"name="cnpsw">
					          <label for="icon_lock">Renter Password</label>
					        </div>
					       <button class="btn waves-effect waves-light red" type="submit" name="action">Change
    					
 						 </button>
					       
					      </div>
					       <div class="input-field col s3 red-text">
					       <%
					       		try{
					       			Connection connection = DriverManager.getConnection(connectionUrl+database, userid, password);
					       			//System.out.println("ok");
					       			Statement st=connection.createStatement();
					       			int id=0;
					       			String psw=request.getParameter("psw");
					       			String npsw=request.getParameter("npsw");
					       			String cnpsw=request.getParameter("cnpsw");
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
			
			        </div>
			      
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