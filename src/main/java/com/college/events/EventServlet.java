package com.college.events;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class EventServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if("create".equals(action)){
            String name = request.getParameter("name");
            String date = request.getParameter("date");
            String description = request.getParameter("description");

            List<Event> events = (List<Event>)request.getSession().getAttribute("events");
            events.add(new Event(name, date, description));

            response.sendRedirect("viewEvents.jsp");

        } else if("register".equals(action)){
            int eventId = Integer.parseInt(request.getParameter("eventId"));
            String username = request.getParameter("username");
            String email = request.getParameter("email");

            List<String> registrations = (List<String>)request.getSession().getAttribute("registrations");
            registrations.add("Event ID: " + eventId + ", Name: " + username + ", Email: " + email);

            response.sendRedirect("viewEvents.jsp");
        }
    }
}