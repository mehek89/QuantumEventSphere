<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.college.events.Event" %>
<%
    // Initialize event list in session if not already
    if(session.getAttribute("events") == null){
        session.setAttribute("events", new ArrayList<Event>());
    }
%>
<html>
<head>
    <title>Create Event</title>
</head>
<body>
    <h2>Create New Event</h2>
    <form action="event" method="post">
        <input type="hidden" name="action" value="create">
        Event Name: <input type="text" name="name" required><br><br>
        Event Date: <input type="date" name="date" required><br><br>
        Event Description: <textarea name="description" required></textarea><br><br>
        <input type="submit" value="Create Event">
    </form>
    <br>
    <a href="viewEvents.jsp">View All Events</a>
</body>
</html>
