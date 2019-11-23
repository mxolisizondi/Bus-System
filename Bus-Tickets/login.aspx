<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Bus_Tickets.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/loginDesign.css" rel="stylesheet" />
</head>
<body>

<form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">
                <h1>Login As:</h1>
                <hr />
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="userType" OnCheckedChanged="RadioButton1_CheckedChanged" /> <label>Passager</label><br />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="userType" /> <label>Admin</label><br />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="userType" /> <label>Driver(Employee)</label><br />
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="userType" /> <label>Manager</label><br />
                <br />
                <asp:Button ID="btnLog" CssClass="btn btn-md btn-primary" runat="server" Text="Proceed" OnClick="btnLog_Click"/>
                <hr />
            </div>

            <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">
                <label>Username: </label><asp:TextBox ID="txtUser" CssClass="form-control" runat="server"></asp:TextBox>
                <label>Password: </label><asp:TextBox ID="txtPass" type="password" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnLogin" class="btn btn-md btn-primary" runat="server" Text="Login" OnClick="btnLogin_Click" />
                &nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btnFG" class="btn btn-md btn-primary" runat="server" Text="Forgot Password" OnClick="btnFG_Click" />
                <br />
                <hr />
                <label>Create New Account</label><br />
                &nbsp; <asp:Button ID="btnSignup" class="btn btn-md btn-primary" runat="server" Text="Sign-Up" OnClick="btnSignup_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <hr />
              
            </div>
        </div>
    </div>
</form>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
