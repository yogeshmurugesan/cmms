<%@page import="java.sql.*"%>
<%
String s=request.getParameter("q");
String dis="";
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from applyreval");
//out.println("input"+s.trim()+"dd");
while(rs.next())
{
if(s.equals(rs.getString(3)) ){
if(dis=="")
dis=rs.getString(1)+","+rs.getString(2)+","+rs.getString(3)+","+rs.getString(4)+","+rs.getString(5);
else
dis=dis+":"+rs.getString(1)+","+rs.getString(2)+","+rs.getString(3)+","+rs.getString(4)+","+rs.getString(5);
}
}
if(dis=="")
out.println("nosuggestion,nosuggestion,nosuggestion,nosuggestion,nosuggestion:");
else
out.println(dis);
st.close();
con.close();
%>