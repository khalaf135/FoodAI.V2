<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regeister.aspx.cs" Inherits="Lab11.WebForm2" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #384434;
        }

        .registration-form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
        }

        .form-control {
            margin-bottom: 20px;
        }

            .form-control input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 8px;
                box-sizing: border-box;
            }

        .Button1 button {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            margin-bottom: 0px;
        }

            .Button1 button:hover {
                background-color: #0056b3;
            }
    </style>
</head>
<body>

    <div class="registration-form">
        <h2>Register</h2>
        <form id="registrationForm" runat="server">
            <div class="form-control">
                <label for="name">Name</label>
                <asp:TextBox ID="NameText" runat="server"></asp:TextBox>
                <br />
&nbsp;</div>

            <div class="form-control">
                <label for="email">Email</label>
                <asp:TextBox ID="EmailText" runat="server"></asp:TextBox>
                <br />
&nbsp;<asp:Label ID="Error_email" runat="server"></asp:Label>
            </div>

            <div class="form-control">
                <label for="password">Password</label>&nbsp;
                <asp:TextBox ID="PasswordText" runat="server"></asp:TextBox>
            </div>

            <div class="form-control">
                <label for="confirm-password">Confirm Password</label>
                <br />
                <asp:TextBox ID="PassText" runat="server"></asp:TextBox>
            &nbsp;</div>

            
                <asp:Button ID="Button1" runat="server" Text="Button" Height="30px" OnClick="Button1_Click" Width="1409px" BackColor="#3366CC" BorderColor="#3366CC" />
           
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodAiConnectionString %>" InsertCommand="insert into FoodAi (name,emaill,password) values ( @name,@emaill,@password)" SelectCommand="SELECT [name], [emaill], [password] FROM [FoodAi]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="NameText" Name="name" PropertyName="Text" />
                    <asp:ControlParameter ControlID="EmailText" Name="emaill" PropertyName="Text" />
                    <asp:ControlParameter ControlID="PasswordText" Name="password" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Error_successfully" runat="server"></asp:Label>
        </form>
    </div>

</body>
</html>

