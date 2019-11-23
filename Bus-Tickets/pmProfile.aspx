<%@ Page Title="" Language="C#" MasterPageFile="~/passMaster.Master" AutoEventWireup="true" CodeBehind="pmProfile.aspx.cs" Inherits="Bus_Tickets.WebForm2" %>
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
            <label>Cellphone Number: </label><asp:TextBox ID="txtCell" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnUpdate" CssClass="btn btn-md btn-outline-info" runat="server" Text="Update Cusomer Info." OnClick="btnUpdate_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <!--<h3>Current Booked Tikets</h3>-->
      <hr />

            <!--Current tickets-->
              
        </div>
    </div>
 </div>
</asp:Content>
