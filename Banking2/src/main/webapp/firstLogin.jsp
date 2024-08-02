<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banking Application</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
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
        .button-container {
            margin-top: 30px;
        }
        .button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 12px 25px;
            font-size: 16px;
            text-decoration: none;
            background-color: #6e8efb;
            color: #fff;
            border: none;
            border-radius: 50px;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
            margin: 10px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .button:hover {
            background-color: #5a78d7;
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        .button:active {
            transform: scale(0.98);
        }
        .button i {
            margin-right: 10px;
        }
        .button::before {
            content: '';
            position: absolute;
            width: 300%;
            height: 300%;
            background: rgba(255, 255, 255, 0.1);
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%) scale(0);
            border-radius: 50%;
            transition: transform 0.5s;
        }
        .button:hover::before {
            transform: translate(-50%, -50%) scale(1);
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
        <div class="header">Banking Application</div>
        <div class="button-container">
            <a href="login.jsp" class="button"><i class="fas fa-user-shield"></i> Admin Login</a>
            <a href="customerLogin.jsp" class="button"><i class="fas fa-user"></i> Customer Login</a>
        </div>
    </div>
</body>
</html>
