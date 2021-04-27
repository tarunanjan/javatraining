<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.java.mphasis.canteen.ConnectionHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<jsp:include page="VenMenu.jsp"></jsp:include><br><br>
<center>
	<%
		Connection con = ConnectionHelper.getConnection();
		String cmd = "select * from vendor";
		PreparedStatement pst = con.prepareStatement(cmd);
		ResultSet rs = pst.executeQuery();
		%>
		<table border="3">
			<tr>
			<th>Vendor Id</th>
			<th>Vendor Name</th>
			<th>Email Id</th>
			<th>Phone No</th>
			<th>Address</th>
			</tr>
		<%
			while(rs.next()) {
		%>
			<tr>
			<td>
				<%=rs.getInt("ven_id")  %>
			</td>
			<td>
				<%=rs.getString("ven_name") %>
			</td>
			<td>
				<%=rs.getString("ven_email")%>
			</td>
			<td>
				<%=rs.getString("ven_mobile") %>
			</td>
			<td>
				<%=rs.getString("ven_address") %>
			</td>
			</tr>
		<%
			}

	
	%>
	</table>
	</center>
</body>
</html>