<%@page session="true"%>
<%
		String user=request.getParameter("t1");
		session.setMaxInactiveInterval(24 * 60 * 60);
               // out.println(user);
		session.setAttribute("user",user);
		response.sendRedirect("main.jsp");
%>