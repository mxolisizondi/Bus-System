<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="adCustBook.aspx.cs" Inherits="Bus_Tickets.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container">
       <div class="row">
            <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">


       <div class="container">
       <div class="row">
        <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <br />
            <h3>Customer Information</h3>
            <hr />
            <label>Name: </label><asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
            <label>Surname: </label><asp:TextBox ID="txtSname"  CssClass="form-control" runat="server"></asp:TextBox>
            <label>Address: </label><asp:TextBox ID="txtAddr" CssClass="form-control" runat="server"></asp:TextBox>
            <label>ID-Number: </label><asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>
            <label>Cellphone Number: </label><asp:TextBox ID="txtCell" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <!--<h3>Current Booked Tikets</h3>-->
      <hr />

            <!--Current tickets-->
              
        </div>
    </div>
 </div>
                    <br />
                    <h2>Book For Customer</h2>
                    <hr />
                    <label>One Way</label>
                    <asp:RadioButton ID="RadioButton1" runat="server" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>Return</label>
                    <asp:RadioButton ID="RadioButton2" runat="server" /> <br />

                    <br />
                    <label>From:</label><br />
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        <asp:ListItem>Choose your location</asp:ListItem>
                        <asp:ListItem>Durban</asp:ListItem>
                        <asp:ListItem>PeterMaritzburg</asp:ListItem>
                        <asp:ListItem>Cape Town</asp:ListItem>
                        <asp:ListItem>Gauteng</asp:ListItem>
                        <asp:ListItem>Eastern Cape</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <label>To:</label><br />
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>PeterMaritzburg</asp:ListItem>
                        <asp:ListItem>Cape Town</asp:ListItem>
                        <asp:ListItem>Gauteng</asp:ListItem>
                        <asp:ListItem>Eastern Cape</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                     <asp:Button ID="btnSeacrh" CssClass="btn btn-md btn-outline-info" runat="server" Text="Search For Buses" OnClick="btnSeacrh_Click" />
                    <br />
                    <br />
                    <div class="col ">
                        <!--
                    <table class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Comapany Name</th>
                            <th scope="col">Bus</th>
                            <th scope="col">Time</th>
                            <th scope="col">Select Your Bus</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><asp:Label ID="Label1" runat="server" Text="City to City"></asp:Label></td>
                            <td><asp:Label ID="Label2" runat="server" Text="Bus 02"></asp:Label></td>
                            <td><asp:Label ID="Label5" runat="server" Text="08:00"></asp:Label></td>
                            <td><asp:Button ID="btnBook1" CssClass="btn btn-md btn-info" runat="server" Text="Book the bus" /></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label3" runat="server" Text="Greyhound"></asp:Label></td>
                            <td>Bus 90</td>
                            <td>18:00</td>
                            <td><asp:Button ID="btnBook2" CssClass="btn btn-md btn-info" runat="server" Text="Book the bus" /></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label4" runat="server" Text="Intercape"></asp:Label></td>
                            <td>Bus 106</td>
                            <td>20:30</td>
                            <td><asp:Button ID="btnBook3" CssClass="btn btn-md btn-info" runat="server" Text="Book the bus" /></td>
                        </tr>
                        </tbody>
                    </table> -->
                       <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" AutoGenerateColumns="False" runat="server">
                            <Columns>
                                <asp:BoundField  DataField="BusNo" HeaderText="Bus Number" />
                                <asp:BoundField  DataField="time" HeaderText="Time" />
                                <asp:BoundField  DataField="price" HeaderText="Price" />
                              </Columns>
                        </asp:GridView>
                </div>
                    <br />
                 <h2>Payment</h2>
                <label>Quantity:</label><asp:DropDownList ID="listQuantity"  CssClass="form-control" runat="server">
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
            <label>Amount: </label><asp:TextBox ID="TextBox1"  CssClass="form-control" runat="server"></asp:TextBox>
            <label>Invoice-Number: </label><asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
               <br />
                    <asp:Button ID="Button1" CssClass="btn btn-md btn-info" runat="server" Text="Print Tickets" OnClick="Button1_Click" />
                    
                </div>

                <br />
            </div>
        </div>
</asp:Content>
