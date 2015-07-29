<%--
    Document   : get14
    Created on : Mar 1, 2013, 12:09:05 PM
    Author     : Yogesh
--%>
<%@page import="java.sql.*"%>
<%
String s=request.getParameter("q");// dept
String s1=request.getParameter("q1");//id
String dis="";
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reval");
//out.println("input"+s.trim()+"dd");
while(rs.next())
{
if(s.equals(rs.getString(1)) && s1.equals(rs.getString(2)) ){
if(dis=="")
dis=rs.getString(5)+","+rs.getString(6);
else
dis=dis+":"+rs.getString(5)+","+rs.getString(6);
}
}
if(dis=="")
out.println("nosuggestion,nosuggestion,nosuggestion,nosuggestion,nosuggestion:");
else
out.println(dis);
st.close();
con.close();
%>