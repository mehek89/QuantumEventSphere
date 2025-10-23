<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.college.events.Event" %>
<%
    List<Event> events = (List<Event>)session.getAttribute("events");
%>
<html>
<head>
    <title>View Events</title>
</head>
<body>
    <h2>All Events</h2>
    <table border="1" cellpadding="10">
        <tr>
            <th>Name</th>
            <th>Date</th>
            <th>Action</th>
        </tr>
        <%
            if(events != null && !events.isEmpty()){
                for(int i=0; i<events.size(); i++){
                    Event e = events.get(i);
        %>
        <tr>
            <td><%= e.getName() %></td>
            <td><%= e.getDate() %></td>
            <td>
                <a href="eventDetails.jsp?id=<%=i%>">Details</a> |
                <a href="registerEvent.jsp?id=<%=i%>">Register</a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="3">No events found.</td>
        </tr>
        <%
            }
        %>
    </table>
    <br>
    <a href="createEvent.jsp">Create New Event</a>
</body>
</html>
