<%@page import="java.sql.*"%>
<%!String s2; %>
<%
          String s=request.getParameter("q");
            String s1=request.getParameter("q1");

            /*String s = "it";
            String s1 = "10it10";*/

            String dis = "--select--";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from mark");
//out.println("input"+s.trim()+"dd");
            while (rs.next()) {

                if (s.equals(rs.getString(1)) && s1.equals(rs.getString(2))) {
                    s2 = rs.getString(4);

                }


            }
if(s2==null){
s2="";
}
                      if (s2.equals("I")) {
                        dis = dis+","+"I";
                    } else if (s2.equals("II")) {
                        dis = dis+","+"II";
                    } else if (s2.equals("III")) {
                        dis = dis+","+"III";
                    }else if (s2.equals("IV")) {
                        dis = dis+","+"IV";
                    }else if (s2.equals("V")) {
                        dis = dis+","+"V";
                    }else if (s2.equals("VI")) {
                        dis = dis+","+"VI";
                    }else{
                        dis = dis;
                    }

            if (dis == "--select--") {
                out.println("--select--");
            } else {
                out.println(dis);
            }
            st.close();
            con.close();
%>