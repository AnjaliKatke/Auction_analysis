<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd" > 
      <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 








<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
<div class ="container">
<div class="center-align">
    <div class="content1">
<h4><strong><b>Add Player Record </b></strong></h4>
  
   
   <ul class="pagination">
    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
   <li class="waves-effect"> <a href="profile.jsp">Player Profile</a></li>
   <li class="active"><a href="FRec.jspvalue=1">Field Records</a></li>
    <li class="waves-effect"><a href="IPL.jsp">IPL Records</a></li>
    
    <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
  </ul>
    <hr>

   
   <div class="row">
    <form class="col s12" action="FRec.jsp" method="get">
   
     <div class="row">
        
        
   <div class="input-field col s12">
   <p>
      <label>
        <input id= "type"  name = "type" value="ODI" type="radio" >
        <span>ODI</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
      <label>
        <input id= "type" name = "type" value="TEST" type="radio" >
        <span>TEST</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
      <label>
        <input id= "type" name = "type" value="T20" type="radio" >
        <span>T20</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
         <label for="type"><b>Record Type:</b></label>
           </div>
  
        <div class="input-field col s6">
          <input id="mats"  name="mats" type="text" class="validate">
          <label for="mats"><b>Matches:</b></label>
        </div>
        <div class="input-field col s6">
          <input id="in"  name="in" type="text" class="validate">
          <label for="in"><b>Innings:</b></label>
        </div>
        <div class="input-field col s6">
          <input id="not-out"   name="not-out" type="text" class="validate">
          <label for="not-out"><b>Not Out:</b></label>
        </div>
        <div class="input-field col s6">
          <input id="runns" name="runns" type="text" class="validate">
          <label for="runns"><b>Runns:</b></label>
        </div>
        <div class="input-field col s6">
          <input id="highS" name="highS" type="text" class="validate">
          <label for="highS"><b>Highest Score:</b></label>
        </div>
        <div class="input-field col s6">
          <input id="Aveg" name="Aveg" type="text" class="validate">
          <label for="Aveg"><b>Average:</b></label>
        </div>
        <div class="input-field col s6">
          <input id="Str" name="Str" type="text" class="validate">
          <label for="Str"><b>Strike Rate:</b></label>
        </div>
         <div class="input-field col s6">
          <input  id="hundr" name="hundr" type="text" class="validate">
          <label for="hundr"><b>100's::</b></label>
        </div>
         <div class="input-field col s6">
          <input id="fifties"  name="fifties" type="text" class="validate">
          <label for="fifties"><b>50's:</b></label>
        </div>
          <div class="input-field col s6">
          <input id="fours"   name="fours" type="text" class="validate">
          <label for="fours"><b>4's:</b></label>
        </div>
          <div class="input-field col s6">
          <input id="sixes" name="sixes" type="text" class="validate">
          <label for="sixes"><b>6's:</b></label>
        </div>
          <div class="input-field col s6">
          <input id="economy" name="economy" type="text" class="validate">
          <label for="economy"><b>Economy:</b></label>
        </div>
          <div class="input-field col s6">
          <input id="wicket"  name="wicket" type="text" class="validate">
          <label for="wicket"><b>No Of Wickets:</b></label>
        </div>
          <div class="input-field col s6">
          <input id="FiveWicks" name="FiveWicks" type="text" class="validate">
          <label for="FiveWicks"><b>5 Wickets:</b></label>
        </div>
          <div class="input-field col s6">
          <input id="Stm"  name="Stm" type="text" class="validate">
          <label for="Stm"><b>Stumping Rate:</b></label>
        </div>
          <div class="input-field col s6">
          <input  id="plno" name="plno" type="text" class="validate">
          <label for="plno"><b>Player Id:</b></label>
        </div>
</div>
   <button class="btn waves-effect waves-light" type="reset" name="action">Reset</button> 
 <button class="btn waves-effect waves-light" type="submit" name="action">Submit
    <i class="material-icons right">send</i> </button>   </form></div>
 
 <%
 
 String ty = request.getParameter("type");
	String mts = request.getParameter("mats");
	//int mtch=Integer.parseInt(mts);
	String ing = request.getParameter("in");
//	int in=Integer.parseInt(ing);
	String ntot = request.getParameter("not-out");
	//int not=Integer.parseInt(ntot);
	String run = request.getParameter("runns");
	//int r=Integer.parseInt(run);
	String hsr = request.getParameter("highS");
	//int hs=Integer.parseInt(hsr);
	String avg = request.getParameter("Aveg");
	//float av=Float.parseFloat(avg);
	String str = request.getParameter("str");
//	float stk=Float.parseFloat(str);
 	String hdr = request.getParameter("hundr");
 // 	int h=Integer.parseInt(hdr);
  	String fi = request.getParameter("fifties");
  	//int f=Integer.parseInt(fi);
  	String four = request.getParameter("fours");
  	//int fr=Integer.parseInt(four);
 	String six = request.getParameter("sixes");
  	//int s=Integer.parseInt(six);
      	String eco = request.getParameter("economy");
      //	float ec=Float.parseFloat(eco);
      	String wick = request.getParameter("wicket");
      	//int wk=Integer.parseInt(wick);
      	String fws = request.getParameter("FiveWicks");
      	//int fw=Integer.parseInt(fws);
      	String stp = request.getParameter("Stm");
      	//float stmp=Float.parseFloat(stp);
      	String no = request.getParameter("plno");
      	//int num=Integer.parseInt(no);
      	
      	
      	System.out.println(stp);
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
if(ty !=null) 
{   
	st=connection.createStatement();
        	
i=st.executeUpdate("insert into field_records(record_type,matches,innings,not_out, runns,highest_score,average,strike_rate,hundreds,fiftys,fours,sixes,economy, no_of_wickets, five_wickets, stumping_avg , player_id)values('"+ty+"','"+mts+"',"+ing+","+ntot+","+run+","+hsr+","+avg+","+str+","+hdr+","+fi+","+four+","+six+","+eco+","+wick+","+fws+","+stp+","+no+")");

}            // connection = DriverManager.getConnection(connectionURL, "root", "root");
             
 //String queryString = "insert into field_records(record_type,matches,innings,not_out, runns,highest_score,average,strike_rate,hundreds,fiftys,fours,sixes,economy, no_of_wickets, five_wickets, stumping_avg , player_id)" + "values('"+ty+"', "+ mts+","+ing+","+ntot+","+run+","+hsr+","+avg+","+str+","+hdr+","+fi+","+four+","+six+","+eco+","+wick+","+fws+","+stp+","+no+") " ;
           //    String queryString = "insert into field_records('"+ty+"', '"+ mtch+"','"+in+"','"+not+"','"+r+"','"+hs+"','"+av+"','"+stk+"','"+h+"','"+f+"','"+fr+"','"+s+"','"+ec+"','"+wk+"','"+fw+"','"+stmp+"','"+num+"') " ;
        //    st=connection.createStatement();
 //int i= st.executeUpdate(queryString);
            // String queryString = "insert into field_records(record_type,matches,innings,not_out, runns,highest_score,average,strike_rate,hundreds,fiftys,fours,sixes,economy, no_of_wickets, five_wickets, stumping_avg , player_id)"
            	   //  + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
             
         /*    preparedStmt = connection.prepareStatement(queryString);
             
             preparedStmt.setString(1,ty);
    	     preparedStmt.setInt(2,mtch);
    	     preparedStmt.setInt(3,in);
    	     preparedStmt.setInt(4,not);
    	     preparedStmt.setInt(5,r);
    	     preparedStmt.setInt(6,hs);
    	     preparedStmt.setFloat(7,av);
    	     preparedStmt.setFloat(8,stk);
    	     preparedStmt.setInt(9,h);
    	     preparedStmt.setInt(10,f);
    	     preparedStmt.setInt(11,fr);
    	     preparedStmt.setInt(12,s);
    	     preparedStmt.setFloat(13,ec);
    	     preparedStmt.setInt(14,wk);
    	     preparedStmt.setInt(15,fw);
    	     preparedStmt.setFloat(16,stmp);
    	     preparedStmt.setInt(17,num);
    	     
    		 
    	     updateQuery = preparedStmt.executeUpdate();*/
             if (i!= 0) {
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
 
 
 



    </div></div></div>
    
    <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js">
      
       </script>
    
</body>
</html>

