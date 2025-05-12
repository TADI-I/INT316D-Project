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

            .task-table {
                width: 90%;
                margin: 2rem auto;
                border-collapse: collapse;
                background: white;
                border-radius: 8px;
                overflow: hidden;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
            }

            .task-table th,
            .task-table td {
                padding: 1rem;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            .task-table th {
                background: #81C784;
                color: white;
            }


            .task-table tr:hover {
                background-color: #f1f1f1;
            }
                
            .button-container {
                margin-top: 1.5rem;
                display: flex;
                gap: 1rem;
                flex-wrap: wrap;
                justify-content: center;
            }
            .button {
                text-decoration: none;
                background-color: #4CAF50;
                color: white;
                padding: 0.75rem 1.5rem;
                border-radius: 5px;
                transition: background-color 0.3s ease;
                font-size: 1rem;
            }

            .button:hover {
                background: #45a049;
            }


            footer {
                background: #eee;
                text-align: center;
                padding: 1rem;
                font-size: 0.9rem;
                margin-top: 2rem;
            }
        </style>
    </head>
    <body>
        <header>
            <h1>TaskFlow</h1>
            <p>Your simple and smart task management solution</p>
        </header>

        <%
            List<Tasks> tasks = (List<Tasks>) request.getAttribute("tasks");
        %>

        <table class="task-table">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (int i = 0; i < tasks.size(); i++) {
                %>
                <tr>
                    <td><%= tasks.get(i).getTitle() %></td>
                    <td><%= tasks.get(i).getDesc() %></td>
                   <td><div class = "status-container">
                        <input 
                            type="checkbox" 
                            id="status" 
                            name="status"
                            value="True"
                            <%= tasks.get(i).getStatus() %>
                        />
                        </div>
                         <label for="status">Task complete</label>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <div class="button-container">
            <a href="index.html" class="button">Add More Tasks</a>
        </div>
        <footer>
            &copy; 2025 TaskFlow. All rights reserved.
        </footer>
    </body>
</html>
