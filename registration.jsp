[15:37, 6/15/2021] C: <%@ page import ="java.sql.*" %>
<%
String user = request.getParameter("uname");    
String pwd = request.getParameter("pass");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String c_pass = request.getParameter("c_pass");
String aadhar_no = request.getParameter("aadhar_no");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test100",
"root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into members(first_name, last_name, email, uname, pass, c_pass, aadhar_no, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "','" + c_pass+ "','" + aadhar_no+ "', CURDATE())");
if (i > 0 && c_pass.equals(pwd)) {
//session.setAttribute("userid", user);
response.sendRedirect("welcome.jsp");
// out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
} else { 
 out.println("password not matched ..<a href='index.jsp'>try again</a>");
}
%>
