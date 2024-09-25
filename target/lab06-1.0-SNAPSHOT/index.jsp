<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 1px solid #ddd;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #007BFF;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div>
        <h1>Student List</h1>

        <!-- Configuración de la conexión a la base de datos -->
        <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
             url="jdbc:mysql://localhost/lab06"  
             user="root" password=""/>  

        <!-- Ejecución de la consulta SQL -->
        <sql:query dataSource="${db}" var="rs">  
            SELECT * FROM students;  
        </sql:query>  

        <!-- Mostrar los resultados en una tabla -->
        <table>  
            <thead>
                <tr>  
                    <th>Student ID</th>  
                    <th>First Name</th>  
                    <th>Last Name</th>  
                    <th>Age</th>  
                </tr>  
            </thead>
            <tbody>
                <c:forEach var="student" items="${rs.rows}">  
                    <tr>  
                        <td><c:out value="${student.id}"/></td>  
                        <td><c:out value="${student.First_Name}"/></td>  
                        <td><c:out value="${student.Last_Name}"/></td>  
                        <td><c:out value="${student.Age}"/></td>  
                    </tr>  
                </c:forEach>  
            </tbody>
        </table>
    </div>
</body>
</html>
