<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd" > 
      <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%


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
Connection con = null;
Statement statement = null;
try{
 	con = DriverManager.getConnection(connectionUrl+database, userid, password);
 	statement=con.createStatement();
 	

ResultSet rs = null;
int id=0;
 rs =statement.executeQuery("select * from player_profile");
if(rs.last()){
id=rs.getInt("player_id");
 //      out.println(id);           

%>


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
		<li><a href="profile.jsp">Add player Record</a></li>
		<li><a href="players.jsp">View players </a></li>
		<li><a href="ViewUser.jsp">View User </a></li>
		<li><a href="ChangePassword.jsp">Change Password</a></li>
	</ul>

	<div class="row navbar">
		<nav>
			<div class="nav-wrapper">
				<a href="home.jsp" class="brand-logo"><i class="material-icons">home</i></a>
				<ul class="right hide-on-med-and-down">
					<li><a href="Notifications.jsp"> <i class="material-icons">notifications</i></a></li>
					<li><a href="profile.jsp.jsp">Add player Record</a></li>
					<li><a href="players.jsp">View players </a></li>
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
					<li class="active"><a href="profile.jsp?value=1">Player Profile</a></li>
					<li class="waves-effect"><a href="FRec.jsp">Field
							Records</a></li>
					<li class="waves-effect"><a href="IPL.jsp">IPL
							Records</a></li>

					<li class="waves-effect"><a href="#!"><i
							class="material-icons">chevron_right</i></a></li>
				</ul>
				<hr>
				
				
				<div class="row">
    
      <div class="row">
<form class="col s12" action="profile.jsp" method ="get" >
				<div class="input-field col s6">
				<%int num; %>
          <%=num= rs.getInt("player_id") +1 %>
          <label for="plno"><b>Player Id:</b></label>
        </div>

<div class="input-field col s6">
          <input  id="plrname"name="plrname" type="text" class="validate">
          <label for="plrname"><b>Player Name:</b></label>
        </div>
					
			<div class="input-field col s12">
			 <p>
   <label>
        <input id="plrcat" name="plrcat" value="Batsman" type="radio" >
        <span>Batsman</span> 
      </label> &nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input id="plrcat"name = "plrcat" value="Bowler" type="radio" >
        <span>Bowler</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input id="plrcat"name = "plrcat" value="WicketKeeper" type="radio" >
        <span>WicketKeeper</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input id="plrcat"name = "plrcat" value="All-Rounder" type="radio" >
        <span>All Rounder</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;
      </p>
          <label for="plrcat"><b>Player Category:</b></label>
        </div>		
		<div class="input-field col s6">
          <input  id="Age"name="Age" type="text" class="validate">
          <label for="Age"><b>Age:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="Nationality"  name="Nationality" type="text" class="validate">
          <label for="Nationality"><b>Nationality:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="Batstyle"name="Batstyle" type="text" class="validate">
          <label for="Batstyle"><b>Batting Style:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="Bowlstyle"name="Bowlstyle" type="text" class="validate">
          <label for="Bowlstyle"><b>Bowling Style:</b></label>
        </div>  
        <div class="input-field col s6"><br><br>
		<input id="image"name="image" type="file" name="image">
          <label for="basePrice"><b>Image Of Player: </b></label>
        </div>
        <div class="input-field col s6">
          <input id="basePrice"  name="basePrice" type="text" class="validate">
          <label for="basePrice"><b>Base Price:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="ICC_Ranking"name="ICC_Ranking" type="text" class="validate">
          <label for="ICC_Ranking"><b>ICC Ranking:</b></label>
        </div>
         <div class="input-field col s6">
          <input  id="BCCI_Grading"name="BCCI_Grading" type="text" class="validate">
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
 
 <%
 
// String no = request.getParameter("plno");
	//int num=Integer.parseInt(no);
	out.println(num);
	
	String name = request.getParameter("plrname");
	//out.println(name);
	String cat = request.getParameter("plrcat");
	String age = request.getParameter("Age");
	//int ag=Integer.parseInt(age);
	String Nationality = request.getParameter("Nationality");
	String Bat = request.getParameter("Batstyle");
	String Bl = request.getParameter("Bowlstyle");	
	
	  Part filePart = request.getPart("image");
	 // InputStream inputStream = filePart.getInputStream();
    
     
	
     String bp = request.getParameter("basePrice");
  //	int pr=Integer.parseInt(bp);
  	String ICC_Ranking = request.getParameter("ICC_Ranking");

  //	int ic=Integer.parseInt(ICC_Ranking);
		String BCCI_Grading = request.getParameter("BCCI_Grading");

      	
   
      	 String connectionURL = "jdbc:mysql://localhost:3306/auction";
         // declare a connection by using Connection interface 
   Connection connection = null;
   Statement st = null;
       // declare object of Statement interface that uses for   executing sql statements.
   // PreparedStatement preparedStmt = null;
        // Load JBBC driver "com.mysql.jdbc.Driver"
    Class.forName("com.mysql.jdbc.Driver");
       //  int updateQuery = 0;
       connection = DriverManager.getConnection(connectionURL, "root", "root");
      
       
         try
         {
        	 
        	 int i=0;
//String queryString =("INSERT INTO player_profile(player_id ,name ,player_category ,age ,nationality ,batting_style ,bowling_style ,profile_pic ,base_price,icc_rank,bcci_grade)" +  
    //     "values("+num+","+name+","+cat+","+age+","+Nationality+","+Bat+","+Bl+","+filePart+","+bp+","+ICC_Ranking+","+BCCI_Grading+")");
	if(name !=null && cat!=null && age!=null && Nationality !=null && Bat !=null && Bl != null && bp !=null && ICC_Ranking !=null && BCCI_Grading !=null)
	{
		st=connection.createStatement();
		i=st.executeUpdate("insert into player_profile(player_id,name,player_category,age,nationality,batting_style,bowling_style,profile_pic,base_price,icc_rank,bcci_grade)values("+num+",'"+name+"','"+cat+"','"+age+"','"+Nationality+"','"+Bat+"','"+Bl+"','"+filePart+"','"+bp+"','"+ICC_Ranking+"','"+BCCI_Grading+"')");
// out.println("II"+i);
	}
//out.println("byee");
//String queryString =("INSERT INTO player_profile(player_id ,name ,player_category ,age ,nationality ,batting_style ,bowling_style ,profile_pic ,base_price,icc_rank,bcci_grade) values(?, ?, ?,?,? ,? , ?, ? ,?,? ,?)");
        		
            // connection = DriverManager.getConnection(connectionURL, "root", "tiger");
             
// String queryString = "insert into field_records(record_type,matches,innings,not_out, runns,highest_score,average,strike_rate,hundreds,fiftys,fours,sixes,economy, no_of_wickets, five_wickets, stumping_avg , player_id)" + "values('"+ty+"', "+ mts+","+ing+","+ntot+","+run+","+hsr+","+avg+","+str+","+hdr+","+fi+","+four+","+six+","+eco+","+wick+","+fws+","+stp+","+no+") " ;
           //    String queryString = "insert into field_records('"+ty+"', '"+ mtch+"','"+in+"','"+not+"','"+r+"','"+hs+"','"+av+"','"+stk+"','"+h+"','"+f+"','"+fr+"','"+s+"','"+ec+"','"+wk+"','"+fw+"','"+stmp+"','"+num+"') " ;
           // st=connection.createStatement();
 //int i= st.executeUpdate(queryString);
            // String queryString = "insert into field_records(record_type,matches,innings,not_out, runns,highest_score,average,strike_rate,hundreds,fiftys,fours,sixes,economy, no_of_wickets, five_wickets, stumping_avg , player_id)"
            	   //  + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
             
         /*    preparedStmt = connection.prepareStatement(queryString);
             
            PreparedStatement preparedStmt = con.prepareStatement(q);
    
	preparedStmt.setInt (1,num);
    preparedStmt.setString (2, name );
    preparedStmt.setString (3,cat);
    preparedStmt.setInt (4,ag);
    preparedStmt.setString (5,Nationality);
    preparedStmt.setString (6,Bat);
    preparedStmt.setString (7,Bl);
    if (inputStream != null) {
        statement = null;
		// fetches input stream of the upload file for the blob column
        statement.setBlob(8, inputStream);
    }
    preparedStmt.setInt (9,pr);
    preparedStmt.setInt (10,ic);
    preparedStmt.setString (11,BCCI_Grading);
   
	
 
    	     updateQuery = preparedStmt.executeUpdate();
    	     if(updateQuery!= 0)*/
             if(i!= 0) {
             %>
              <br>
	           <TABLE style="background-color: #E3E4FA;" 
                   WIDTH="30%" border="1">
		      <tr><th>Data is inserted successfully 
                    in database.</th></tr>
		   </table>
		  <%
              }
            } 
            catch (Exception ex) {
            out.println(ex);
   
               }
            finally {
                // close all the connections.
              // preparedStmt.close();
                connection.close();
            }
	  
	
%>
 
  <%       
        }
con.close();
} catch (Exception e) {
e.printStackTrace();
}
    
%>
 



    </div></div></div>
    
    <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js">
      
       </script>
    
</body>
</html>

