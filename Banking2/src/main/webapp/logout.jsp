<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logging Out</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

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
        .header {
            font-size: 28px;
            margin-bottom: 30px;
            color: #333;
            font-weight: 600;
            position: relative;
        }
        .header:before {
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
        .message {
            margin-bottom: 20px;
            font-size: 16px;
            color: #555;
        }
        .button {
            display: inline-block;
            padding: 15px 30px;
            font-size: 16px;
            text-decoration: none;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 50px;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
        }
        .button:hover {
            background-color: #45a049;
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        .button:active {
            transform: scale(0.98);
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
        <div class="header">Logging Out</div>
        <div class="message">You have been logged out successfully. Redirecting to the login page...</div>
        <a href="firstLogin.jsp" class="button"><i class="fa fa-sign-in-alt"></i> Go to Login</a>
        <script>
            setTimeout(function() {
                window.location.href = 'firstLogin.jsp';
            }, 3000); 
        </script>
    </div>
</body>
</html>
