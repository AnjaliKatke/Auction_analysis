<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit</title>
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
<title></title>
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
  </div>
  <br><br>
<div class="center-align">
    <div class="content1">
<center><h4><strong><b> Edit Player Record </b></strong></h4>
   </center>
    <hr>

  <table width="431" height="837" border="0" align="center">
    <tr>
      <td width="139"><strong><b>*Player No:</strong></td>
      <td width="230"><input type ="text" name= "plno"  required placeholder="1"></td>
    </tr>
    <tr>
      <td><strong><b>*Player Name:</strong></td>
      <td><input type ="text" name= "plrname"   required placeholder="Virat Kohli"></td>
    </tr>
    <tr>
      <td><strong><b>*Price:</b></strong></td>
      <td><input type ="text" name= "plrprice"  required placeholder="35cr"></td>
    </tr>
<td><strong><b>*Age:</b></strong></td>
      <td><input type ="text" name= "Age"  required placeholder="29" ></td>
    </tr>
    <tr>
      <td><strong><b>*No_of_wickets:</b></strong></td>
 <td><input type ="text" name= "No_of_wickets"  required placeholder="10"></td>
    </tr>	    
    <tr>
      <td><strong><b>*No_of_Centuries:</b></strong></td>
      <td><input type ="text" name= "No_of_Centuries"  required placeholder="41"></td>
    </tr>
    <tr>
      <td><strong><b>*No_of_Catches:</b></strong></td>
      <td><input type ="text" name= "No_of_Catches"  required placeholder="79"></td>
    </tr>
    <tr>
      <td><strong><b>*Availability:</b></strong></td>
      <td><input type ="text" name= "Availability"  required placeholder="Available"></td>
    </tr>
    <tr>
      <td><strong><b>*Status:</b></strong></td>
<td><input type ="text" name= "status"  required placeholder="Unsold"></td>
              </tr>
    <tr>
      <td><strong><b>*ICC_Ranking:</b></strong></td>
    <td><input type ="text" name= "ICC_Ranking"  required placeholder="1"></td>
            </tr>

   <tr>
      <td><strong><b>*BCCI_Ranking:</b></strong></td>
   <td><input type ="text" name= "BCCI_Grading"  required placeholder="A"></td>
       </tr>
    
    <tr>
      <td><strong><b>*Image Of Player: </b></strong></td>
      <td><input name="image" type="file" id="image"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><a class="waves-effect waves-light btn-large">Submit </a> </td>
	  <td><a class="waves-effect waves-light btn-large">Reset </a> </td>
    </tr>
      
  </table>
 
</form>
    </div></div>
     
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
