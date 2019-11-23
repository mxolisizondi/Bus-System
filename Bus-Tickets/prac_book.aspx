<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_book.aspx.cs" Inherits="Bus_Tickets.prac_book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
 <script>
    $('#exampleModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) 
    var recipient = button.data('whatever')
    var modal = $(this)
    modal.find('.modal-title').text('New message to ' + recipient)
    modal.find('.modal-body input').val(recipient)
  })
</script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/externalDesign.css" rel="stylesheet" />
    <form id="form1" runat="server">
         <div class="container">
            <div class="row">
                <div class="col col-lg-10 col-md-10 col-sm-10 col-xs-10">
                    <br />
                    <h2>Book your tickets</h2>
                    <hr />
                    <label>One Way</label>
                    <asp:RadioButton ID="RadioButton1"  GroupName="wayStreet" runat="server" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>Return</label>
                    <asp:RadioButton ID="RadioButton2" GroupName="wayStreet" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" /> <br />
                    

                    <br />
                    <label >From:</label><br />
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
                         <asp:ListItem>Choose your location</asp:ListItem>
                        <asp:ListItem>Durban</asp:ListItem>
                        <asp:ListItem>PeterMaritzburg</asp:ListItem>
                        <asp:ListItem>Cape Town</asp:ListItem>
                        <asp:ListItem>Gauteng</asp:ListItem>
                        <asp:ListItem>Eastern Cape</asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    <label>Date:</label><br />
                    <asp:TextBox ID="txtDate" class="form-control" placeholder="DD/MM/YYYY" runat="server"></asp:TextBox>
                    <br />
                   
                    <br />
                     <asp:Button ID="btnSeacrh" CssClass="btn btn-md btn-outline-info" runat="server" Text="Search For Buses" OnClick="btnSeacrh_Click" />
                    <br />
                    <br />
                    <div class="col">
                   <table class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Bus Number</th>
                            <th scope="col">Time</th>
                            <th scope="col">Price</th>
                            <th scope="col">Select Your Bus</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><asp:Label ID="Label1" runat="server" Text="City to City"></asp:Label></td>
                            <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
                            <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                            <td><button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Book the bus</button></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                    <br />
                    <br />
                    <br />
                </div>
               <br />
            </div>
        </div>
        <!--Modal Pages-->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel" style="color:#000">Login</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form>
                  <div class="form-group">
                    <label for="recipient-name" class="col-form-label" style="color:#000">Username:</label>
                      <asp:TextBox ID="txtUser" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label for="message-text" class="col-form-label" style="color:#000">Password:</label>
                    <asp:TextBox ID="txtPass" type="password" CssClass="form-control" runat="server"></asp:TextBox>
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline-info" data-dismiss="modal">Cancel</button>
                <!--<button type="button" class="btn btn-outline-info">Login</button>
                <button type="button" class="btn btn-outline-info">Create Account</button>-->
                <asp:Button ID="Button1" type="button" class="btn btn-outline-info" runat="server" Text="Login" OnClick="Button1_Click" />
                <asp:Button ID="Button2" type="button" class="btn btn-outline-info" runat="server" Text="Signup" OnClick="Button2_Click" />
              </div>
            </div>
          </div>
        </div><!--End of modal pages-->
      </form>
</body>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.js"></script>
</html>
