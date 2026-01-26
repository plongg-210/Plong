<%@page import="models.UserDTO"%>
<!DOCTYPE html>
<html>
<body>
<%
    UserDTO user = (UserDTO)session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<h2>Welcome <%= user.getFullName() %></h2>

<h3>Dashboard</h3>
<ul>
    <li>Tinh nang 1</li>
    <li>Tinh nang 2</li>
    <li>Tinh nang 3</li>
</ul>

<a href="search">Search</a> <br/>
<a href="MainController?action=logout">Logout</a>

</body>
</html>
