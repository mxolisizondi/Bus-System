<%@ Page Title="" Language="C#" MasterPageFile="~/empMaster.Master" AutoEventWireup="true" CodeBehind="empProfile.aspx.cs" Inherits="Bus_Tickets.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
    <div class="row">
        <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <br />
            <h3>My Profile</h3>
            <hr />
            <label>Name: </label><asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
            <label>Surname: </label><asp:TextBox ID="txtSname"  CssClass="form-control" runat="server"></asp:TextBox>
            <label>Address: </label><asp:TextBox ID="txtAddr" CssClass="form-control" runat="server"></asp:TextBox>
            <label>ID-Number: </label><asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>
            <label>Cellphone-Number: </label><asp:TextBox ID="txtCell" CssClass="form-control" runat="server"></asp:TextBox>
            <label>Employment-Number: </label><asp:TextBox ID="txtEmpNum" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            <!--update happens if only admin did log in on drivers behalf so update button will be enabled-->  
            <asp:Button ID="btnUpdate" CssClass="btn btn-md btn-outline-info" runat="server" Text="Update Driver Information" />
            &nbsp;
            <asp:Button ID="btnSearch" CssClass="btn btn-md btn-outline-info" runat="server" Text="Search Driver" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
    </div>
 </div>

</asp:Content>
