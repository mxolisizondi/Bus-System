<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="adVehicle.aspx.cs" Inherits="Bus_Tickets.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
    <div class="row">
        <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <br />
            <h3>Manage Vehicles</h3>
            <hr />
            <label>Bus-Name: </label><asp:TextBox ID="txtBusName" CssClass="form-control" runat="server"></asp:TextBox>
            <label>Bus-Number: </label><asp:TextBox ID="txtBusNumber"  CssClass="form-control" runat="server"></asp:TextBox>
            <label>Registration-Number: </label><asp:TextBox ID="txtRegNo" CssClass="form-control" runat="server"></asp:TextBox>
            <label>Vehicle-Model: </label><asp:TextBox ID="txtModel" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnUpdate" CssClass="btn btn-md btn-outline-info" runat="server" Text="Update Vehicle Details" OnClick="btnUpdate_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSearch" CssClass="btn btn-md btn-outline-info" runat="server" Text="Search Vehicle" OnClick="btnSearch_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" CssClass="btn btn-md btn-outline-info" runat="server" Text="Delete Vehicle" OnClick="btnDelete_Click" />
            <br />
            <br />
        </div>
    </div>
 </div>
</asp:Content>
