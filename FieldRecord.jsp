<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Field Records</title>
 <!--Import Google Icon Font-->
      <!-- cdn links for materialised css -->
      
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
body {
    background:gray;
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
<title></title>
</head>

<body>
<ul id="dropdown1" class="dropdown-content">
	<li><a href="playerinfo.jsp">Add player Record</a> </li>
	 <li><a href="ViewPlayers.jsp">View players     </a> </li>
	 <li><a href="ViewUser.jsp">View User        </a> </li>
	 <li><a href="ChangePassword.jsp">Change Password</a>   </li>
		</ul>

	<div class="row navbar">
		<nav>
		  <div class="nav-wrapper">
		     <a href="home.jsp" class="brand-logo"><i class="material-icons">home</i></a>
   <ul class="right hide-on-med-and-down">
	<li><a href="Notifications.jsp"> <i class="material-icons">notifications</i></a></li>
	<li><a href="playerinfo.jsp">Add player Record</a> </li>
	 <li><a href="ViewPlayer.jsp">View players     </a> </li>
	 <li><a href="ViewUser.jsp">View User        </a> </li>
	 <li><a href="ChangePassword.jsp">Change Password</a>   </li>
		
	 <li><a href="LogOut.jsp"><i class="material-icons">power_settings_new</i></a></li>
	 
  </ul>
		  </div>
		</nav>
  </div>
  <br><br>
<div class ="container">
<div class="center-align">
    <div class="content1">
<h4><strong><b>Add Player Record </b></strong></h4>
  
   
   <ul class="pagination">
    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
   <li class="waves-effect"> <a href="playerinfo.jsp">Player Profile</a></li>
   <li class="active"><a href="FieldRecord.jsp">Field Records</a></li>
    <li class="waves-effect"><a href="IPLRecord.jsp">IPL Records</a></li>
    
    <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
  </ul>
    <hr>
<form action="FieldRec" method ="post">
  <table>
   
    <tr>
      <td><strong><b>Record Type:</b></strong></td>
      <td><input type ="text" name= "type"></td>
    </tr>
    <tr>
      <td><strong><b>Matches:</b></strong></td>
      <td><input type ="text" name= "mats"></td>
    </tr>
    <tr>
	  <td><strong><b>Innings:</b></strong></td>
      <td><input type ="text" name= "in"></td>
    </tr>
    <tr>
      <td><strong><b>Not Out:</b></strong></td>
 <td><input type ="text" name= "not-out"></td>
    </tr>	    
    <tr>
      <td><strong><b>Runns:</b></strong></td>
      <td><input type ="text" name= "runns"></td>
    </tr>
    <tr>
      <td><strong><b>Highest Score:</b></strong></td>
      <td><input type ="text" name= "highS"></td>
    </tr>
    <tr>
    <td><strong><b>Average:</b></strong></td>
    <td><input type ="text" name= "Aveg"></td>
            </tr>
    <tr>
      <td><strong><b>Strike Rate:</b></strong></td>
    <td><input type ="text" name= "Str"></td>
            </tr>

   <tr>
      <td><strong><b>100's:</b></strong></td>
   <td><input type ="text" name= "hundr"></td>
       </tr>
       <tr>
      <td><strong><b>50's:</b></strong></td>
      <td><input type ="text" name= "fifties"></td>
    </tr>
    <tr>
      <td><strong><b>4's:</b></strong></td>
      <td><input type ="text" name= "fours"></td>
    </tr>
    <tr>
    <td><strong><b>6's:</b></strong></td>
    <td><input type ="text" name= "sixes"></td>
            </tr>
    <tr>
      <td><strong><b>Economy:</b></strong></td>
    <td><input type ="text" name= "economy"></td>
            </tr>

   <tr>
      <td><strong><b>No Of Wickets:</b></strong></td>
   <td><input type ="text" name= "wicket"></td>
       </tr>
        <tr>
    <td><strong><b>5 Wickets:</b></strong></td>
    <td><input type ="text" name= "FiveWicks"></td>
            </tr>
    <tr>
      <td><strong><b>Stumping Rate:</b></strong></td>
    <td><input type ="text" name= "Stm"></td>
            </tr>

   <tr>
      <td><strong><b>Player Id:</b></strong></td>
   <td><input type ="text" name= "plno"></td>
       </tr>
    
    
       
    
    <tr>
      <td>&nbsp;</td>
      <td><button class="btn waves-effect waves-light" type="reset" name="action">Reset</button> </td>
    
	  <td>
  <button class="btn waves-effect waves-light" type="submit" name="action">Submit
    <i class="material-icons right">send</i> </button> </td>
    </tr>
      
  </table>
  </form>


    </div></div>
    </div>
    <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js">
      
      document.addEventListener('DOMContentLoaded', function() {
  	    var elems = document.querySelectorAll('.dropdown-trigger');
  	    var instances = M.Dropdown.init(elems, options);
  	  });
  	  // Or with jQuery
  	  $('.dropdown-trigger').dropdown();
    
      </script>
    
</body>
</html>
