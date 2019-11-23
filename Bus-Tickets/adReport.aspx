<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="adReport.aspx.cs" Inherits="Bus_Tickets.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
    <div class="row">
        <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <br />
            <h3>Report</h3>
            <hr />
            <label>Bus-Number: </label><asp:TextBox ID="txtBus_No" CssClass="form-control" runat="server"></asp:TextBox>
            <label>Trip-Number: </label><asp:TextBox ID="txtTrip_ID"  CssClass="form-control" runat="server"></asp:TextBox>
            <label>Driver-ID: </label><asp:TextBox ID="txtDriver_ID" CssClass="form-control" runat="server"></asp:TextBox>
            <label>Date: </label><asp:TextBox ID="txtxDriver_ID" CssClass="form-control" runat="server"></asp:TextBox>
             <br />
            <asp:Button ID="btnReport" CssClass="btn btn-md btn-outline-info" runat="server" Text="Report" OnClick="btnReport_Click" />
            <br />
            <hr />
            <!--Current tickets-->
        </div>
    </div>
 </div>
</asp:Content>
