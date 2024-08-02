<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard</title>
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
        .account-info {
            margin-bottom: 20px;
            text-align: left;
        }
        .button {
            display: inline-block;
            margin: 15px 10px;
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
        .button-secondary {
            background-color: #5bc0de;
        }
        .button-secondary:hover {
            background-color: #31b0d5;
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
        <h2>Welcome, Customer</h2>
        <div class="account-info">
            <%
                String accountNo = (String) session.getAttribute("account_no");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb", "root", "mypass");
                PreparedStatement ps = con.prepareStatement("SELECT * FROM Customer WHERE account_no=?");
                ps.setString(1, accountNo);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    out.print("Account No: " + rs.getString("account_no") + "<br>");
                    out.print("Balance: " + rs.getDouble("initial_balance") + "<br>");
                }
                con.close();
            %>
        </div>
        <a href="viewTransactions.jsp" class="button"><i class="fa fa-list"></i> View Transactions</a>
        <a href="deposit.jsp" class="button"><i class="fa fa-plus-circle"></i> Deposit</a>
        <a href="withdraw.jsp" class="button"><i class="fa fa-minus-circle"></i> Withdraw</a>
        <a href="closeAccount.jsp" class="button button-secondary"><i class="fa fa-times-circle"></i> Close Account</a>
        <a href="logoutcustomer.jsp" class="button button-secondary"><i class="fa fa-sign-out-alt"></i> Logout</a>
    </div>
</body>
</html>
