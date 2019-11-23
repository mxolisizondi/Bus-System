<%@ Page Title="" Language="C#" MasterPageFile="~/passMaster.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="Bus_Tickets.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container-fluid">
        <div class="carousel slide" data-ride="carousel" id="slides">
            <!--slide indicators-->
            <ul class="carousel-indicators">
                <li data-target="#slides" data-slide-to="0" class="active"></li>
                <li data-target="#slides" data-slide-to="1"></li>
            </ul>
            <!--slide items-->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/payLogo.jpg" width="1400" height="450">
                    <div class="carousel-caption">
                        <!--add whatever caption on te slides-->
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/payLogo2.jpg" width="1400" height="450">
                    <div class="carousel-caption">
                        <!--add whatever caption on te slides-->
                    </div>
                    </div>
            </div>
            <!--slide-nav-->
             <a class="carousel-control-prev" href="#slides" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
              </a>
              <a class="carousel-control-next" href="#slides" data-slide="next">
                <span class="carousel-control-next-icon"></span>
              </a>
        </div>
    </div>
 <div class="container">
    <div class="row">
        <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <br />
            <h3>Payment</h3>
            <hr />
           <!-- <label>Quantity:</label><asp:DropDownList ID="listQuantity"  CssClass="form-control" runat="server">
                <asp:ListItem>Choose Quantity</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <label>Amount: </label><asp:TextBox ID="txtSname"  CssClass="form-control" runat="server"></asp:TextBox>
            <label>Invoice-Number: </label><asp:TextBox ID="txtAddr" CssClass="form-control" runat="server"></asp:TextBox>
            -->

             <asp:Button ID="Button1" CssClass="btn btn-md btn-outline-info" runat="server" Text="Make Our Payment To Pay-Pal" />
            <br />
            <br />
             <h3>Payment Methods</h3>
            <hr />
            <asp:RadioButton ID="rBtnCard" runat="server" /><label>&nbsp;&nbsp; Pay With Credit Card</label><br />
            <asp:RadioButton ID="rBtnCash" runat="server" />&nbsp; <label>Pay With Cash</label><br />
            <asp:RadioButton ID="rBtnOnlinePay" runat="server" />&nbsp; <label>Online Payment</label><br /><br />
            <label>Account-Number:</label><asp:TextBox ID="txtPayDetails" class="form-control" runat="server"></asp:TextBox>
            <label>Pin-Number:</label><asp:TextBox ID="txtPin" class="form-control" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnPay" CssClass="btn btn-md btn-outline-info" runat="server" Text="Make Payment" />
            <br />
            <hr />
        </div>
    </div>
 </div>
</asp:Content>
