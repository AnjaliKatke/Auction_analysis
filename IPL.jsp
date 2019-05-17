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
   <li class="waves-effect"><a href="FRec.jsp">Field Records</a></li>
    <li class="active"><a href="IPL.jspvalue=1">IPL Records</a></li>
    
    <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
  </ul>
    <hr>


   <div class="row">
    <form class="col s12" action="IPL.jsp" method = "post" >
      <div class="row">
 <div class="input-field col s12">
   <p>
   <label>
        <input id="against" name = "against" value="CSK" type="radio" >
        <span>CSK</span> 
      </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input id="against" name = "against" value="RCB" type="radio" >
        <span>RCB</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input id="against"name = "against" value="MI" type="radio" >
        <span>MI</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>
        <input id="against" name = "against" value="SRH" type="radio" >
        <span>SRH</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <label>
        <input id="against" name = "against" value="KKR" type="radio" >
        <span>KKR</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <label>
        <input id="against" name = "against" value="DC" type="radio" >
        <span>DC</span>
      </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <label>
        <input id="against" name = "against" value="KXIP" type="radio" >
        <span>KXIP</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </label>
      <label>
        <input id="against" name = "against" value="RR" type="radio" >
        <span>RR</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </label>
   
   </p>
   
          <label for="against"><b>Against</b></label>
        </div>
        <div class="input-field col s6">
          <input id="matches" name ="matches" type="text" class="validate">
          <label for="matches"><b>Matches:</b></label>
        </div>
        <div class="input-field col s6">
          <input id="inn"  name="inn" type="text" class="validate">
          <label for="inn"><b>Innings:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="not_out" name="not_out" type="text" class="validate">
          <label for="not_out"><b>Not Out:</b></label>
        </div>
        <div class="input-field col s6">
          <input id="runs" name="runs"type="text" class="validate">
          <label for="runs"><b>Runns:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="highScore" name ="highScore" type="text" class="validate">
          <label for="highScore"><b>Highest Score:</b></label>
        </div>
        <div class="input-field col s6">
          <input id="Avg" name="Avg" type="text" class="validate">
          <label for="Avg"><b>Average:</b></label>
        </div>
        <div class="input-field col s6">
          <input  id="Sr" name="Sr" type="text" class="validate">
          <label for="Sr"><b>Strike Rate:</b></label>
        </div>
         <div class="input-field col s6">
          <input  id="hundreds" name="hundreds" type="text" class="validate">
          <label for="hundreds"><b>100's::</b></label>
        </div>
         <div class="input-field col s6">
          <input  id="fifty" name="fifty" type="text" class="validate">
          <label for="fifty"><b>50's:</b></label>
        </div>
          <div class="input-field col s6">
          <input  id="four" name="four" type="text" class="validate">
          <label for="four"><b>4's:</b></label>
        </div>
          <div class="input-field col s6">
          <input  id="six" name="six" type="text" class="validate">
          <label for="six"><b>6's:</b></label>
        </div>
          <div class="input-field col s6">
          <input  id="eco" name="eco" type="text" class="validate">
          <label for="eco"><b>Economy:</b></label>
        </div>
          <div class="input-field col s6">
          <input  id="wickets" name="wickets" type="text" class="validate">
          <label for="wickets"><b>No Of Wickets:</b></label>
        </div>
          <div class="input-field col s6">
          <input id="FiveWick" name="FiveWick" type="text" class="validate">
          <label for="FiveWick"><b>5 Wickets:</b></label>
        </div>
          <div class="input-field col s6">
          <input  id="St" name="St"  type="text" class="validate">
          <label for="St"><b>Stumping Rate:</b></label>
        </div>
          <div class="input-field col s6">
          <input  id="plno" name="plno" type="text" class="validate">
          <label for="plno"><b>Player Id:</b></label>
        </div></div>
<button class="btn waves-effect waves-light" type="reset" name="action">Reset</button>
      <button class="btn waves-effect waves-light" type="submit" name="action">Submit
    <i class="material-icons right">send</i> </button>
</form>
 
 <%
 String ag = request.getParameter("against");
	String mat = request.getParameter("matches");
	String in = request.getParameter("inn");
	//int a=Integer.parseInt(in);
	String nto = request.getParameter("not_out");
	//int ntoo=Integer.parseInt(nto);
	String rn = request.getParameter("runs");
	//int runn=Integer.parseInt(rn);
	String hs = request.getParameter("highScore");
	//int high=Integer.parseInt(hs);
	String avvg = request.getParameter("Avg");
	//float avg=Float.parseFloat(avvg);
	String sr = request.getParameter("sr");
	//float stk=Float.parseFloat(sr);
  	String hundr = request.getParameter("hundreds");
  //	int hundred=Integer.parseInt(hundr);
  	String fif = request.getParameter("fifty");
  //	int fifties=Integer.parseInt(fif);
  	String fr = request.getParameter("four");
  	//int frr=Integer.parseInt(fr);
 	String s = request.getParameter("six");
 	//int sixes=Integer.parseInt(s);
      	String ec = request.getParameter("eco");
   //   	float eco=Float.parseFloat(ec);
      	String wic = request.getParameter("wickets");
   //   	int wicket=Integer.parseInt(wic);
      	String fw = request.getParameter("FiveWick");
    //  	int fivewick=Integer.parseInt(fw);
      	String stm = request.getParameter("St");
     // 	float stmp=Float.parseFloat(stm);
      	String no = request.getParameter("plno");
      //	int num=Integer.parseInt(no);
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

            // connection = DriverManager.getConnection(connectionURL, "root", "tiger");
       int i=0;  
//if(ag !=null && mat!=null && in !=null && nto!=null && rn!=null && hs!=null && avvg != null && sr != null && hundr != null && fif != null && fr !=null && s !=null && ec !=null && ec!=null && fw!=null && stm!= null && no != null)
if(ag!=null)	
{
		st=connection.createStatement();  
        i=st.executeUpdate("insert into ipl_records(against,matches,innings,not_out, runns,highest_score,average,strike_rate,hundreds,fifty,fours,sixes,economy, no_of_wickets, five_wickets, stumping_avg , player_id)values('"+ag+"', "+ mat+","+in+","+nto+","+rn+","+hs+","+avvg+","+sr+","+hundr+","+fif+","+fr+","+s+","+ec+","+wic+","+fw+","+stm+","+no+") ") ;
	}       //    String queryString = "insert into field_records('"+ty+"', '"+ mtch+"','"+in+"','"+not+"','"+r+"','"+hs+"','"+av+"','"+stk+"','"+h+"','"+f+"','"+fr+"','"+s+"','"+ec+"','"+wk+"','"+fw+"','"+stmp+"','"+num+"') " ;


           
         /*    preparedStmt = connection.prepareStatement(queryString);
            String q = "insert into ipl_records(iplrecord_id,against,matches,innings,not_out, runns,highest_score,average,strike_rate,hundreds,fifty,fours,sixes,economy, no_of_wickets, five_wickets, stumping_avg , player_id)"
	   	     + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement preparedStmt = con.prepareStatement(q);
	//preparedStmt.setInt(1,3);
    preparedStmt.setString (1,ag);
    preparedStmt.setString (2,mat);
    preparedStmt.setInt(3,a);
    preparedStmt.setInt(4,ntoo);
    preparedStmt.setInt (5,runn);
    preparedStmt.setInt (6,high);
    preparedStmt.setFloat (7,avg);
    preparedStmt.setFloat (8,stk);
    preparedStmt.setInt (9,hundred);
    preparedStmt.setInt (10,fifties);
    preparedStmt.setInt (11,frr);
    preparedStmt.setInt (12,sixes);
    preparedStmt.setFloat (13,eco);
    preparedStmt.setInt (14,wicket);
    preparedStmt.setInt (15,fivewick);
    preparedStmt.setFloat (16,stmp);
    preparedStmt.setInt (17,num);
    
    preparedStmt.execute();
	 
	//Statement st = con.createStatement();
				//st.executeUpdate(q);
 
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

