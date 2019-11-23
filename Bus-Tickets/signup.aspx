<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Bus_Tickets.signup" %>

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
                    <h2>Personal Details</h2>
                    <hr />
                    <label>Enter Name: </label> <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox><br />
                    <label>Enter Surname: </label> <asp:TextBox ID="txtSurname" type="text" CssClass="form-control" runat="server"></asp:TextBox><br />
                    <label>Enter Address: </label> <asp:TextBox ID="txtAddress" type="text" CssClass="form-control" runat="server"></asp:TextBox><br />
                    <label>Enter Phone Number: </label> <asp:TextBox ID="txtPhone" type="text" CssClass="form-control" runat="server"></asp:TextBox><br />

                    <br />
                    <h2>Account Details</h2>
                    <hr />
                    <label>Enter Username: </label> <asp:TextBox ID="txtUser" CssClass="form-control" runat="server"></asp:TextBox><br />
                    <label>Enter Password: </label> <asp:TextBox ID="txtPass" type="password" CssClass="form-control" runat="server"></asp:TextBox><br />
                    <label>Confirm Password: </label> <asp:TextBox ID="txtRPass" type="password" CssClass="form-control" runat="server"></asp:TextBox><br />

                    <br />
                    <label>Choose the Questions and answer</label><br />
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        <asp:ListItem>What Your Favourate Color ?</asp:ListItem>
                        <asp:ListItem>Who&#39;s your Favourate Artist ?</asp:ListItem>
                        <asp:ListItem>What the name of your High School ?</asp:ListItem>
                        <asp:ListItem>What is your mother&#39;s name ?</asp:ListItem>
                        <asp:ListItem>What&#39;s Your Favourate Car ?</asp:ListItem>
                        <asp:ListItem>Who&#39;s Your Role Model ?</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <label>1st Answer: </label> <asp:TextBox ID="txtAnswer" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                    <label>Choose the Questions and answer</label><br />
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                        <asp:ListItem>What Your Favourate Color ?</asp:ListItem>
                        <asp:ListItem>Who&#39;s your Favourate Artist ?</asp:ListItem>
                        <asp:ListItem>What the name of your High School ?</asp:ListItem>
                        <asp:ListItem>What is your mother&#39;s name ?</asp:ListItem>
                        <asp:ListItem>What&#39;s Your Favourate Car ?</asp:ListItem>
                        <asp:ListItem>Who&#39;s Your Role Model ?</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <label>2nd Answer: </label> <asp:TextBox ID="txtAnswer2" CssClass="form-control" runat="server"></asp:TextBox><br /> 
                    <br />
                <label>Proceed to Create your Account</label>
                <hr />
                <asp:Button ID="btnCreate" class="btn btn-md btn-primary" runat="server" Text="Create Account" OnClick="btnCreate_Click" />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </form>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
