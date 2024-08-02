<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error</title>
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
        h1 {
            font-size: 28px;
            margin-bottom: 30px;
            color: #721c24;
            font-weight: 600;
            position: relative;
        }
        h1:before {
            content: '';
            position: absolute;
            width: 60px;
            height: 5px;
            background: #721c24;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 5px;
        }
        p {
            font-size: 18px;
            margin-bottom: 20px;
            color: #721c24;
        }
        a {
            color: #155724;
            text-decoration: none;
            font-weight: 600;
        }
        a:hover {
            text-decoration: underline;
        }
        .alert {
            display: none;
            padding: 15px;
            background-color: #f8d7da;
            color: #721c24;
            margin-bottom: 20px;
            border: 1px solid #f5c6cb;
            border-radius: 5px;
            text-align: left;
        }
        @media (max-width: 480px) {
            .container {
                padding: 20px;
            }
        }
    </style>
    <script type="text/javascript">
        window.onload = function() {
            var urlParams = new URLSearchParams(window.location.search);
            var errorMessage = urlParams.get('errorMessage');
            var balance = urlParams.get('balance');

            if (errorMessage && balance) {
                var alertBox = document.querySelector('.alert');
                alertBox.innerHTML = errorMessage + " Your current balance is: " + balance;
                alertBox.style.display = 'block';
            }
        };
    </script>
</head>
<body>
    <div class="container">
        <div class="alert"></div>
        <h1>Error</h1>
        <p>There was an issue processing your request. Please try again.</p>
        <a href="withdraw.jsp"><i class="fa fa-arrow-left"></i> Back to Withdraw</a>
    </div>
</body>
</html>
