<%-- 
    Document   : pubviewremark
    Created on : Mar 11, 2013, 1:38:24 AM
    Author     : Yogesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> PUBLIC USER </title>
        <meta nam USERe="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Le styles -->
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <link href="assets/css/user.css" rel="stylesheet">
        <link href="assets/css/scroll.css" rel="stylesheet">

        <style type="text/css">
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
        <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.ico">
        <link rel="apple-touch-icon" href="assets/ico/bootstrap-apple-72x72.png">
        <link rel="apple-touch-icon" sizes="72x72" href="assets/ico/bootstrap-apple-57x57.png">
        <link rel="apple-touch-icon" sizes="114x114" href="assets/ico/bootstrap-apple-114x114.png">

    </head>

    <body>

        <br><br><br><br>
        <div class="navbar navbar-fixed-top">
            <br><br><br><br>

            <br><br>
            <div class="container">


                <div class="hero-unit">
                    <div class="nano" style="height: 450px; ">
                        <div class="content">
                            <fieldset>
                                <h3>    <legend>REVALUATION MARK</legend> </h3>


                                <%@page import="java.sql.*" %>
                                <%! String s1, s2, s3, s4, s5 = "x", s6;
                                    String pi, pn, co, dis;
                                    int in, ex, to;
                                %>
                                <%
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
                                            Statement st = c.createStatement();

                                            s1 = request.getParameter("t1");

                                            String sql = "SELECT * FROM reval where idno='" + s1 + "' ";
                                            ResultSet rs = st.executeQuery(sql);
                                            while (rs.next()) {
                                                if (s1.equals(rs.getString(2))) {
                                                    s2 = rs.getString(4);
                                                    s3 = rs.getString(3);
                                                    s4 = rs.getString(1);
                                                }


                                            }

                                            if (s3==null ) {
 response.sendRedirect("error.jsp");
                                            }


                                %>
                                <h3> <div>
                                        <span class="space8">Name : <%=s3%></span>
                                        <span class="space30">Semester : <%=s2%></span>
                                        <span class="space5">Department : <%=s4%></span>
                                    </div>
                                </h3>
                                <table border="0" id="tblSample" class="table table-bordered table-striped">
                                    <tr>
                                        <th >Paper Id</th>
                                        <th >Paper Name</th>
                                        <th >Internal</th>
                                        <th >External</th>
                                        <th >Total</th>
                                        <th >Code</th>
                                    </tr>


                                    <%
                                                sql = "SELECT * FROM reval where idno='" + s1 + "' and sem='" + s2 + "' ";
                                                rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    pi = rs.getString(5);
                                                    pn = rs.getString(6);
                                                    in = rs.getInt(7);
                                                    ex = rs.getInt(8);
                                                    to = rs.getInt(9);
                                                    co = rs.getString(10);

                                    %>
                                    <tr>
                                        <td><%=pi%> </td>
                                        <td><%=pn%> </td>
                                        <td><%=in%> </td>
                                        <td><%=ex%> </td>
                                        <td><%=to%> </td>
                                        <td><%=co%> </td>

                                    </tr>
                                    <%  }s1=null;
                                    s2=null;
                                    s3=null;
                                    s4=null;
                                    dis=null;
                                                pi = null;
                                                pn = null;
                                                in = 0;
                                                ex = 0;
                                                to = 0;
                                                co = null;

                                    %>
                                </table>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>





        <!-- Le javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/bootstrap-collapse.js"></script>
        <script src="assets/js/bootstrap-dropdown.js"></script>
        <script src="assets/js/bootstrap-tooltip.js"></script>
        <script src="assets/js/bootstrap-transition.js"></script>
        <script src="assets/js/bootstrap-modal.js"></script>
        <script>
            $(function(){
                $('.dropdown-toggle').dropdown();
                $('#partmark').modal('toogle');
                $('#partpercent').modal('toogle');
                $('#parttop').modal('toogle');
                $('#markst').modal('toogle');
                // $('#as').tooltip();
            });
        </script>





    </body>
</html>
