<%@ page contentType="text/html; charset=big5" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=big5">
<title>Count</title>
</head>
<body>
<% String strSub = request.getParameter("submit");
if(strSub == null){
%>
<form name="count" method="post" action="Count.jsp">
  <input type="text" name="summandField">
  +
  <input type="text" name="addendField">
  <input type="submit" name="submit" value="Submit">
</form>
<%
}else{
int summand =  Integer.parseInt(request.getParameter("summandField"));
int addend =  Integer.parseInt(request.getParameter("addendField"));
int sum = summand + addend;
out.print("The summation = "+ sum+"<P><a href='Count.jsp'>Try again!</a>");
}
%>
</body>
</html>
