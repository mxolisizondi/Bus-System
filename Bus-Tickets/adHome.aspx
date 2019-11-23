<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="adHome.aspx.cs" Inherits="Bus_Tickets.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
        <div class="carousel slide" data-ride="carousel" id="slides">
            <!--slide indicators-->
            <ul class="carousel-indicators">
                <li data-target="#slides" data-slide-to="0" class="active"></li>
                <li data-target="#slides" data-slide-to="1"></li>
                <li data-target="#slides" data-slide-to="2"></li>
            </ul>
            <!--slide items-->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/ad3.jpg" width="1400" height="600">
                    <div class="carousel-caption">
                    <h3>Administrator</h3>
                    <p>We aim to ensure that our administrator renders the best service to our clients</p>
                    <a href="#moreInfo"  class="btn btn-md btn-outline-info" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="collapseExample">More Information</a>
                    <p id="moreInfo" class="collapse">
                        provide general administrative and clerical support including mailing, scanning, faxing and copying to management
                        maintain electronic and hard copy filing system
                        open, sort and distribute incoming correspondence
                        perform data entry and scan documents
                        manage calendar for Managing Director
                        assist in resolving any administrative problems
                        run company’s errands to post office and office supply store
                    </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/ad2.jpg" width="1400" height="600">
                    <div class="carousel-caption">
                    <h3>Administrator</h3>
                    <p>We aim to ensure that our administrator renders the best service to our clients</p>
                    <a href="#moreInfo2"  class="btn btn-md btn-outline-info" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="collapseExample">More Information</a>
                    <p id="moreInfo2" class="collapse">
                        provide general administrative and clerical support including mailing, scanning, faxing and copying to management
                        maintain electronic and hard copy filing system
                        open, sort and distribute incoming correspondence
                        perform data entry and scan documents
                        manage calendar for Managing Director
                        assist in resolving any administrative problems
                        run company’s errands to post office and office supply store
                    </p>
                    </div>
                    </div>
                <div class="carousel-item">
                    <img src="img/ad1.jpg" width="1400" height="600">
                    <div class="carousel-caption">
                    <h3>Administrator</h3>
                    <p>We aim to ensure that our administrator renders the best service to our clients</p>
                    <a href="#moreInfo3"  class="btn btn-md btn-outline-info" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="collapseExample">More Information</a>
                    <p id="moreInfo3" class="collapse">
                        provide general administrative and clerical support including mailing, scanning, faxing and copying to management
                        maintain electronic and hard copy filing system
                        open, sort and distribute incoming correspondence
                        perform data entry and scan documents
                        manage calendar for Managing Director
                        assist in resolving any administrative problems
                        run company’s errands to post office and office supply store
                    </p>
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
<div class="container-fluid">
    <div class="row">
        <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <h2>R.E.Y Tickets</h2>
            <p>
              Online booking systems mean your business is open 24 hours a day, seven days a week.
              In other words, your customers can make a reservation whenever it fits into their schedule
              (without you or your employees having to be there). Studies have shown that immediate availability
              when shopping for products or services dramatically increases the number of purchases or appointments.
              With online booking, you'll capture more of the people looking to schedule an appointment or tee time.
            <hr />
            An online booking system can require customers to prepay for activities and golf rentals.
            Currently, you are likely waiting to see if players show up before you can collect payment for events 
            or tee times. An online booking systems allow you to capture that new revenue as soon as 
            players schedule with your course.
            <br />
                <br />
             Easy access to consumer reviews: It's easy to access consumer reviews for pretty much any product you
             can think of online, which makes for informed purchases. Not sure you're up to buying something?
             Look at the reviews from other consumers, and you'll be better able to make an informed decision. 
            </p>
            <br />
            <br />
            <h3>Management</h3>
            <p>
                Create separate ad accounts for every client or business you serve, pay for ads with different payment
                methods, and organize by objective for reporting.
                if you have clients you can request access to their Pages and ad accounts to become an analyst or advertiser.
                You can allow specific, role-based access to ad accounts, Pages, and other assets that your business manages, as well as easily see who's working on what.
                ee the performance of your ads across different ad accounts and get reports of the assets and people your business is responsible for.
            </p>
            <hr />
            <br />
             <h3>Processes</h3>
            <p>
                A customer will land on your website and choose which activity or service they’d like to book, 
                and then will click through to the booking page. At this stage, the customer will fill in a booking form. 
                Custom forms can also be set, allowing you to harvest whatever information you require in order to complete the booking.
                The customer will then pay through a secure payment gateway, and the payment will be transferred to you.
                This information is displayed in our secure Content Management System, which is only accessible via a login and password,
                offering greater security than competing booking methods.
            </p>
        </div>
    </div>
</div>
</asp:Content>
