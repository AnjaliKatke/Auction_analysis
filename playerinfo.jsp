<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Player Profile</title>
<!--Import Google Icon Font-->
<!-- cdn links for materialised css -->

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<style>
body {
	background: gray;
}

.content1 {
	max-width: 1200px;
	margin: auto;
	background: white;
	padding: 10px;
	position: relative;
}

nav {
	position: fixed;
	background: black;
	padding: 0px 20px;
}

.box {
	margin-top: 20px;
	height: 1000px;
}

nav li a:hover {
	background: red;
}

.slider {
	color: red;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>

<body>
	<ul id="dropdown1" class="dropdown-content">
		<li><a href="playerinfo.jsp">Add player Record</a></li>
		<li><a href="ViewPlayers.jsp">View players </a></li>
		<li><a href="ViewUser.jsp">View User </a></li>
		<li><a href="ChangePassword.jsp">Change Password</a></li>
	</ul>

	<div class="row navbar">
		<nav>
			<div class="nav-wrapper">
				<a href="home.jsp" class="brand-logo"><i class="material-icons">home</i></a>
				<ul class="right hide-on-med-and-down">
					<li><a href="Notifications.jsp"> <i class="material-icons">notifications</i></a></li>
					<li><a href="playerinfo.jsp.jsp">Add player Record</a></li>
					<li><a href="ViewPlayer.jsp">View players </a></li>
					<li><a href="ViewUser.jsp">View User </a></li>
					<li><a href="ChangePassword.jsp">Change Password</a></li>

					<li><a href="LogOut.jsp"><i class="material-icons">power_settings_new</i></a></li>

				</ul>
			</div>
		</nav>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="center-align">
			<div class="content1">
				<h4>
					<strong><b>Add Player Record </b></strong>
				</h4>


				<ul class="pagination">
					<li class="disabled"><a href="#!"><i
							class="material-icons">chevron_left</i></a></li>
					<li class="active"><a href="playerinfo.jsp">Player Profile</a></li>
					<li class="waves-effect"><a href="FieldRecord.jsp">Field
							Records</a></li>
					<li class="waves-effect"><a href="IPLRecord.jsp">IPL
							Records</a></li>

					<li class="waves-effect"><a href="#!"><i
							class="material-icons">chevron_right</i></a></li>
				</ul>
				<hr>
				
				
				<div class="row">
    <form class="col s12" action="PlayerInfo" method = "get" >
      <div class="row">

				<div class="input-field col s6">
          <input  id="plno" type="text" class="validate">
          <label for="plno"><b>Player Id:</b></label>
        </div>
        
        <div class="input-field col s6">
          <input  id="plrname" type="text" class="validate">
          <label for="plrname"><b>Player Name:</b></label>
        </div>
					
			<div class="input-field col s12">
			 <p>
   <label>
        <input name = "group1" value="Batsman" type="radio" >
        <span>Batsman</span> 
      </label> &nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input name = "group1" value="Bowler" type="radio" >
        <span>Bowler</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input name = "group1" value="WicketKeeper" type="radio" >
        <span>WicketKeeper</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input name = "group1" value="All-Rounder" type="radio" >
        <span>All Rounder</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;
      </p>
          <label for="plrcat"><b>Player Category:</b></label>
        </div>		
		<div class="input-field col s6">
          <input  id="Age" type="text" class="validate">
          <label for="Age"><b>Age:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="Nationality" type="text" class="validate">
          <label for="Nationality"><b>Nationality:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="Batstyle" type="text" class="validate">
          <label for="Batstyle"><b>Batting Style:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="Bowlstyle" type="text" class="validate">
          <label for="Bowlstyle"><b>Bowling Style:</b></label>
        </div>  
        <div class="input-field col s6"><br><br>
		<input name="image" type="file" name="image">
          <label for="basePrice"><b>Image Of Player: </b></label>
        </div>
        <div class="input-field col s6">
          <input  id="basePrice" type="text" class="validate">
          <label for="basePrice"><b>Base Price:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="ICC_Ranking" type="text" class="validate">
          <label for="ICC_Ranking"><b>ICC Ranking:</b></label>
        </div>
         <div class="input-field col s6">
          <input  id="BCCI_Grading" type="text" class="validate">
          <label for="BCCI_Grading"><b>BCCI Grading:</b></label>
        </div>
       </div>
        
        <div class="center-align">
        
      <button class="btn waves-effect waves-light" type="reset" name="action">Reset</button>
	  <button class="btn waves-effect waves-light"	type="submit" name="action">Submit <i class="material-icons right">send</i>
		</button>	</div>		
				</form>
</div>
			</div>
		</div>
	</div>
	<!--JavaScript at end of body for optimized loading-->
<script type="text/javascript" src="js/materialize.min.js"></script>

</body>
</html>
