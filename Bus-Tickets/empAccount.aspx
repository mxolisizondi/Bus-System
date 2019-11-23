<%@ Page Title="" Language="C#" MasterPageFile="~/empMaster.Master" AutoEventWireup="true" CodeBehind="empAccount.aspx.cs" Inherits="Bus_Tickets.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container">
    <div class="row">
        <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <br />
            <h3>Changing Account Password</h3>
            <hr />
            <label>Enter Previous Password: </label><asp:TextBox ID="txtPrevPass" type="password" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnPrevPass" CssClass="btn btn-md btn-outline-info" runat="server" Text="Proceed" OnClick="btnPrevPass_Click" />
            <br />
            <br />
            <asp:Label ID="lblQ1" runat="server" Text="Previous Question 1 ??"></asp:Label>
            <asp:TextBox ID="txtAnswer"  CssClass="form-control" runat="server"></asp:TextBox>
            <asp:Label ID="lblQ2" runat="server" Text="Previous Question 2 ??"></asp:Label>
            <asp:TextBox ID="txtAnswer2"  CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            <label>Enter New Password: </label><asp:TextBox ID="txtNewPass" type="password" CssClass="form-control" runat="server"></asp:TextBox>
            <label>Re-Enter Your Password: </label><asp:TextBox ID="txtConfirm" type="password" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnChangePass" CssClass="btn btn-md btn-outline-info" runat="server" Text="Change Password" OnClick="btnChangePass_Click" />
            <br />
            <br />
                        
        </div>
    </div>
 </div>
</asp:Content>
