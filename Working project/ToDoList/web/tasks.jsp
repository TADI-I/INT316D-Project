<%-- 
    Document   : tasks
    Created on : 03 May 2025, 7:46:03 PM
    Author     : Student
--%>

<%@page import="java.util.List"%>
<%@page import="entities.Tasks"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Of Tasks</title>
        <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: #f9f9f9;
      color: #333;
    }

    header {
      background: #4CAF50;
      color: white;
      padding: 2rem 1rem;
      text-align: center;
    }

    header h1 {
      margin: 0;
      font-size: 2.5rem;
    }

    header p {
      font-size: 1.2rem;
      margin-top: 0.5rem;
    }

    .cta {
      margin-top: 1.5rem;
    }

    .cta a {
      display: inline-block;
      padding: 0.75rem 1.5rem;
      background: white;
      color: #4CAF50;
      border-radius: 4px;
      text-decoration: none;
      font-weight: bold;
    }

    .features {
      padding: 2rem 1rem;
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
      background: white;
    }

    .feature {
      max-width: 300px;
      padding: 1rem;
      margin: 1rem;
      border: 1px solid #ddd;
      border-radius: 8px;
      text-align: center;
    }

    .feature h3 {
      color: #4CAF50;
    }

    footer {
      background: #eee;
      text-align: center;
      padding: 1rem;
      font-size: 0.9rem;
    }
  </style>
    </head>
    <body>
        <%
            List<Tasks> tasks = (List<Tasks>)request.getAttribute("tasks");
        %>
        
        <table border = 2>
            <th>Title</th><th>Description</th><th>Status</th>
            <%
                for(int i=0 ; i < tasks.size(); i ++){
                    tasks.get(i);
                
            %>
            <tr>
            <td><%=tasks.get(i).getTitle()%></td>
            <td><%=tasks.get(i).getDesc()%></td>
            <td><%=tasks.get(i).getStatus()%></td>
            </tr>
            <% } %>
        </table>
   
    </body>
</html>
