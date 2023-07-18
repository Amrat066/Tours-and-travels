<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tour_booking.aspx.cs" Inherits="User_master_tour_booking" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/travelz/booking.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 18 Jun 2020 16:54:55 GMT -->
<head runat ="server">
    <title>Sunshine travel-forever and ever</title>
    <!--== META TAGS ==-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- FAV ICON -->
    <link rel="shortcut icon" href="images/fav.ico">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Poppins%7CQuicksand:400,500,700" rel="stylesheet">
    <!-- FONT-AWESOME ICON CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!--== ALL CSS FILES ==-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/mob.css">
    <link rel="stylesheet" href="css/animate.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>

    <!-- MOBILE MENU -->
    <section>
        <div class="ed-mob-menu">
            <div class="ed-mob-menu-con">
                <div class="ed-mm-left">
                    <div class="wed-logo">
                        <a href="main.html"><img src="images/logo.png" alt="" />
						</a>
                    </div>
                </div>
                <div class="ed-mm-right">
                    <div class="ed-mm-menu">
                        <a href="#!" class="ed-micon"><i class="fa fa-bars"></i></a>
                        <div class="ed-mm-inn">
                            <a href="#!" class="ed-mi-close"><i class="fa fa-times"></i></a>
                            <h4>Home pages</h4>
                            <ul>
                                <li><a href="booking-all.html">Home page 1</a></li>
                                <li><a href="booking-all.html">Home page 2</a></li>
                                <li><a href="booking-tour-package.html">Home page 3</a></li>
                                <li><a href="booking-hotel.html">Home page 4</a></li>
                                <li><a href="booking-car-rentals.html">Home page 5</a></li>
                                <li><a href="booking-flight.html">Home page 6</a></li>
                                <li><a href="booking-slider.html">Home page 7</a></li>
                            </ul>
                            <h4>Tour Packages</h4>
                            <ul>
                                <li><a href="all-package.html">All Package</a></li><li><a href="family-package.html">Family Package</a></li>
                                <li><a href="honeymoon-package.html">Honeymoon Package</a></li>
                                <li><a href="group-package.html">Group Package</a></li>
                                <li><a href="weekend-package.html">WeekEnd Package</a></li>
                                <li><a href="regular-package.html">Regular Package</a></li>
                                <li><a href="custom-package.html">Custom Package</a></li>
                            </ul>
                            <h4>Sighe Seeings Pages</h4>
                            <ul>
                                <li><a href="places.html">Seight Seeing 1</a></li>
                                <li><a href="places-1.html">Seight Seeing 2</a></li>
                                <li><a href="places-2.html">Seight Seeing 3</a></li>
                            </ul>
                            <h4>User Dashboard</h4>
                            <ul>
                                <li><a href="dashboard.html">My Bookings</a></li>
                                <li><a href="db-my-profile.html">My Profile</a></li>
                                <li><a href="db-my-profile-edit.html">My Profile edit</a></li>
                                <li><a href="db-travel-booking.html">Tour Packages</a></li>
                                <li><a href="db-hotel-booking.html">Hotel Bookings</a></li>
                                <li><a href="db-event-booking.html">Event bookings</a></li>
                                <li><a href="db-payment.html">Make Payment</a></li>
                                <li><a href="db-refund.html">Cancel Bookings</a></li>
                                <li><a href="db-all-payment.html">Prient E-Tickets</a></li>
                                <li><a href="db-event-details.html">Event booking details</a></li>
                                <li><a href="db-hotel-details.html">Hotel booking details</a></li>
                                <li><a href="db-travel-details.html">Travel booking details</a></li>
                            </ul>
                            <h4>Other pages:1</h4>
                            <ul>
                                <li><a href="tour-details.html">Travel details</a></li>
                                <li><a href="hotel-details.html">Hotel details</a></li>
                                <li><a href="all-package.html">All package</a></li><li><a href="hotels-list.html">All hotels</a></li>
                                <li><a href="booking.html">Booking page</a></li>
                            </ul>
                            <h4 class="ed-dr-men-mar-top">User login pages</h4>
                            <ul>
                                <li><a href="register.html">Register</a></li>
                                <li><a href="login.html">Login and Sign in</a></li>
                                <li><a href="forgot-pass-2.html">Forgot pass</a></li>
                            </ul>
                            <h4>Other pages:2</h4>
                            <ul>
                                <li><a href="about.html">About Us</a></li>
                                <li><a href="testimonials.html">Testimonials</a></li>
                                <li><a href="events.html">Events</a></li>
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="tips.html">Tips Before Travel</a></li>
                                <li><a href="price-list.html">Price List</a></li>
                                <li><a href="discount.html">Discount</a></li>
                                <li><a href="faq.html">FAQ</a></li>
                                <li><a href="sitemap.html">Site map</a></li>
                                <li><a href="404.html">404 Page</a></li>
                                <li><a href="contact.html">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--HEADER SECTION-->
    <section>
        <!-- TOP BAR -->
        <div class="ed-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="ed-com-t1-left">
                            <ul>
                                <li><a href="#">Contact:Navagam dindoli road udhna surat(guj)-394210</a>
                                </li>
                                <li><a href="#">Phone:9773410129</a>
                                </li>
                            </ul>
                        </div>
                        <div class="ed-com-t1-right">
                            <ul>
                                <li><a href="Sign_in.aspx">Sign In</a>
                                </li>
                                <li><a href="Sign_up.aspx">Sign Up</a>
                                </li>
                            </ul>
                        </div>
                   
                    </div>
                </div>
            </div>
        </div>

        <!-- LOGO AND MENU SECTION -->
        <div class="top-logo" data-spy="affix" data-offset-top="250">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="wed-logo">
                           <img src="images/sunshine (3).jfif" height="50px" width ="170px" alt="" />
                          
                        </div>
                        <div class="main-menu">
                            <ul>
                                <li><a href="Uhome.aspx">Home</a>
                                </li>
                                <li><a href="Domestic.aspx">Domestic</a></li>
                                <li><a href="international.aspx">International</a></li>
                                <li class="about-menu">
                               
                                    <!-- MEGA MENU 1 -->
                                    <div class="mm-pos">
                                        <div class="about-mm m-menu">
                                            <div class="m-menu-inn">
                                                <div class="mm1-com mm1-s1">
                                                    <div class="ed-course-in">
                                                        <a class="course-overlay menu-about" href="all-package.html">
                                                            <img src="images/sight/5.jpg" alt="">
                                                            <span>Popular Package</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="mm1-com mm1-s2">
                                                    <p>Want to change the world? At Berkeley we’re doing just that. When you join the Golden Bear community, you’re part of an institution that shifts the global conversation every single day.</p>
                                                    <a href="all-package.html" class="mm-r-m-btn">Read more</a>
                                                </div>
                                                <div class="mm1-com mm1-s3">
                                                    <ul>
                                                        <li><a href="booking-all.html">All Booking</a></li>
                                                        <li><a href="booking-tour-package.html">Tour Package Booking</a></li>
                                                        <li><a href="booking-hotel.html">Hotel Booking</a></li>
                                                        <li><a href="booking-car-rentals.html">Car Rentals Booking</a></li>
                                                        <li><a href="booking-flight.html">Flight Booking</a></li>
                                                        <li><a href="booking-slider.html">Slider Booking</a></li>
                                                    </ul>
                                                </div>
                                                <div class="mm1-com mm1-s4">
                                                    <ul>
                                                        <li><a href="all-package.html">All Package</a></li><li><a href="family-package.html">Family Package</a></li>
                                                        <li><a href="honeymoon-package.html">Honeymoon Package</a></li>
                                                        <li><a href="group-package.html">Group Package</a></li>
                                                        <li><a href="weekend-package.html">WeekEnd Package</a></li>
                                                        <li><a href="regular-package.html">Regular Package</a></li>
                                                        <li><a href="custom-package.html">Custom Package</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="admi-menu">
                                    
                                    <!-- MEGA MENU 1 -->
                                    <div class="mm-pos">
                                        <div class="admi-mm m-menu">
                                            <div class="m-menu-inn">
                                                <div class="mm2-com mm1-com mm1-s1">
                                                    <div class="ed-course-in">
                                                        <a class="course-overlay" href="places.html">
                                                            <img src="images/sight/1.jpg" alt="">
                                                            <span>Seight Seeing - 1</span>
                                                        </a>
                                                    </div>
                                                    <p>Donec lacus libero, rutrum ac sollicitudin sed, mattis non eros. Vestibulum congue nec eros quis lacinia. Mauris non tincidunt lectus. Nulla mollis, orci vitae accumsan rhoncus.</p>
                                                    <a href="places.html" class="mm-r-m-btn">Read more</a>
                                                </div>
                                                <div class="mm2-com mm1-com mm1-s1">
                                                    <div class="ed-course-in">
                                                        <a class="course-overlay" href="places-1.html">
                                                            <img src="images/sight/2.jpg" alt="">
                                                            <span>Seight Seeing - 2</span>
                                                        </a>
                                                    </div>
                                                    <p>Donec lacus libero, rutrum ac sollicitudin sed, mattis non eros. Vestibulum congue nec eros quis lacinia. Mauris non tincidunt lectus. Nulla mollis, orci vitae accumsan rhoncus.</p>
                                                    <a href="places-1.html" class="mm-r-m-btn">Read more</a>
                                                </div>
                                                <div class="mm2-com mm1-com mm1-s1">
                                                    <div class="ed-course-in">
                                                        <a class="course-overlay" href="places-2.html">
                                                            <img src="images/sight/3.jpg" alt="">
                                                            <span>Seight Seeing - 3</span>
                                                        </a>
                                                    </div>
                                                    <p>Donec lacus libero, rutrum ac sollicitudin sed, mattis non eros. Vestibulum congue nec eros quis lacinia. Mauris non tincidunt lectus. Nulla mollis, orci vitae accumsan rhoncus.</p>
                                                    <a href="places-2.html" class="mm-r-m-btn">Read more</a>
                                                </div>
                                                <div class="mm2-com mm1-com mm1-s4">
                                                    <div class="ed-course-in">
                                                        <a class="course-overlay" href="places-3.html">
                                                            <img src="images/sight/4.jpg" alt="">
                                                            <span>Seight Seeing - 4</span>
                                                        </a>
                                                    </div>
                                                    <p>Donec lacus libero, rutrum ac sollicitudin sed, mattis non eros. Vestibulum congue nec eros quis lacinia. Mauris non tincidunt lectus. Nulla mollis, orci vitae accumsan rhoncus.</p>
                                                    <a href="places-3.html" class="mm-r-m-btn">Read more</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </li>
                            
                                <!--<li><a class='dropdown-button ed-sub-menu' href='#' data-activates='dropdown1'>Courses</a></li>-->
                                <li class="cour-menu">
                                   
                                    <!-- MEGA MENU 1 -->
                                    <div class="mm-pos">
                                        <div class="cour-mm m-menu">
                                            <div class="m-menu-inn">
                                                <div class="mm1-com mm1-cour-com mm1-s3">
                                                    <h4>Home pages</h4>
                                                    <ul>
                                                        <li><a href="booking-all.html">Home page 1</a></li>
                                                        <li><a href="booking-all.html">Home page 2</a></li>
                                                        <li><a href="booking-tour-package.html">Home page 3</a></li>
                                                        <li><a href="booking-hotel.html">Home page 4</a></li>
                                                        <li><a href="booking-car-rentals.html">Home page 5</a></li>
                                                        <li><a href="booking-flight.html">Home page 6</a></li>
                                                        <li><a href="booking-slider.html">Home page 7</a></li>
                                                    </ul>
                                                </div>
                                                <div class="mm1-com mm1-cour-com mm1-s3">
                                                    <h4>Tour Packages</h4>
                                                    <ul>
                                                        <li><a href="all-package.html">All Package</a></li><li><a href="family-package.html">Family Package</a></li>
                                                        <li><a href="honeymoon-package.html">Honeymoon Package</a></li>
                                                        <li><a href="group-package.html">Group Package</a></li>
                                                        <li><a href="weekend-package.html">WeekEnd Package</a></li>
                                                        <li><a href="regular-package.html">Regular Package</a></li>
                                                        <li><a href="custom-package.html">Custom Package</a></li>
                                                    </ul>
                                                    <h4 class="ed-dr-men-mar-top">Sighe Seeings Pages</h4>
                                                    <ul>
                                                        <li><a href="places.html">Seight Seeing 1</a></li>
                                                        <li><a href="places-1.html">Seight Seeing 2</a></li>
                                                        <li><a href="places-2.html">Seight Seeing 3</a></li>
                                                    </ul>
                                                </div>
                                                <div class="mm1-com mm1-cour-com mm1-s3">
                                                    <h4>User Dashboard</h4>
                                                    <ul>
                                                        <li><a href="dashboard.html">My Bookings</a></li>
                                                        <li><a href="db-my-profile.html">My Profile</a></li>
                                                        <li><a href="db-my-profile-edit.html">My Profile edit</a></li>
                                                        <li><a href="db-travel-booking.html">Tour Packages</a></li>
                                                        <li><a href="db-hotel-booking.html">Hotel Bookings</a></li>
                                                        <li><a href="db-event-booking.html">Event bookings</a></li>
                                                        <li><a href="db-payment.html">Make Payment</a></li>
                                                        <li><a href="db-refund.html">Cancel Bookings</a></li>
                                                        <li><a href="db-all-payment.html">Prient E-Tickets</a></li>
                                                        <li><a href="db-event-details.html">Event booking details</a></li>
                                                        <li><a href="db-hotel-details.html">Hotel booking details</a></li>
                                                        <li><a href="db-travel-details.html">Travel booking details</a></li>
                                                    </ul>
                                                </div>
                                                <div class="mm1-com mm1-cour-com mm1-s3">
                                                    <h4>Other pages:1</h4>
                                                    <ul>
                                                        <li><a href="tour-details.html">Travel details</a></li>
                                                        <li><a href="hotel-details.html">Hotel details</a></li>
                                                        <li><a href="all-package.html">All package</a></li><li><a href="hotels-list.html">All hotels</a></li>
                                                        <li><a href="booking.html">Booking page</a></li>
                                                    </ul>
                                                    <h4 class="ed-dr-men-mar-top">User login pages</h4>
                                                    <ul>
                                                        <li><a href="register.html">Register</a></li>
                                                        <li><a href="login.html">Login and Sign in</a></li>
                                                        <li><a href="forgot-pass-2.html">Forgot pass</a></li>
                                                    </ul>
                                                </div>
                                                <div class="mm1-com mm1-cour-com mm1-s4">
                                                    <h4>Other pages:2</h4>
                                                    <ul>
                                                        <li><a href="about.html">About Us</a></li>
                                                        <li><a href="testimonials.html">Testimonials</a></li>
                                                        <li><a href="events.html">Events</a></li>
                                                        <li><a href="blog.html">Blog</a></li>
                                                        <li><a href="tips.html">Tips Before Travel</a></li>
                                                        <li><a href="price-list.html">Price List</a></li>
                                                        <li><a href="discount.html">Discount</a></li>
                                                        <li><a href="faq.html">FAQ</a></li>
                                                        <li><a href="sitemap.html">Site map</a></li>
                                                        <li><a href="404.html">404 Page</a></li>
                                                        <li><a href="contact.html">Contact Us</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="profile.aspx">Profile</a></li>
                                 <li><a href="passport.aspx">Passport</a></li>
                                 <li><a href="visadetails.aspx">Visa</a></li>
                                  <li><a href="Mailus.aspx">Mailus</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		
    </section>
    <!--END HEADER SECTION-->
	
	<!--DASHBOARD-->
	<section>
		<div class="tr-register">
			<div class="tr-regi-form v2-search-form">
				<h4>Book Your <span>Tour</span></h4>
				
				<form  runat="server">
                         <div class="row">
								<div class="input-field col s12">
									<%--<input type="text"  class="validate" name="name" required>--%>
                                    <asp:TextBox ID="txt_type" runat="server" class="validate" name="name" required=""></asp:TextBox>
									<label>tour type</label>
								</div>
							</div>
                            <div class="row">
								<div class="input-field col s12">
									<%--<input type="text"  class="validate" name="name" required>--%>
                                    <asp:TextBox ID="txt_pname" runat="server" class="validate" name="name" required=""></asp:TextBox>
									<label>place name</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<%--<input type="text"  class="validate" name="name" required>--%>
                                    <asp:TextBox ID="txt_uname" runat="server" class="validate" name="name" required=""></asp:TextBox>
									<label>User name</label>
								</div>
							</div>
                            <div class="row">
								<div class="input-field col s12">
									<%--<input type="text"  class="validate" name="name" required>--%>
                                    <asp:TextBox ID="txt_mobno" runat="server" type="number" class="validate" name="name" required=""></asp:TextBox>
									<label>phone no</label>
								</div>
							</div>
                             <div class="row">
								<div class="input-field col s12">
									<%--<input type="text"  class="validate" name="name" required>--%>
                                    <asp:TextBox ID="txt_email" runat="server" class="validate" name="email" required=""></asp:TextBox>
									<label>your email</label>
								</div>
							</div>
                            
                            <%--<div class="row">
						    <div class="input-field col s12">
									<select name="package">
										<option value="" disabled selected>Select your package</option>
										<option value="Honeymoon Package">Honeymoon Package</option>
										<option value="Family Package">Family Package</option>
										<option value="Holiday Package">Holiday Package</option>
										<option value="Group Package">Group Package</option>
										<option value="Regular Package">Regular Package</option>
									</select>
                                 <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" 
                                        DataTextField="pname" DataValueField="tdid"></asp:DropDownList>
							        
							        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [tour_details]"></asp:SqlDataSource>
							        
							</div>
                            </div>--%> 
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
							<div class="row">
								<div class="input-field col s6">
									<%--<input type="text" id="from" name="arrival" readonly>--%>
                                    <asp:TextBox ID="txt_arrivaldate" runat="server" name="arrival" readonly="false"></asp:TextBox>
                                    <asp:CalendarExtender ID="txt_arrivaldate_CalendarExtender" runat="server" 
                                        Enabled="True" TargetControlID="txt_arrivaldate">
                                    </asp:CalendarExtender>
                                    <label for="from">Arrival Date</label>
								</div>
								<div class="input-field col s6">
									<%--<input type="text" id="from" name="arrival" readonly>--%>
                                    <asp:TextBox ID="txt_departuredate" runat="server" name="departure" readonly="false" ></asp:TextBox>
									<asp:CalendarExtender ID="txt_departuredate_CalendarExtender" runat="server" 
                                        Enabled="True" TargetControlID="txt_departuredate">
                                    </asp:CalendarExtender>
									<label for="from">Departure Date</label>
								</div>
							</div>
                         
							<div class="row">
								<div class="input-field col s6">
									<%--<select name="noofadults">
										<option value="" disabled selected>No of adults</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
									</select>--%>
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                        <asp:ListItem Value="0">--No Of Adult--</asp:ListItem>
                                        <asp:ListItem Value="1">1</asp:ListItem>
                                        <asp:ListItem Value="2">2</asp:ListItem>
                                        <asp:ListItem Value="3">3</asp:ListItem>
                                        <asp:ListItem Value="4">4</asp:ListItem>
                                        <asp:ListItem Value="5">5</asp:ListItem>
                                        <asp:ListItem Value="6">6</asp:ListItem>
                                        <asp:ListItem Value="7">7</asp:ListItem>
                                        <asp:ListItem Value="8">8</asp:ListItem>
                                        <asp:ListItem Value="9">9</asp:ListItem>
                                        <asp:ListItem Value="10">10</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
								</div>
                               
								<div class="input-field col s6">
									<%--<input type="text" id="from" name="arrival" readonly>--%>
                                    <asp:TextBox ID="txt_price" runat="server" name="price"></asp:TextBox>
									<label for="from">price</label>
								</div>
                            
							</div>							
                         <div class="row">
								<div class="input-field col s12">
									<%--<input type="submit" value="Book Now" class="waves-effect waves-light tourz-sear-btn v2-ser-btn">--%>
                                    <asp:Button ID="btn_book" runat="server" Text="Book Now" 
                                        class="waves-effect waves-light tourz-sear-btn v2-ser-btn" 
                                        onclick="btn_book_Click"></asp:Button>
								</div>
							
                            </div> 
                            
						</form>
              </div>           
			</div>
		
	</section>
	<!--END DASHBOARD-->
	<!--====== TIPS BEFORE TRAVEL ==========-->

	<!--====== FOOTER 1 ==========-->
	<section>
		<div class="rows">
			<div class="footer1 home_title tb-space">
				<div class="pla1 container">
					<!-- FOOTER OFFER 1 -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="disco">
							<h3>30%<span>OFF</span></h3>
							<h4>Eiffel Tower,Rome</h4>
							<p>valid only for 24th Dec</p> <a href="booking.html">Book Now</a> </div>
					</div>
					<!-- FOOTER OFFER 2 -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="disco1 disco">
							<h3>42%<span>OFF</span></h3>
							<h4>Colosseum,Burj Al Arab</h4>
							<p>valid only for 18th Nov</p> <a href="booking.html">Book Now</a> </div>
					</div>
					<!-- FOOTER MOST POPULAR VACATIONS -->
					<div class="col-md-6 col-sm-12 col-xs-12 foot-spec footer_places">
						<h4><span>Most Popular</span> Vacations</h4>
						<ul>
							<li><a href="tour-details.html">Angkor Wat</a> </li>
							<li><a href="tour-details.html">Buckingham Palace</a> </li>
							<li><a href="tour-details.html">High Line</a> </li>
							<li><a href="tour-details.html">Sagrada Família</a> </li>
							<li><a href="tour-details.html">Statue of Liberty </a> </li>
							<li><a href="tour-details.html">Notre Dame de Paris</a> </li>
							<li><a href="tour-details.html">Taj Mahal</a> </li>
							<li><a href="tour-details.html">The Louvre</a> </li>
							<li><a href="tour-details.html">Tate Modern, London</a> </li>
							<li><a href="tour-details.html">Gothic Quarter</a> </li>
							<li><a href="tour-details.html">Table Mountain</a> </li>
							<li><a href="tour-details.html">Bayon</a> </li>
							<li><a href="tour-details.html">Great Wall of China</a> </li>
							<li><a href="tour-details.html">Hermitage Museum</a> </li>
							<li><a href="tour-details.html">Yellowstone</a> </li>
							<li><a href="tour-details.html">Musée d'Orsay</a> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--====== FOOTER 2 ==========-->
	<section>
		<div class="rows">
			<div class="footer">
				<div class="container">
					<div class="foot-sec2">
						<div>
							<div class="row">
								<div class="col-sm-3 foot-spec foot-com">
									<h4><span>Holiday</span> Tour & Travels</h4>
									<p>World's leading tour and travels Booking website,Over 30,000 packages worldwide.</p>
								</div>
								<div class="col-sm-3 foot-spec foot-com">
									<h4><span>Address</span> & Contact Info</h4>
									<p>Navagam dindoli road udhna surat(guj)-394210 Landmark : Next To Airport</p>
									<p> <span class="strong">Phone: </span> <span class="highlighted">+91-9773410129</span> </p>
								</div>
								<div class="col-sm-3 col-md-3 foot-spec foot-com">
									<h4><span>SUPPORT</span> & HELP</h4>
									<ul class="two-columns">
										<li> <a href="#">About Us</a> </li>
										<li> <a href="#">FAQ</a> </li>
										<li> <a href="#">Feedbacks</a> </li>
										<li> <a href="#">Blog </a> </li>
										<li> <a href="#">Use Cases</a> </li>
										<li> <a href="#">Advertise us</a> </li>
										<li> <a href="#">Discount</a> </li>
										<li> <a href="#">Vacations</a> </li>
										<li> <a href="#">Branding Offers </a> </li>
										<li> <a href="#">Contact Us</a> </li>
									</ul>
								</div>
								<div class="col-sm-3 foot-social foot-spec foot-com">
									<h4><span>Follow</span> with us</h4>
									<p>Join the thousands of other There are many variations of passages of Lorem Ipsum available</p>
									<ul>
										<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
										<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
										<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
										<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
										<li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--====== FOOTER - COPYRIGHT ==========-->
	<section>
		<div class="rows copy">
			<div class="container">
				<p>Copyrights © 2022 Sunshine travel. All Rights Reserved</p>
			</div>
		</div>
	</section>
	
	<!--========= Scripts ===========-->
	<script src="js/jquery-latest.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/materialize.min.js"></script>
	<script src="js/mail.js"></script>
	<script src="js/custom.js"></script>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/travelz/booking.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 18 Jun 2020 16:54:55 GMT -->
</html>