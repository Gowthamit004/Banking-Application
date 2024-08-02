<%@ page import="java.sql.*" %>
<%
    String accountNo = (String) session.getAttribute("account_no");
    String newPassword = request.getParameter("new_password");

    if (newPassword != null && !newPassword.isEmpty()) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb", "root", "mypass");
            PreparedStatement ps = con.prepareStatement("UPDATE Customer SET password=?, first=1 WHERE account_no=?");
            ps.setString(1, newPassword);
            ps.setString(2, accountNo);
            ps.executeUpdate();
            response.sendRedirect("customerLogin.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
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
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }
        .container {
            background-color: white;
            padding: 40px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
            border-radius: 15px;
            width: 90%;
            max-width: 400px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        h2 {
            font-size: 28px;
            margin-bottom: 30px;
            color: #333;
            font-weight: 600;
            position: relative;
        }
        h2:before {
            content: '';
            position: absolute;
            width: 60px;
            height: 5px;
            background: #6e8efb;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 5px;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
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
            width: 100%;
            box-sizing: border-box;
        }
        .button:hover {
            background-color: #5a78d7;
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
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
    <div class="container">
        <h2>Change Password</h2>
        <form action="password.jsp" method="post">
            <div class="form-group">
                <label for="new_password">New Password:</label>
                <input type="password" id="new_password" name="new_password" required>
            </div>
            <button type="submit" class="button">Change Password</button>
        </form>
    </div>
</body>
</html>
