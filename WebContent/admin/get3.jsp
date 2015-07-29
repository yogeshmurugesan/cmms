<%@page import="java.sql.*"%>
<%
            String s = request.getParameter("q");// dept
            String s1 = request.getParameter("q1");// year
            String s2 = request.getParameter("q2");// idno
            String dis = "--select--";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from userlog");
//out.println("input"+s.trim()+"dd");
            while (rs.next()) {
//out.println("  sss  "+rs.getString(1));


//out.println("bbb");
                if (s.equals(rs.getString(4)) && s1.equals(rs.getString(5)) && s2.equals(rs.getString(1))) {
                    
                        dis = rs.getString(1) + "," + rs.getString(2) + "," + rs.getString(3) + "," + rs.getString(4) + "," + rs.getString(5);
                    
                    
                  
                }
            }
            if (dis == "--select--") {
                out.println("nosuggestion");
            } else {
                out.println(dis);
            }
            st.close();
            con.close();
%>