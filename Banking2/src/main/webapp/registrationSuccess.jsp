<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
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
            max-width: 600px;
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
        .message {
            font-size: 18px;
            margin-bottom: 20px;
            color: #4CAF50;
        }
        .button {
            display: inline-block;
            margin: 15px 0;
            padding: 15px 30px;
            color: white;
            background-color: #4CAF50;
            text-decoration: none;
            border-radius: 50px;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
            font-size: 16px;
        }
        .button:hover {
            background-color: #45a049;
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
    <div class="container">
        <h2>Registration Successful</h2>
        <p class="message">The customer has been successfully registered. Thank you!</p>
        <a href="adminDashboard.jsp" class="button"><i class="fa fa-home"></i> Back to Dashboard</a>
    </div>
</body>
</html>
