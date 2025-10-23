<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.college.events.Event" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Event> events = (List<Event>)session.getAttribute("events");
    Event e = events.get(id);
%>
<html>
<head>
    <title>Event Details</title>
</head>
<body>
    <h2>Event Details: <%= e.getName() %></h2>
    <p><b>Date:</b> <%= e.getDate() %></p>
    <p><b>Description:</b> <%= e.getDescription() %></p>
    <br>
    <a href="registerEvent.jsp?id=<%=id%>">Register</a> |
    <a href="viewEvents.jsp">Back to Events</a>
</body>
</html>
