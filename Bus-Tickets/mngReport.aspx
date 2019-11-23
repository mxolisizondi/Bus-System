<%@ Page Title="" Language="C#" MasterPageFile="~/managerMaster.Master" AutoEventWireup="true" CodeBehind="mngReport.aspx.cs" Inherits="Bus_Tickets.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <div class="container">
    <div class="row">
        <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <br />
            <h3>Report</h3>
            <hr />
            <label>Bus-Number: 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBus_No" ErrorMessage="This Field Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </label>
            <asp:TextBox ID="txtBus_No" CssClass="form-control" runat="server"></asp:TextBox>

            <label>Trip-Number: 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTrip_ID" ErrorMessage="This Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </label><asp:TextBox ID="txtTrip_ID"  CssClass="form-control" runat="server"></asp:TextBox>
            

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
