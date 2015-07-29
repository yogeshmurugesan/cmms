<%@page import="java.sql.*"%>
<%!String s3 = "--select--";
    int i1 = 0, i2 = 0, i3 = 0, i4 = 0, i5 = 0, i6 = 0;
%>
<%
            String s = request.getParameter("q");
            String s1 = request.getParameter("q1");

            String s2 = "a";

            /*   String s = "it";
            String s1 = "10it10";*/

            String dis = "--select--";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from mark");
//out.println("input"+s.trim()+"dd");
            while (rs.next()) {

                if (s.equals(rs.getString(1)) && s1.equals(rs.getString(2)) && s2.equals(rs.getString(10))) {

                    s3 = rs.getString(4);
                    if (s3.equals("I")) {
                        i1 = i1 + 1;
                        if (i1 == 1) {
                            dis = dis + "," + "I";
                        }

                    }

                    if (s3.equals("II")) {
                        i2 = i2 + 1;
                        if (i2 == 1) {
                            dis = dis + "," + "II";
                        }

                    }
                    if (s3.equals("III")) {
                        i3 = i3 + 1;
                        if (i3 == 1) {
                            dis = dis + "," + "III";
                        }

                    }
                    if (s3.equals("IV")) {
                        i4 = i4 + 1;
                        if (i4 == 1) {
                            dis = dis + "," + "IV";
                        }

                    }
                    if (s3.equals("V")) {
                        i5 = i5 + 1;
                        if (i5 == 1) {
                            dis = dis + "," + "V";
                        }

                    }
                    if (s3.equals("VI")) {
                        i6 = i6 + 1;
                        if (i6 == 1) {
                            dis = dis + "," + "VI";
                        }

                    }
                }


            }

i1 = 0; i2 = 0; i3 = 0; i4 = 0; i5 = 0; i6 = 0;


            /* if (i1 <= 1) {
            dis = dis + "," + "I";
            } else if (i2 <= 1) {
            dis = dis + "," + "II";
            } else if (i3 <= 1) {
            dis = dis + "," + "III";
            } else if (i4 <= 1) {
            dis = dis + "," + "IV";
            } else if (i5 <= 1) {
            dis = dis + "," + "V";
            } else if (i6 <= 1) {
            dis = dis + "," + "VI";
            } else {
            }*/


            //dis = dis + "," + s3;
            //out.print("<br>s3");
            //out.print(s3);


            if (dis == "--select--") {
                out.println("no arrear");
            } else {
                out.println(dis);
            }
            st.close();
            con.close();
%>