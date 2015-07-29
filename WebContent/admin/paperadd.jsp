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

    <body onload="favBrowser()">
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
                            <li class="dropdown bar active" id="paper" >
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

            <br><br>
            <div class="container">

                <!-- Main hero unit for a primary marketing message or call to action -->
                <div class="hero-unit">

                    <form name="form1" class="form-horizontal" method="post" action="#" onSubmit="return checknull()">
                        <fieldset>
                            <h3>    <legend>NEW PAPER ADDING</legend> </h3>

                            <div class="control-group">
                                <label class="control-label" for="o1">Select Department</label>
                                <div class="controls">
                                    <select name="o1" id="o1">
                                        <option value="-1">--select--</option>
                                    </select>
                                    <font color="red" class="space5">   <span class="help-inline"> Depatment!</span> </font>
                                </div>
                            </div>


                            <div class="control-group">
                                <label class="control-label" for="t1">Paper Id</label>
                                <div class="controls">

                                    <div class="input-prepend">
                                        <span class="add-on"><i class="icon-file"></i></span>
                                        <input type="text" class="input-large" id="t1" name="t1" placeholder="paper id.."/>
                                        <font color="red">   <span class="help-inline" color="green"> id!</span> </font>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="t2">Paper Name</label>
                                <div class="controls">

                                    <div class="input-prepend">
                                        <span class="add-on"><i class="icon-file"></i></span>
                                        <input type="text" class="input-large" id="t2" name="t2" placeholder="Paper name.."/>
                                        <font color="red">   <span class="help-inline" color="green"> name!</span> </font>
                                    </div>

                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="t3">Paper Total Mark</label>
                                <div class="controls">
                                    <div class="input-prepend">
                                        <span class="add-on"><i class="icon-th-large"></i></span>
                                        <input type="text" class="input-large" id="t3" name="t3" placeholder="Paper total.."/>
                                        <font color="red">   <span class="help-inline" color="green"> Total!</span> </font> <br><br>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="t4">Paper Credit</label>
                                <div class="controls">
                                    <div class="input-prepend">
                                        <span class="add-on"><i class="icon-th-large"></i></span>
                                        <input type="text" class="input-large" id="t4" name="t4" placeholder="Paper credit.."/>
                                        <font color="red">   <span class="help-inline" color="green"> credit!</span> </font> <br><br>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="o2">Select Semester</label>
                                <div class="controls">
                                    <select name="o2" id="o2">
                                        <option value="--select--">--select--</option>
                                        <option value="I">I</option>
                                        <option value="II">II</option>
                                        <option value="III">III</option>
                                        <option value="IV">IV</option>
                                        <option value="V">V</option>
                                        <option value="VI">VI</option>
                                    </select>
                                    <font color="red" class="space5">   <span class="help-inline"> semester!</span> </font>
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
        <script src="../assets/js/bootstrap-collapse.js"></script>
        <script src="../assets/js/bootstrap-dropdown.js"></script>
        <script src="../assets/js/bootstrap-tooltip.js"></script>
        <script src="../assets/js/bootstrap-transition.js"></script>
        <script src="../assets/js/bootstrap-modal.js"></script>
        <script>
            $(function(){
                $('.dropdown-toggle').dropdown();
                $('#myModal').modal('toogle');
                // $('#as').tooltip();
            });
        </script>
        <script type="text/javascript">
            function favBrowser()
            {
                document.getElementById("o1").options.length = 0;

                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }

                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                        // document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
                        var ss=xmlhttp.responseText;
                        var n=ss.split(",");
                        //document.getElementById("demo").innerHTML=n;



                        for(i=0;i<n.length;i++)
                        {
                            var x=document.getElementById("o1");
                            var option=document.createElement("option");

                            option.text=n[i];
                            option.value=n[i].trim();
                            //document.write(n[i]);

                            try
                            {
                                // for IE earlier than version 8
                                //  x.appendChild(option,x.options[null]);
                                x.add(option,x.options[null]);
                            }
                            catch (e)
                            {
                                x.add(option,null);
                            }


                        }
                    }
                }
                xmlhttp.open("GET","get1.jsp",true);
                xmlhttp.send();


            }

            function checknull()
            {
                if(document.form1.o1.value=="--select--")
                {
                    alert("select dept name");
                    document.form1.o1.focus();
                    return false;
                }
                
                if(document.form1.t1.value=="")
                {
                    alert("type paper id");
                    document.form1.t1.focus();
                    return false;
                }

                if(document.form1.t2.value=="")
                {
                    alert("type paper name")
                    document.form1.t2.focus();
                    return false;
                }
                if(document.form1.t3.value=="")
                {
                    alert("type paper total")
                    document.form1.t3.focus();
                    return false;
                }
                else{
                    if (!isTotal(document.form1.t3.value)){
                        alert("Invalid Charaters in Total");
                        document.form1.t3.focus();
                        return false;
                    }
                }
                if(document.form1.t4.value=="")
                {
                    alert("type paper credit")
                    document.form1.t4.focus();
                    return false;
                }
                else{
                    if (!isTotal(document.form1.t4.value)){
                        alert("Invalid Charaters in Total");
                        document.form1.t4.focus();
                        return false;
                    }
                }
                if(document.form1.o2.value=="--select--")
                {
                    alert("select semester");
                    document.form1.o2.focus();
                    return false;
                }


                var s1=document.form1.t1.value;
                var s=document.form1.o1.value;
                var n=s1.indexOf(s);
                if(n==-1)
                {
                    alert("type correct Dept And id")
                    document.form1.t1.focus();
                    return false;
                }
                

                function isTotal(str)
                {
                    checkStr="1234567890-";
                    for(var i=0;i<str.length;i++){
                        if(checkStr.indexOf(str.substr(i,1))<0)
                            return false;
                    }
                    return true;
                }

                return true;
            }


        </script>

        <%@page import="java.sql.*" %>
        <%! String s1, s2, s3, s4, s5, s6;%>
        <%
                    s1 = request.getParameter("t1");
                    s2 = request.getParameter("t2");
                    s3 = request.getParameter("o1");
                    s4 = request.getParameter("t3");
                    s6 = request.getParameter("t4");
                    s5 = request.getParameter("o2");


                    if (s1 == null && s2 == null && s3 == null && s4 == null && s5 == null) {
                    } else {
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
                        Statement st = c.createStatement();
                        String sql = "INSERT INTO papers VALUES ('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "','" + s6 + "')  ";
                        int i = st.executeUpdate(sql);
                        if (1 <= i) {
                            out.println(" <script> alert('Paper added successfuly'); </script> ");
                        }
                    }

        %>


    </body>
</html>
