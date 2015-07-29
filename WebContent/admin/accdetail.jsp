<%--
    Document   : main
    Created on : Feb 17, 2013, 5:22:13 PM
    Author     : Yogesh
--%>
<%@page session="true"%>
<%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("index.html");
            }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> ADMIN </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Le styles -->
        <link href="../assets/css/bootstrap.css" rel="stylesheet">
        <link href="../assets/css/admin.css" rel="stylesheet">
        <style type="text/css">
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
        <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet">

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="../assets/ico/favicon.ico">
        <link rel="apple-touch-icon" href="../assets/ico/bootstrap-apple-72x72.png">
        <link rel="apple-touch-icon" sizes="72x72" href="../assets/ico/bootstrap-apple-57x57.png">
        <link rel="apple-touch-icon" sizes="114x114" href="../assets/ico/bootstrap-apple-114x114.png">

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
                            <li><a href="accdetail.jsp"><i class="icon-pencil"></i> Edit Account</a></li>
                            <li class="divider"></li>
                            <li><a data-toggle="modal" href="#myModal"><i class="icon-trash"></i> Delete account </a></li>
                        </ul>
                    </div>


                    <div class="nav-collapse">
                        <ul class="nav">

                            <!-- 1 users -->
                            <li class="dropdown bar" id="users" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Users
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="useradd.jsp"><i class="icon-book"></i> Add new User</a></li>
                                    <li><a href="useredit.jsp"><i class="icon-pencil"></i> Edit User</a></li>
                                    <li class="divider"></li>
                                    <li><a href="userdel.jsp"><i class="icon-trash"></i> Delete exist User</a></li>
                                </ul>
                            </li>

                            <!-- 2 Mark Entry -->
                            <li class="dropdown bar" id="mark" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Mark Entry
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="markentry.jsp"><i class="icon-align-justify"></i> Entry the Mark</a></li>
                                    <li><a href="markedit.jsp"><i class="icon-pencil"></i> Edit Mark Entry</a></li>
                                    <li><a href="arrearsmark.jsp"><i class="icon-pencil"></i> Arrears Mark Entry</a></li>
                                </ul>
                            </li>

                            <!-- 3 Department -->
                            <li class="bar" id="dept"><a href="dept.jsp">Department</a></li>

                            <!-- 4 Revaluation Mark-->
                            <li class="dropdown bar" id="revma" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Revaluation Mark
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="remarkentry.jsp"><i class="icon-align-justify"></i> Revaluation Mark Entry</a></li>
                                    <li><a href="remarkedit.jsp"><i class="icon-pencil"></i> Edit Mark Entry</a></li>
                                </ul>
                            </li>

                            <!-- 5 Revaluation Applies -->
                            <li class="bar" id="revap"><a href="remarkapply.jsp">Revaluation Applies</a></li>

                            <!-- 6 papers   -->
                            <li class="dropdown bar" id="paper" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Papers
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="paperadd.jsp"><i class="icon-align-justify"></i> Adding a new paper</a></li>
                                    <li><a href="paperedit.jsp"><i class="icon-align-justify"></i> Editing a paper</a></li>
                                     <li class="divider"></li>
                                    <li><a href="paperdel.jsp"><i class="icon-align-justify"></i> Deleting a paper</a></li>
                                   

                                   
                                </ul>
                            </li>

                            <!-- 7 add a admin -->
                            <li class="bar" id="admin"><a href="addadmin.jsp"><i class="icon-plus-sign icon-white"></i>&nbsp;Add A Admin</a></li>


                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
            <!-- Navigation bar  -->

            <br><br>

            <!-- Main hero unit for a primary marketing message or call to action -->

            <div class="container">
                <div class="hero-unit">


                    <form name="form1" class="form-horizontal" method="post" action="#" onSubmit="return checknull()">
                        <fieldset>
                            <h3>    <legend>ADMIN Details</legend> </h3>


                            <div class="control-group">
                                <label class="control-label" for="t1">Admin Name</label>
                                <div class="controls">

                                    <div class="input-prepend">
                                        <span class="add-on"><i class="icon-user"></i></span>
                                        <input type="text" class="input-large" id="t1" name="t1" placeholder="admin name.."/>  
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="selectError">Select your Security</label>
                                <div class="controls">
                                    <select name="s1">
                                        <option value="-1">--select--</option>
                                        <option>What is your fathers name</option>
                                        <option>What is your pets name</option>
                                        <option>What is your schools name</option>
                                        <option>What is your city name</option>
                                    </select>
                                    <span class="help-inline"> Question!</span>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="t2">Answer</label>
                                <div class="controls">
                                    <div class="input-prepend">
                                        <span class="add-on"><i class="icon-asterisk"></i></span>
                                        <input type="text" class="input-large" id="t2" name="t2" placeholder="answer.."/><br><br>
                                    </div>
                                </div>
                                <p>Password changes</p>
                                <label class="control-label" for="p1">New password</label>
                                <div class="controls">
                                    <div class="input-prepend">
                                        <span class="add-on"><i class="icon-asterisk"></i></span>
                                        <input type="password" class="input-large" id="p1" name="p1" placeholder="type password.."/><br><br>
                                    </div>
                                </div>

                                <label class="control-label" for="p2">Confirm password</label>
                                <div class="controls">
                                    <div class="input-prepend">
                                        <span class="add-on"><i class="icon-asterisk"></i></span>
                                        <input type="password" class="input-large" id="p2" name="p2" placeholder="repeat password.."/><br><br>
                                    </div>
                                </div>

                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-primary">Save changes</button>
                                <button class="btn" type="reset">Cancel</button>
                            </div>


                        </fieldset>
                    </form>

                </div>
            </div> <!-- /container -->



        </div>


        <div class="modal fade" id="myModal">
            <div class="modal-header">
                <a class="close" data-dismiss="modal">×</a>
                <h3>Delete Account</h3>
            </div>
            <div class="modal-body">
                <p>Want to Delete this account</p>
            </div>
            <div class="modal-footer">
                <form action="accdel.jsp">
                    <button type="reset"  class="btn" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary"  >yes</button>
                </form>
            </div>
        </div>
        <!-- Le javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="../assets/js/jquery.js"></script>
        <script src="../assets/js/bootstrap-transition.js"></script>
        <script src="../assets/js/bootstrap-collapse.js"></script>
        <script src="../assets/js/bootstrap-dropdown.js"></script>
        <script src="../assets/js/bootstrap-modal.js"></script>
        <script src="../assets/js/bootstrap-tooltip.js"></script>
        <script>
            $(function(){
                $('.dropdown-toggle').dropdown();
                $('#myModal').modal('toogle');
                // $('#as').tooltip();
            });
        </script>

        <script type="text/javascript">
            function checknull()
            {

                if(document.form1.t1.value=="")
                {
                    alert("type name");
                    document.form1.t1.focus();
                    return false;
                }

                if(document.form1.t2.value=="")
                {
                    alert("type answer")
                    document.form1.t2.focus();
                    return false;
                }
                
                if(document.form1.s1.value == "-1")
                {
                    alert("select question")
                    document.form1.s1.focus();
                    return false;
                }

                if(document.form1.p1.value=="")
                {
                    alert("type new password")
                    document.form1.t2.focus();
                    return false;
                }
                if(document.form1.p2.value=="")
                {
                    alert("type confirm password")
                    document.form1.t2.focus();
                    return false;
                }

                if(document.form1.p1.value != document.form1.p2.value  )
                {
                    alert("type both same password")
                    document.form1.p2.focus();
                    return false;
                }
                return true;
            }

        </script>
        <%@page import="java.sql.*" %>
        <%! String s1, s2, s3, s4, s5 = "x", s6;%>
        <%
                    s1 = request.getParameter("t1");
                    s2 = request.getParameter("t2");
                    s3 = request.getParameter("s1");
                    s4 = request.getParameter("p1");
                    if (s1 == null && s2 == null && s3 == null && s4 == null ) {
                    } else {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
                    Statement st = c.createStatement();

                    /*String q = "select * from adminlog";
                    ResultSet rs = st.executeQuery(q);
                    while (rs.next()) {
                    s4 = rs.getString(3);
                    if (!s4.equals(""))
                    {
                    s5 = "set";
                    }
                    }
                     */
                    if (session.getAttribute("user").equals(s1)) {
                        String sql = "UPDATE adminlog SET quest='" + s3 + "',ans='" + s2 + "',pass='" + s4 + "' WHERE name='" + s1 + "' ";
                        st.executeUpdate(sql);%>
        <script type="text/javascript">
            alert("details added successfuly");
        </script>
        <%
                            } else {%>

        <script type="text/javascript">
            alert("type admin name correctly");
        </script>

        <% }}

        %>



    </body>
</html>
