<%
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="delete.jsp">Please Login</a>
<%} else {
%>
successfully deleted <%=session.getAttribute("userid")%></br></br>
<a href='viewusers.jsp'>viewusers</a>
<%
}
%>