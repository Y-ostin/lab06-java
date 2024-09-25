<%@page import="java.util.List"%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            color: #333;
        }

        ul {
            list-style-type: none;
            padding: 0;
            width: 50%;
            max-width: 600px;
        }

        li {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin: 5px 0;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        li:nth-child(even) {
            background-color: #f9f9f9;
        }

        li:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <h1>User List</h1>
    <ul>
        <% 
        UserController userController = new UserController();
        List<User> userList = userController.getUserList();
        for (User user : userList) {
        %>
            <li><%= user.getUsername() %> - <%= user.getEmail() %></li>
        <% } %>
    </ul>
</body>
</html>
