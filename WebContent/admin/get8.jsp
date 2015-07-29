<%@page import="java.sql.*"%>
<%
String s=request.getParameter("q");
String s1=request.getParameter("q1");
String dis="";
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from papers");
//out.println("input"+s.trim()+"dd");
while(rs.next())
{
if(s.equals(rs.getString(3)) && s1.equals(rs.getString(5)) ){
if(dis=="")
dis=rs.getString(1)+","+rs.getString(2);
else
dis=dis+":"+rs.getString(1)+","+rs.getString(2);
}
}
if(dis=="")
out.println("nosuggestion,nosuggestion,nosuggestion,nosuggestion,nosuggestion:");
else
out.println(dis);
st.close();
con.close();
%>