﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="adEmpProfile.aspx.cs" Inherits="Bus_Tickets.WebForm22" %>
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
            <asp:Button ID="btnUpdate" CssClass="btn btn-md btn-outline-info" runat="server" Text="Update Driver Information" OnClick="btnUpdate_Click" />
            &nbsp;
            <asp:Button ID="btnSearch" CssClass="btn btn-md btn-outline-info" runat="server" Text="Search Driver" OnClick="btnSearch_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDel" CssClass="btn btn-md btn-outline-info" runat="server" Text="Delete Driver" OnClick="btnDel_Click" />
            <br />
            <br />
        </div>
    </div>
 </div>
</asp:Content>
