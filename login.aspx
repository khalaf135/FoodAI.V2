<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Lab11.Recepies.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #384434;
        }

        .login-form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .form-control {
            margin-bottom: 20px;
        }

            .form-control input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 4px;
                box-sizing: border-box;
            }

        .login-form button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }

            .login-form button:hover {
                background-color: #0056b3;
            }
    </style>
</head>
<body>

    <div class="login-form">
        <form id="form1" runat="server">
        <h2>Login</h2>
            <div class="form-control">
                <label for="username">Username</label>
                <asp:TextBox  type="text" id="username" name="username" required runat="server"></asp:TextBox>
                
            </div>

            <div class="form-control">
                <label for="password">Password<br />
                <asp:TextBox type="password" ID="password" name="password" required runat="server" OnTextChanged="password_TextChanged"></asp:TextBox>
                </label>
                &nbsp;
                <asp:Label ID="err" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Remmeber Password"></asp:Label>
                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" TextAlign="Left" />
                <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#3366CC" BorderColor="#3366CC" OnClick="Button1_Click" />
            </div>

        </form>
    </div>

    <script>
function checkCredentials() {
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    if (username === 'Admin' && password === 'admin') {
        window.location.href = 'admin.aspx'; // Redirect to admin page
        return false; // Prevent form submission
    }

    alert('Invalid credentials!');
    return false; // Prevent form submission
}
    </script>

</body>
</html>
