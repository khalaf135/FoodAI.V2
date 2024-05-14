<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Lab11.WebForm3" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database Operations</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Manage Database Entries</h2>
        <fieldset>
            <legend>Insert New User</legend>
            Name: <asp:TextBox ID="txtName" runat="server" />
            Email: <asp:TextBox ID="txtEmail" runat="server" />
            Password: <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
            <asp:Label ID="lblInsertStatus" runat="server"></asp:Label>
        </fieldset>
        <fieldset>
    <legend>Update User</legend>
    Email to Update: <asp:TextBox ID="txtUpdateEmail" runat="server" />
    New Name: <asp:TextBox ID="txtUpdateName" runat="server" />
    New Password: <asp:TextBox ID="txtUpdatePassword" runat="server" TextMode="Password" />
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            <asp:Label ID="lblUpdateStatus" runat="server"></asp:Label>
</fieldset>

<fieldset>
    <legend>Delete User</legend>
    Email to Delete: <asp:TextBox ID="txtDeleteEmail" runat="server" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
    <asp:Label ID="lblDeleteStatus" runat="server"></asp:Label>
    </fieldset>
        <fieldset>
    <legend>Show All Users</legend>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateSelectButton="True" DataSourceID="SqlDataSource2">
            </asp:GridView>
</fieldset>
        <fieldset>
            <legend>Search by Email</legend>
            <asp:TextBox ID="txtSearchEmail" runat="server" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </fieldset>&nbsp;<asp:GridView ID="GridView1" runat="server" Visible="False" AutoGenerateColumns="False"
              DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="emaill">
    <Columns>
        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
        <asp:BoundField DataField="emaill" HeaderText="Email" SortExpression="emaill" />
        <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
    </Columns>
</asp:GridView>

        &nbsp;<hr />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodAiConnectionString2 %>"
                           SelectCommand="SELECT [name], [emaill], [password] FROM [FoodAi]"
                           InsertCommand="insert into FoodAi (name,emaill,password) values (@name,@emaill,@password)">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtName" Name="name" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEmail" Name="emaill" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FoodAiConnectionString2 %>"
                           SelectCommand="SELECT [name], [emaill], [password] FROM [FoodAi]"
                           InsertCommand="insert into FoodAi (name,emaill,password) values (@name,@emaill,@password)">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtName" Name="name" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEmail" Name="emaill" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>

</body>
</html>
