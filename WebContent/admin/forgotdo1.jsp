
<%-- 
    Document   : forgot
    Created on : Feb 17, 2013, 9:23:50 PM
    Author     : Yogesh
--%>
<%--
    Document   : main
    Created on : Feb 17, 2013, 5:22:13 PM
    Author     : Yogesh
--%>
<%@page session="true"%>

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
        <link href="../assets/css/scroll.css" rel="stylesheet">
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

    <body onload="favBrowser()">
        <br><br><br><br>
        <div class="navbar navbar-fixed-top">
            <br><br><br><br>


            <br><br>
            <div class="container">

                <!-- Main hero unit for a primary marketing message or call to action -->
                <div class="hero-unit">

                    <div class="nano" style="height: 450px; ">
                        <div class="content">

                            <form name="form1" class="form-horizontal" method="post" action="index.html" onSubmit="return checknull()">
                                <fieldset>
                                    <h3>    <legend>FORGOT PASSWORD</legend> </h3>

                                    <%@page import="java.sql.*" %>
                                    <%! String s1, s2, s3, s4, s5, s6, s7, s8, s9;%>
                                    <%

                                            s1 = request.getParameter("t2");
                                            s3 = request.getParameter("t3");
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
                                            Statement st = c.createStatement();
                                            String sql = "select * from adminlog";
                                            ResultSet rs = st.executeQuery(sql);
                                            while (rs.next()) {
                                                if (s1.equals(rs.getString(4)) && s3.equals(rs.getString(1))) {
                                                    s2 = rs.getString(2);
                                                }

                                            }


                                        
                                    %>

                                    <div class="control-group">
                                        <label class="control-label" for="t1">Your password is</label>
                                        <div class="controls">

                                            <div class="input-prepend">
                                                <span class="add-on"><i class="icon-user"></i></span>
                                                <input type="text" class="input-large" id="t1" name="t1" value='<%=s2%>' disabled/>
                                            </div>
                                        </div>
                                    </div>
                                    
                                   


                                    <div class="space30">
                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">Login</button>
                                           
                                        </div>
                                    </div>

                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>

            </div> <!-- /container -->



        </div>


        <!-- Le javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="../assets/js/jquery.js"></script>
        <script src="../assets/js/bootstrap-collapse.js"></script>
        <script src="../assets/js/bootstrap-dropdown.js"></script>
        <script src="../assets/js/bootstrap-transition.js"></script>
        <script src="../assets/js/bootstrap-tooltip.js"></script>
        <script src="../assets/js/bootstrap-modal.js"></script>
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
                    alert("type id(no)");
                    document.form1.t1.focus();
                    return false;
                }

               
                return true;
            }

        </script>






    </body>
</html>
