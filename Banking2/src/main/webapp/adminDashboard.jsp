<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');
        @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6e8efb, #a777e3);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }
        .header {
            background-color: #6e8efb;
            color: white;
            padding: 15px 20px;
            text-align: center;
            width: 100%;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        .header h2 {
            margin: 0;
            font-weight: 600;
        }
        .container {
            margin-top: 50px;
            padding: 40px;
            width: 90%;
            max-width: 600px;
            background-color: white;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
            border-radius: 15px;
            text-align: center;
        }
        .button {
            display: inline-block;
            margin: 15px 0;
            padding: 15px 30px;
            color: white;
            background-color: #6e8efb;
            text-decoration: none;
            border-radius: 50px;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
            font-size: 16px;
        }
        .button:hover {
            background-color: #5a78d7;
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        .fa {
            margin-right: 8px;
        }
        @media (max-width: 480px) {
            .container {
                padding: 20px;
            }
            .button {
                display: block;
                width: 100%;
                margin: 15px 0;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <h2>Welcome, <%= session.getAttribute("username") %></h2>
    </div>
    <div class="container">
        <a href="registerCustomer.jsp" class="button"><i class="fa fa-user-plus"></i> Register Customer</a>
        <a href="viewCustomers.jsp" class="button"><i class="fa fa-users"></i> View Customers</a>
        <a href="logout.jsp" class="button"><i class="fa fa-sign-out-alt"></i> Logout</a>
    </div>
</body>
</html>
