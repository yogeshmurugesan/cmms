<%-- 
    Document   : topper
    Created on : Mar 5, 2013, 2:40:47 PM
    Author     : Yogesh
--%>

<%@page session="true"%>
<%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("index1.html");
            }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> USER </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="main.jsp">C&nbsp;M&nbsp;M&nbsp;S</a>

                    <!-- log out -->
                    <div class="btn-group pull-right">
                        <a class="btn btn-danger" href="logout.jsp"><i class="icon-user"></i> Log out</a>
                        <a class="btn btn-danger dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="logout.jsp"><i class="icon-share-alt"></i> Log out</a></li>
                            <li><a href="accdetail.jsp"><i class="icon-th"></i> Edit Account</a></li>
                        </ul>
                    </div>


                    <div class="nav-collapse">
                        <ul class="nav space18">

                            <!-- 1 Mark -->
                            <li class="dropdown bar" id="users" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Mark
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="mark.jsp"><i class="icon-book"></i> view overall mark</a></li>
                                    <li><a data-toggle="modal" href="#partmark"><i class="icon-th"></i> view particular mark</a></li>

                                </ul>
                            </li>

                            <!-- 2 percentage-->
                            <li class="dropdown bar" id="mark" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    percentage
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a data-toggle="modal" href="#partpercent"><i class="icon-align-justify"></i> particular sem percentage</a></li>
                                    <li><a href="percentage.jsp"><i class="icon-th"></i> overall percentage</a></li>

                                </ul>
                            </li>

                            <!-- 3 Toppers -->
                            <li class="dropdown bar active" id="dept">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Toppers
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a data-toggle="modal" href="#parttop"><i class="icon-align-justify"></i> particular sem Toppers</a></li>
                                    <li><a href="topper.jsp"><i class="icon-th"></i> overall Toppers</a></li>
                                </ul>
                            </li>

                            <!-- 4 Revaluation Apply-->
                            <li class="dropdown bar" id="revma" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Revaluation Apply
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="revalapply.jsp"><i class="icon-align-justify"></i> Apply for Revaluation</a></li>

                                </ul>
                            </li>

                            <!-- 5  Mark Statement -->
                            <li class="dropdown bar" id="revap">
                                <a  href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Mark Statement
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a data-toggle="modal" href="#markst"><i class="icon-align-justify"></i> view markstatement</a></li>

                                </ul>
                            </li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>

            <br><br>
            <div class="container">

                <!-- Main hero unit for a primary marketing message or call to action -->
                <div class="hero-unit">
                    <div class="nano" style="height: 450px; ">
                        <div class="content">

                            <%@page import="java.sql.*,java.util.*" %>
                            <%! String s1, s2, s3, s4, s5, s6;
                                String pi, pn, co, sql, sss;
                                int in, ex, ctot = 0, i = 0, j = 0;
                                String[] na = new String[500];
                                String ss[] = new String[500];
                                String ss1[] = new String[50];
                                int to[] = new int[100];
                                int cr[] = new int[100];
                                double gtot = 0, gpa = 0, per = 0, pert = 0, cgpa1 = 0, pert1 = 0;
                                double cgpa[] = new double[100];
                                double mu[] = new double[100];


                            %>

                            <% Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
                                        Statement st = c.createStatement();
                                        ResultSet rs = null;

                                        s1 = (String) session.getAttribute("user");
                                        sql = "select idno,max(cgpa) from top group by cgpa desc";
                                        rs = st.executeQuery(sql);
                                        while (rs.next()) {
                                            ss1[i] = rs.getString(1);
                                            cgpa[i] = rs.getDouble(2);
                                            cgpa[i] = Math.floor(cgpa[i] * 100) / 100;
                                            i++;

                                        }
                                        i=0;
                            %>
                            <fieldset>
                                <h3>    <legend> TOPPER</legend> </h3>

                                <% for (int k = 0; k < 3; k++) {
                                               
                                         %>

                            </fieldset>

                            <div class="space20">
                                <h3>
                                    <tr>
                                        <td>
                                            <span class="space8"></span>
                                            <font color="#7a43b6" >IDNO : </font>
                                            <font color="#049cdb"> <%=ss1[k]%> </font>
                                        </td>
                                        <td>
                                            <span class="space8"></span>
                                            <font color="#7a43b6" >CGPA : </font>
                                            <font color="#049cdb"> <%=cgpa[k]%>  </font>
                                        </td>
                                        <td>
                                            <span class="space8"></span>
                                            <font color="#7a43b6" >PERCENTAGE : </font>
                                            <font color="#049cdb"> <%=cgpa[k]*10%> % </font>
                                        </td>
                                    </tr>
                                </h3>
                            </div>
                                       <% }%>

                                       
                                       <%--   /*  StringBuffer sb = new StringBuffer(s1);
                            s3 = s1.substring(0, 4);
                            //  out.println(s3);


                            i = 0;

                            sql = "SELECT * FROM mark where dept='" + s2 + "' ";
                            rs = st.executeQuery(sql);
                            while (rs.next()) {
                            na[i] = rs.getString(2);
                            i++;
                            }

                            List<String> list = Arrays.asList(na);
                                Set<String> set = new HashSet<String>(list);
                                        String[] na1 = new String[set.size()];
                                        set.toArray(na1);

                                        for (j = 0; j < na1.length; j++) {
                                        if (na1[j] == null) {
                                        for (int k = j; k < na1.length - 1; k++) {
                                        na1[k] = na1[k + 1];
                                        }
                                        }
                                        }
                                        int kk = 0;
                                        for (j = 0; j < na1.length - 1; j++) {
                                        ss[j] = na1[j];
                                        kk++;
                                        }
                                        */
                                        gtot = 0;
                                        %>--%>
                                        </div>
                                        </div>
                                        </div>

                                        </div> <!-- /container -->


                                        </div>
                                        <!-- Le modal partmark -->
                                        <!-- ================================================== -->

                                        <div class="modal fade" id="partmark">
                                            <div class="modal-header">
                                                <a class="close" data-dismiss="modal">×</a>
                                                <h3>Delete Account</h3>
                                            </div>
                                            <form id="login" action="partmark.jsp" method="post">
                                                <div class="modal-body">
                                                    <font color="#c3325f" class="space5">
                                                        <b><p>Which Semester Mark want to select </p></b>
                                                    </font>
                                                    <div class="row-fluid">
                                                        <div class="span6">
                                                            <div class="control-group">

                                                                <div class="controls space10">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r1" value="I" checked="">
                                                                        First Semester
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="control-group space10">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r2" value="II">
                                                                        Second Semester
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="control-group space10">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r3" value="III">
                                                                        Third Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="span6">

                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r4" value="IV">
                                                                        Fourth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r5" value="V">
                                                                        Fifth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r6" value="VI">
                                                                        Sixth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>


                                                    </div>


                                                </div>
                                                <div class="modal-footer">

                                                    <button type="reset"  class="btn" data-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-primary"  >yes</button>
                                                </div>
                                            </form>

                                        </div>

                                        <!-- Le modal percentage
                                            ================================================== -->
                                        <!-- Placed at the end of the document so the pages load faster -->

                                        <div class="modal fade" id="partpercent">
                                            <div class="modal-header">
                                                <a class="close" data-dismiss="modal">×</a>
                                                <h3>Percentage</h3>
                                            </div>
                                            <form id="login" action="partpercentage.jsp" method="post">
                                                <div class="modal-body">
                                                    <font color="#c3325f" class="space5">
                                                        <b><p>Which Semester percentage want to select </p></b>
                                                    </font>
                                                    <div class="row-fluid">
                                                        <div class="span6">
                                                            <div class="control-group">

                                                                <div class="controls space10">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r1" value="I" checked="">
                                                                        First Semester
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="control-group space10">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r2" value="II">
                                                                        Second Semester
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="control-group space10">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r3" value="III">
                                                                        Third Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="span6">

                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r4" value="IV">
                                                                        Fourth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r5" value="V">
                                                                        Fifth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r6" value="VI">
                                                                        Sixth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="reset"  class="btn" data-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-primary"  >yes</button>
                                                </div>
                                            </form>

                                        </div>

                                        <!-- Le modal toppers
                                               ================================================== -->
                                        <!-- Placed at the end of the document so the pages load faster -->

                                        <div class="modal fade" id="parttop">
                                            <div class="modal-header">
                                                <a class="close" data-dismiss="modal">×</a>
                                                <h3>Toppers</h3>
                                            </div>
                                            <form id="login" action="parttopper.jsp" method="post">
                                                <div class="modal-body">
                                                    <font color="#c3325f" class="space5">
                                                        <b><p>Which Semester Topper want to select </p></b>
                                                    </font>
                                                    <div class="row-fluid">
                                                        <div class="span6">
                                                            <div class="control-group">

                                                                <div class="controls space10">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r1" value="I" checked="">
                                                                        First Semester
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="control-group space10">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r2" value="II">
                                                                        Second Semester
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="control-group space10">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r3" value="III">
                                                                        Third Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="span6">

                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r4" value="IV">
                                                                        Fourth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r5" value="V">
                                                                        Fifth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r6" value="VI">
                                                                        Sixth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="reset"  class="btn" data-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-primary"  >yes</button>
                                                </div>
                                            </form>

                                        </div>

                                        <!-- Le modal Mark Statement
                                               ================================================== -->
                                        <!-- Placed at the end of the document so the pages load faster -->
                                        <div class="modal fade" id="markst">
                                            <div class="modal-header">
                                                <a class="close" data-dismiss="modal">×</a>
                                                <h3>View Mark Statement</h3>
                                            </div>
                                            <form id="login" action="markstatement.jsp" method="post">
                                                <div class="modal-body">
                                                    <font color="#c3325f" class="space5">
                                                        <b><p>Which Semester MarkStatement want to select </p></b>
                                                    </font>
                                                    <div class="row-fluid">
                                                        <div class="span6">
                                                            <div class="control-group">

                                                                <div class="controls space10">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r1" value="I" checked="">
                                                                        First Semester
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="control-group space10">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r2" value="II">
                                                                        Second Semester
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="control-group space10">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r3" value="III">
                                                                        Third Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="span6">

                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r4" value="IV">
                                                                        Fourth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r5" value="V">
                                                                        Fifth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r6" value="VI">
                                                                        Sixth Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <div class="controls">
                                                                    <label class="radio">
                                                                        <input type="radio" name="r1" id="r6" value="X">
                                                                        Over All Semester
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="reset"  class="btn" data-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-primary"  >yes</button>
                                                </div>
                                            </form>

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

