<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.college.events.Event" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Event> events = (List<Event>)session.getAttribute("events");
    Event e = events.get(id);

    // Initialize registrations list
    if(session.getAttribute("registrations") == null){
        session.setAttribute("registrations", new ArrayList<String>());
    }
%>
<html>
<head>
    <title>Register for Event</title>
</head>
<body>
    <h2>Register for Event: <%= e.getName() %></h2>
    <form action="event" method="post">
        <input type="hidden" name="action" value="register">
        <input type="hidden" name="eventId" value="<%=id%>">
        Your Name: <input type="text" name="username" required><br><br>
        Your Email: <input type="email" name="email" required><br><br>
        <input type="submit" value="Register">
    </form>
    <br>
    <a href="viewEvents.jsp">Back to Events</a>
</body>
</html>
