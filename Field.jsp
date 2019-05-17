<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
    
<%@page import="java.sql.*,java.util.*"%>

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
     	 String connectionURL = "jdbc:mysql://localhost:3306/Auction";
        // declare a connection by using Connection interface 
  Connection connection = null;
  Statement st = null;
      // declare object of Statement interface that uses for   executing sql statements.
  // PreparedStatement preparedStmt = null;
       // Load JBBC driver "com.mysql.jdbc.Driver"
   Class.forName("com.mysql.jdbc.Driver");
      //  int updateQuery = 0;
      connection = DriverManager.getConnection(connectionURL, "root", "tiger");
              
        try
        {

           // connection = DriverManager.getConnection(connectionURL, "root", "tiger");
            
String queryString = "insert into field_records(record_type,matches,innings,not_out, runns,highest_score,average,strike_rate,hundreds,fiftys,fours,sixes,economy, no_of_wickets, five_wickets, stumping_avg , player_id)" + "values('"+ty+"', "+ mts+","+ing+","+ntot+","+run+","+hsr+","+avg+","+str+","+hdr+","+fi+","+four+","+six+","+eco+","+wick+","+fws+","+stp+","+no+") " ;
          //    String queryString = "insert into field_records('"+ty+"', '"+ mtch+"','"+in+"','"+not+"','"+r+"','"+hs+"','"+av+"','"+stk+"','"+h+"','"+f+"','"+fr+"','"+s+"','"+ec+"','"+wk+"','"+fw+"','"+stmp+"','"+num+"') " ;
           st=connection.createStatement();
int i= st.executeUpdate(queryString);
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






 
</body>
</html>

