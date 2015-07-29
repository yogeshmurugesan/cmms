
<%@page import="java.sql.*"%>
<%
            String s = request.getParameter("q");
            String s1 = request.getParameter("q1");

            String dis = "";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from papers");
//out.println("input"+s.trim()+"dd");
            while (rs.next()) {
//out.println("  sss  "+rs.getString(1));


//out.println("bbb");
                if (s.equals(rs.getString(3)) && s1.equals(rs.getString(5)) ) {
                    dis =rs.getString(1)+ "," +rs.getString(2)+ "," +rs.getString(3)+ "," +rs.getString(4)+ "," +rs.getString(5)+ "," +rs.getString(6);
                }
            }
            if (dis == "") {
                out.println("nosuggestion");
            } else {
                out.println(dis);
            }
            st.close();
            con.close();
%>