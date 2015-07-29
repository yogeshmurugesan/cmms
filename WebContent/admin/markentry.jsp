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
                            <li class="dropdown bar active" id="mark" >
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

            <br><br>
            <div class="container">

                <!-- Main hero unit for a primary marketing message or call to action -->
                <div class="hero-unit">

                    <div class="nano" style="height: 450px; ">
                        <div class="content">

                            <fieldset>
                                <h3>    <legend>MARK ENTRY</legend> </h3>
                                <form name="form1" class="form-horizontal" method="post" action="markentrydo.jsp" onSubmit="return checknull()">
                                    <div class="control-group">
                                        <label class="control-label" for="o1">Select Department</label>
                                        <div class="controls">

                                            <select name="o1" id="o1" >
                                                <option value="-1">--select--</option>
                                            </select>
                                            <font color="red" class="space5">   <span class="help-inline"> Depatment!</span> </font>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="o2">Select Year</label>
                                        <div class="controls">
                                            <select name="o2" id="o2" onchange="favBrowser1()">
                                                <option value="--select--">--select--</option>
                                                <option value="2010-2013">2010-2013</option>
                                                <option value="2011-2014">2011-2014</option>
                                                <option value="2012-2015">2012-2015</option>
                                            </select>
                                            <font color="red" class="space5">   <span class="help-inline"> year!</span> </font>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="o3">Select USER ID</label>
                                        <div class="controls">

                                            <select name="o3" id="o3" onchange="favBrowser3()">
                                                <option value="-1">--select--</option>
                                            </select>
                                            <font color="red" class="space5">   <span class="help-inline"> Student id!</span> </font>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="o4">Select Semester</label>
                                        <div class="controls">
                                            <select name="o4" id="o4" onchange="favBrowser2()">
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
                                    <table border="0" id="tblSample" class="table table-bordered table-striped">
                                        <tr>
                                            <th colspan="2">Paper Details</th>
                                            <th colspan="1">Internal</th>
                                            <th colspan="1">External</th>
                                        </tr>
                                    </table>
                                    <div class="form-actions">
                                        <button type="submit" class="btn btn-primary">Entry</button>
                                        <button class="btn" type="reset">Cancel</button>
                                    </div>
                                </form>


                            </fieldset>

                        </div>

                    </div>

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
                // $('#as').tooltip();
                $('#myModal').modal('toogle');
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

            function favBrowser1()
            {
                document.getElementById("o3").options.length = 0;
                var str=o1.options[o1.selectedIndex].text;
                var str1=o2.options[o2.selectedIndex].text;

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
                            var x=document.getElementById("o3");
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
                xmlhttp.open("GET","get2.jsp?q="+str+"&q1="+str1,true);
                xmlhttp.send();
            }

            function favBrowser2()
            {
                //document.getElementById("o3").options.length = 0;
                var str=o1.options[o1.selectedIndex].text;
                var str1=o4.options[o4.selectedIndex].text;
                
                var tbl = document.getElementById('tblSample');
                var lastRow = tbl.rows.length;
                remove();

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
                        var n=ss.split(/[,:]/);
                        //document.getElementById("demo").innerHTML=n;
                        for(i=0;i<n.length;i=i+2)
                        {
                            var tbl = document.getElementById('tblSample');
                            var lastRow = tbl.rows.length;


                            // if there's no header row in the table, then iteration = lastRow + 1
                            var iteration = lastRow;
                            var row = tbl.insertRow(lastRow);
                          
                            // left cell
                            var cellLeft = row.insertCell(0);
                            var textNode = document.createTextNode( n[i]);
                            cellLeft.appendChild(textNode);

                            var cellLeft = row.insertCell(1);
                            var textNode = document.createTextNode( n[i+1]);
                            cellLeft.appendChild(textNode);

                            // right cell
                            var cellRight = row.insertCell(2);
                            var el = document.createElement('input');
                            el.type = 'text';
                            el.name = 't' + iteration;
                            el.id = 't' + iteration;
                            //e1.placeholder = 'Internal..';
                            el.size = 10;
                            cellRight.appendChild(el);

                            var cellRight1 = row.insertCell(3);
                            var e2 = document.createElement('input');
                            e2.type = 'text';
                            e2.name = 'e' + iteration;
                            e2.id = 'e' + iteration;
                            //e2.placeholder = 'External..';
                            e2.size = 10;
                            cellRight1.appendChild(e2);
                        }
                        store(iteration);
                    }
                }
                xmlhttp.open("GET","get8.jsp?q="+str+"&q1="+str1,true);
                xmlhttp.send();
            }
            function favBrowser3()
            {
                document.getElementById("o4").options.length = 0;
                var str=o1.options[o1.selectedIndex].text;
                var str1=o3.options[o3.selectedIndex].text;

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
                            var x=document.getElementById("o4");
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
                xmlhttp.open("GET","get9.jsp?q="+str+"&q1="+str1,true);
                xmlhttp.send();
            }

            function remove()
            {
                var tbl = document.getElementById('tblSample');
                var lastRow = tbl.rows.length;
               
                if (lastRow == 1) {}
                else{
                    for(var k=lastRow-1; k>0; k--){
                        tbl.deleteRow(k);
                        
                    }
                }
            }

            function checknull()
            {
                if(document.form1.o1.value=="--select--")
                {
                    alert("select dept name");
                    document.form1.o1.focus();
                    return false;
                }

                if(document.form1.o2.value=="--select--")
                {
                    alert("select year");
                    document.form1.o2.focus();
                    return false;
                }

                if(document.form1.o3.value=="--select--")
                {
                    alert("select user id")
                    document.form1.o3.focus();
                    return false;
                }
                if(document.form1.o4.value=="--select--")
                {
                    alert("select semester")
                    document.form1.o4.focus();
                    return false;
                }

                var inputs = document.getElementsByTagName ("input");
                var answers= new Array();

                for(var i = 0; i < inputs.length; i++)
                {
                    if(inputs[i].value==""){
                        alert("type paper total")
                        inputs[i].focus();
                        return false;
                    }
                    else{
                        if (!isTotal(inputs[i].value)){
                            alert("Invalid Charaters in Total");
                            inputs[i].focus();
                            return false;
                        }
                    }
                }

                return true;
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


            function store(val)
            {
                var str=val;

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
                    }
                }
                xmlhttp.open("GET","store.jsp?q="+str,true);
                xmlhttp.send();


            }
        </script>

        


    </body>
</html>
