  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main-home.aspx.cs" Inherits="Bus_Tickets.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home | Page</title>
</head>
<body>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round" rel="stylesheet"/>
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/main-home-style.css" rel="stylesheet" />
<link href="css/main-home-style.css" rel="stylesheet" />

<form id="form1" runat="server">
<div class="container-fluid">
    <div class="row">
        <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12 cover">
            <div class="navigation">
                <div class="social-icons"></div>
                <div class="main-header">
                    <a href="pmHome.aspx"><img src="img/bus1.png" class="img-responsive img-circle" width="85" height="65"/></a>
                    <h2 class="logo-name">R.E.Y Ticketing</h2>
                </div>
                <div class="navbar navbar-expand-lg navbar-light" role="navigation">
                    <button class="navbar-toggler" type="button" data-target="#navItems" data-toggle="collapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navItems">
                        <ul class="nav navbar-nav ml-auto">
                            <li><a href="#" class="nav-link">Home</a></li>
                            <li><a href="prac_book.aspx" class="nav-link">Book</a></li>
                            <li><a href="#" class="nav-link">Services</a></li>
                            <li><a href="login.aspx" class="nav-link">Login</a></li>
                            <li><a href="signup.aspx" class="nav-link">Sign-Up</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="cover-word">
                <h2 class="cover-head" style="color: #51d8dc; padding-left: 43%; padding-top: 50px">REY Tickets</h2>
                <hr class="line-footer"/>
                <p class="cover-para" style="color:  #51d8dc; padding-left: 30% ">REY Is a Company that deals with rendering online services to our customers</p>
                <asp:Button ID="btnOffer" style="margin-left: 40% ;margin-top: 20px" class="btn btn-outline-info btn-md" runat="server" Text="Our Offers" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btnService" style="margin-top: 20px" class="btn btn-outline-info btn-md" runat="server" Text="Services" />
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="container">
            <br />
            <div class="case-area">
                <h3>About Our Company</h3>
                <hr />
                <div class="vehicle col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <i class="fa fa-bus fa-5x" style="color:#0094ff"></i>
                    <h4>Our Vehicles</h4>
                    <p>Our Vehicles travels long distances</p>
                </div>

                <div class="pay col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <i class="fa fa-cc-visa fa-5x" style="color:#0094ff" ></i>
                    <h4>Payments</h4>
                    <p>When paying for tickets</p>
                </div>
            </div>
            <hr />
        </div>
    </div>
</div>

<br/>
<div class="row">
    <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="section-a container">
            <h3>Our Offers</h3>
            <hr />
             <div class="card col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <img class="card-img-top" src="img/pri.jpg" alt="Card image cap"/>
                   <div class="card-body">
                      <h5 class="card-title">Privacy</h5>
                      <p class="card-text">It is very vital for a customer on an online user to have privacy without any worries</p>
                      <a href="#full-a" data-toggle="collapse" role="link" aria-expanded="false" aria-controls="full-a">See More</a>
                      <br />
                       <p id="full-a" class="collapse">
                       Turn on private browsing.
                       If you don’t want anyone with physical access to your computer to see where you’re hanging out online you 
                       should enable “private browsing,” a setting available in each major web browser. It deletes cookies, 
                       temporary Internet files and browsing history after you close the window.
                      </p>
                   </div>
            </div>

            <div class="card col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <img class="card-img-top" src="img/trans.jpg" height="201" alt="Card image cap"/>
                   <div class="card-body">
                      <h5 class="card-title">Easy Access to transport</h5>
                      <p class="card-text">R.E.Y tickets provides easy and wide acces to transport facilities to our customers</p>
                      <a href="#full-b" data-toggle="collapse" role="link" aria-expanded="false" aria-controls="full-b">See More</a>
                       <br />
                       <p id="full-b" class="collapse">
                           Before the event
                           Choose an experienced transportation partner who is used to organising transportation for large events 
                           preferably a supplier who can handle all the logistics, including designing shuttle routes, 
                           hiring staff, ensuring all vehicles have the appropriate permits, and so on.
                           <br />
                           During the Event
                           Make sure to have an onsite coordinator who has a list of all attendees, the phone numbers of all the drivers 
                           and of your transportation partner’s HQ. 
                       </p>
                 </div>
            </div>

             <div class="card col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <img class="card-img-top" src="img/security.jpg" height="222" alt="Card image cap"/>
                   <div class="card-body">
                      <h5 class="card-title">Security</h5>
                      <p class="card-text">R.E.Y tickets ensures security to our customers and any of our account holder</p>
                      <a href="#full-c" data-toggle="collapse" role="link" aria-expanded="false" aria-controls="full-c">See More</a>
                      <br />
                       <p id="full-c" class="collapse">
                          While your provider may use strong encryption to process payments, there's a step where they have no control over
                          the data: when you send it to them. That data – chock full of sensitive information – can be intercepted between
                          your system and theirs. To prevent that, you need to use a payment solution that encrypts the data.  
                        </p>
                 </div>
            </div>
            <hr />
        </div>
    </div>
</div>
<!--End-section-a-->

<!--section-b-->
 <br />
 <br />
<div class="row">
    <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="fixed-back-section container-fluid">
            <br />
            <h3 style="color: #1ccad5 ; text-align: center">Our Services</h3>
            <hr />
            <p style="color: #1ccad5">
                South African bus travel provides a great way to see the country. South African buses are comfortable and feature
                normal coach creature comforts. Some even have specially designed sleeper chairs to make your ride more pleasant. 
                Tourism buses in South Africa are predominantly operated by Greyhound, Autopax and Intercape. South African bus 
                travel can also include trips to neighbouring African countries, as many local service providers operate routes 
                across Southern Africa.
                Autopax is such an operator, featuring the brands Translux and City-to-City, which cover more than 100 domestic 
                destinations and a number of African routes
                Translux is a luxury, inter-city operator. It offers double and single decker luxury coaches which feature audio 
                and visual entertainment, reclining seats, air-conditioning, reading lights, heaters and onboard toilet facilities.
                City-to-City is a semi-luxury service, operating between all the major centres in Southern Africa, including 
                Lesotho, Malawi, Mozambique, Swaziland, Zambia and Zimbabwe.
                Intercape has one of the largest regional inter-city infrastructures, offering 38 daily departures across South 
                Africa, Namibia, Mozambique and Botswana. Its fleet includes 49 luxury double-decker and 15 single-decker coaches.<br />
            </p>
            <br />
        </div>
    </div>
</div>
<!--end section-b-->
<!--section-c-->
<div class="row">
    <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="contact-section container-fluid">
            <br />
            <br />
            <h3>Be In Touch</h3>
            <hr />
            <div class="contact1 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <i class="fa fa-phone fa-5x" style="color:#0094ff"></i>
                <h4>Phone Number</h4>
                <p>050-333-1212</p>
            </div>
              <div class="contact2 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <i class="fa fa-envelope fa-5x" style="color:#0094ff"></i>
                <h4>Email</h4>
                <p>Cedric321@outlook.com</p>
            </div>
            <div class="contact3 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <i class="fa fa-map-marker fa-5x" style="color:#0094ff"></i>
                <h4>Address</h4>
                <p>A-323 West Street</p>
            </div>
        </div>
    </div>
</div>
<!--end section-c-->
    <br />
<div class="row">
    <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="footer">
                <h4>R.E.Y Tickets</h4>
                <hr class="line-footer"/>
                <br />
                <ul class="footer-icons">
				    <li><a href="#"><i class="fa fa-facebook fa-2x"></i></a></li>
				    <li><a href="#"><i class="fa fa-twitter fa-2x"></i></a></li>
				    <li><a href="#"><i class="fa fa-google-plus fa-2x"></i></a></li>
				    <li><a href="#"><i class="fa fa-instagram fa-2x"></i></a></li>
				    <li><a href="#"><i class="fa fa-linkedin fa-2x"></i></a></li>
				    <li><a href="#"><i class="fa fa-youtube fa-2x"></i></a></li>
			    </ul>
                <br />
                <hr class="line-footer"/>
                <p>All right reserverd &copy; Copyright 2018 Cedric Corp.</p>
            </div>
    </div>
</div> 
</form>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>
