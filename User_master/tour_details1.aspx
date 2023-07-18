<%@ Page Title="" Language="C#" MasterPageFile="~/User_master/MasterPage.master" AutoEventWireup="true" CodeFile="tour_details1.aspx.cs" Inherits="User_master_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


	<form id="form1" runat="server">


	<!--====== TOUR DETAILS - BOOKING ==========-->
	<section>
		
        <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSource6" 
        onitemcommand="Repeater6_ItemCommand">
        <ItemTemplate >
             <div class="rows banner_book" id="inner-page-title">
			<div class="container">
				<div class="banner_book_1">
					<ul>
						<li class="dl1">Location : <%#Eval("pname")%></li>
						<li class="dl2">Price : <%#Eval("price")%></li>
						<li class="dl3">Duration : <%#Eval("days") %></li>
						<li class="dl4"><a href='tour_booking.aspx?ttid=<%#Eval("ttid") %>&tdid=<%#Eval("tdid") %>'>Book Now</a> </li>
					</ul>
				</div>
			</div>
		</div>
        </ItemTemplate>
        </asp:Repeater>


	<asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tour_details] WHERE ([tdid] = @tdid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="tdid" QueryStringField="tdid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


	</section>
	<!--====== TOUR DETAILS ==========-->
	<section>
		<div class="rows inn-page-bg com-colo">
			<div class="container inn-page-con-bg tb-space">
				<div class="col-md-9">
					<!--====== TOUR TITLE ==========-->
					
                    <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource5">
                    <ItemTemplate >
                    <div class="tour_head">
		            <h2><u>The best of <%#Eval("pname")%><span class="tour_star"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></span><span class="tour_rat">4.5</span></u></h2> 
                 </div>
                    </ItemTemplate>
                    </asp:Repeater>

					<asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [pname] FROM [tour_details] WHERE ([tdid] = @tdid)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="tdid" QueryStringField="tdid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

					<!--====== TOUR DESCRIPTION ==========-->
				
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                    <ItemTemplate>
                    <div class="tour_head1"><h3>Description</h3><%#Eval("description")%>
					</div>
                  </ItemTemplate> 
                  </asp:Repeater>
                  
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT [description] FROM [tour_details] WHERE ([tdid] = @tdid)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="tdid" QueryStringField="tdid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                  

					<!--====== ROOMS: HOTEL BOOKING ==========-->
					<div class="tour_head1 hotel-book-room">
						<h3>Photo Gallery</h3>
						<div id="myCarousel1" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators carousel-indicators-1">
								<li data-target="#myCarousel1" data-slide-to="0"><img src="images/gallery/t1.jpg" alt="Chania">
								</li>
								<li data-target="#myCarousel1" data-slide-to="1"><img src="images/gallery/t2.jpg" alt="Chania">
								</li>
								<li data-target="#myCarousel1" data-slide-to="2"><img src="images/gallery/t3.jpg" alt="Chania">
								</li>
								<li data-target="#myCarousel1" data-slide-to="3"><img src="images/gallery/t4.jpg" alt="Chania">
								</li>
								<li data-target="#myCarousel1" data-slide-to="4"><img src="images/gallery/t5.jpg" alt="Chania">
								</li>
								<li data-target="#myCarousel1" data-slide-to="5"><img src="images/gallery/s6.jpg" alt="Chania">
								</li>
								<li data-target="#myCarousel1" data-slide-to="6"><img src="images/gallery/s7.jpg" alt="Chania">
								</li>
								<li data-target="#myCarousel1" data-slide-to="7"><img src="images/gallery/s8.jpg" alt="Chania">
								</li>
								<li data-target="#myCarousel1" data-slide-to="8"><img src="images/gallery/s9.jpg" alt="Chania">
								</li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner carousel-inner1" role="listbox">
								<div class="item active"> <img src="images/gallery/t1.jpg" alt="Chania" width="460" height="345"> </div>
								<div class="item"> <img src="images/gallery/t2.jpg" alt="Chania" width="460" height="345"> </div>
								<div class="item"> <img src="images/gallery/t3.jpg" alt="Chania" width="460" height="345"> </div>
								<div class="item"> <img src="images/gallery/t4.jpg" alt="Chania" width="460" height="345"> </div>
								<div class="item"> <img src="images/gallery/t5.jpg" alt="Chania" width="460" height="345"> </div>
								<div class="item"> <img src="images/gallery/t6.jpg" alt="Chania" width="460" height="345"> </div>
								<div class="item"> <img src="images/gallery/t7.jpg" alt="Chania" width="460" height="345"> </div>
								<div class="item"> <img src="images/gallery/t8.jpg" alt="Chania" width="460" height="345"> </div>
								<div class="item"> <img src="images/gallery/t9.jpg" alt="Chania" width="460" height="345"> </div>
							</div>
							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel1" role="button" data-slide="prev"> <span><i class="fa fa-angle-left hotel-gal-arr" aria-hidden="true"></i></span> </a>
							<a class="right carousel-control" href="#myCarousel1" role="button" data-slide="next"> <span><i class="fa fa-angle-right hotel-gal-arr hotel-gal-arr1" aria-hidden="true"></i></span> </a>
						</div>
					</div>

					
					<!--====== TOUR LOCATION ==========-->
			        
                     <div class="tour_head1 tout-map map-container">
				     <h3>Location</h3>
                    <asp:Repeater ID="Repeater7" runat="server" DataSourceID="SqlDataSource7">
                    <ItemTemplate >
                   
						<div>
                        <iframe width="500" height="400" frameborder="0" src='<%#Eval("location")%>' scrolling="no">
                        </iframe>
                        </div> 
					
                    </ItemTemplate>
                    
                    </asp:Repeater>
                         <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             SelectCommand="SELECT [location] FROM [tour_details] WHERE ([tdid] = @tdid)">
                             <SelectParameters>
                                 <asp:QueryStringParameter Name="tdid" QueryStringField="tdid" Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                    </div>

					<!--====== ABOUT THE TOUR ==========-->
                    <div class="tour_head1">
                    <h3>About Inclusion</h3>
                     <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                     <ItemTemplate >
                                <div>
                                <br/><th class="event-res"><i class="fa fa-check" aria-hidden="true"></i></th><%#Eval ("inclusion")%>
                                </div>

                     </ItemTemplate>
                    </asp:Repeater>
                     </div> 
					<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [inclusion] FROM [tour_inclusion] WHERE ([tdid] = @tdid)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="tdid" QueryStringField="tdid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
						


                     <div class="tour_head1">
					 <h3>About Exclusion</h3>
                    <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate >
                                <div>
                                <br/><th class="event-res"><i class="fa fa-check" aria-hidden="true"></i></th><%#Eval("exclusion")%>
                                </div>	
                    </ItemTemplate>
                    </asp:Repeater>
                    </div> 
                         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             SelectCommand="SELECT [exclusion] FROM [tour_exclusion] WHERE ([tdid] = @tdid)">
                             <SelectParameters>
                                 <asp:QueryStringParameter Name="tdid" QueryStringField="tdid" Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                    
                                
								
								
								
							
							
					<!--====== DURATION ==========-->
					<div class="tour_head1 l-info-pack-days days">
				    <h3>Detailed Day Wise Itinerary</h3>
					 <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4">
                        <ItemTemplate>
                             <ul>
							<li class="l-info-pack-plac"> <i class="fa fa-clock-o" aria-hidden="true"></i>
								<h4><span><b>Day : </b></span><%#Eval ("day") %></h4><%#Eval ("description") %>
					        </li>
                        </ul>
                        </ItemTemplate>
                        </asp:Repeater>
							
					    
					    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [day], [description] FROM [tour_itinerary] WHERE ([tdid] = @tdid)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="tdid" QueryStringField="tdid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
							
					    
					</div>
                   
                 
					<div>
						<div class="dir-rat">
							<div class="dir-rat-inn dir-rat-title">
								<h3>Write Your Rating Here</h3>
								<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text</p>
								<fieldset class="rating">
									<input type="radio" id="star5" name="rating" value="5" />
									<label class="full" for="star5" title="Awesome - 5 stars"></label>
									<input type="radio" id="star4half" name="rating" value="4 and a half" />
									<label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
									<input type="radio" id="star4" name="rating" value="4" />
									<label class="full" for="star4" title="Pretty good - 4 stars"></label>
									<input type="radio" id="star3half" name="rating" value="3 and a half" />
									<label class="half" for="star3half" title="Meh - 3.5 stars"></label>
									<input type="radio" id="star3" name="rating" value="3" />
									<label class="full" for="star3" title="Meh - 3 stars"></label>
									<input type="radio" id="star2half" name="rating" value="2 and a half" />
									<label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
									<input type="radio" id="star2" name="rating" value="2" />
									<label class="full" for="star2" title="Kinda bad - 2 stars"></label>
									<input type="radio" id="star1half" name="rating" value="1 and a half" />
									<label class="half" for="star1half" title="Meh - 1.5 stars"></label>
									<input type="radio" id="star1" name="rating" value="1" />
									<label class="full" for="star1" title="Sucks big time - 1 star"></label>
									<input type="radio" id="starhalf" name="rating" value="half" />
									<label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
								</fieldset>
							</div>
							<div class="dir-rat-inn">
									<div class="form-group col-md-6 pad-left-o">
										<input type="text" class="form-control" id="email11" placeholder="Enter Name"> </div>
									<div class="form-group col-md-6 pad-left-o">
										<input type="number" class="form-control" id="email12" placeholder="Enter Mobile"> </div>
									<div class="form-group col-md-6 pad-left-o">
										<input type="email" class="form-control" id="email13" placeholder="Enter Email id"> </div>
									<div class="form-group col-md-6 pad-left-o">
										<input type="text" class="form-control" id="email14" placeholder="Enter your City"> </div>
									<div class="form-group col-md-12 pad-left-o">
										<textarea placeholder="Write your message"></textarea>
									</div>
									<div class="form-group col-md-12 pad-left-o">
										<input type="submit" value="SUBMIT" class="link-btn"> </div>
							</div>
							<!--COMMENT RATING-->
							<div class="dir-rat-inn dir-rat-review">
								<div class="row">
									<div class="col-md-3 dir-rat-left"> <img src="images/reviewer/4.jpg" alt="">
										<p>Orange Fab & Weld <span>19th January, 2017</span> </p>
									</div>
									<div class="col-md-9 dir-rat-right">
										<div class="dir-rat-star"> <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i> </div>
										<p>Michael & his team have been helping us with our eqiupment finance for the past 5 years - I think that says a quite a lot.. Michael is always ready to go the extra mile, always available, always helpfull that goes the same for his team that work with him - definatley our first phone call.</p>
										<ul>
											<li><a href="#"><span>Like</span><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Dis-Like</span><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Report</span> <i class="fa fa-flag-o" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Comments</span> <i class="fa fa-commenting-o" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Share Now</span>  <i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
											<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
											<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
											<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
											<li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
										</ul>
									</div>
								</div>
							</div>
							<!--COMMENT RATING-->
							<div class="dir-rat-inn dir-rat-review">
								<div class="row">
									<div class="col-md-3 dir-rat-left"> <img src="images/reviewer/3.jpg" alt="">
										<p>Orange Fab & Weld <span>19th January, 2017</span> </p>
									</div>
									<div class="col-md-9 dir-rat-right">
										<div class="dir-rat-star"> <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i> </div>
										<p>Michael & his team have been helping us with our eqiupment finance for the past 5 years - I think that says a quite a lot.. Michael is always ready to go the extra mile, always available, always helpfull that goes the same for his team that work with him - definatley our first phone call.</p>
										<ul>
											<li><a href="#"><span>Like</span><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Dis-Like</span><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Report</span> <i class="fa fa-flag-o" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Comments</span> <i class="fa fa-commenting-o" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Share Now</span>  <i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
											<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
											<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
											<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
											<li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
										</ul>
									</div>
								</div>
							</div>
							<!--COMMENT RATING-->
							<div class="dir-rat-inn dir-rat-review">
								<div class="row">
									<div class="col-md-3 dir-rat-left"> <img src="images/reviewer/1.jpg" alt="">
										<p>Orange Fab & Weld <span>19th January, 2017</span> </p>
									</div>
									<div class="col-md-9 dir-rat-right">
										<div class="dir-rat-star"> <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i> </div>
										<p>Michael & his team have been helping us with our eqiupment finance for the past 5 years - I think that says a quite a lot.. Michael is always ready to go the extra mile, always available, always helpfull that goes the same for his team that work with him - definatley our first phone call.</p>
										<ul>
											<li><a href="#"><span>Like</span><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Dis-Like</span><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Report</span> <i class="fa fa-flag-o" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Comments</span> <i class="fa fa-commenting-o" aria-hidden="true"></i></a> </li>
											<li><a href="#"><span>Share Now</span>  <i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
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
				<div class="col-md-3 tour_r">
					<!--====== SPECIAL OFFERS ==========-->
					
                    <asp:Repeater ID="Repeater9" runat="server" DataSourceID="SqlDataSource9">
                    <ItemTemplate >
                    
                        <div class="tour_right tour_offer">
						<div class="band1"><img src="images/offer.png" alt="" title="" /> </div>
						<p>Special Offer</p>
						<h4><%#Eval("price")%><span class="n-td">
						    <span class="n-td-1"><%#Eval("discount")%></span>
							</h4><a href="tour_booking.aspx" class="link-btn">Book Now</a>
                    </ItemTemplate>
                    
                    </asp:Repeater>
                     </div> 
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [price], [discount] FROM [tour_details] WHERE ([tdid] = @tdid)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="tdid" QueryStringField="tdid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                   
                       
					<!--====== TRIP INFORMATION ==========-->
					<div class="tour_right tour_incl tour-ri-com">
			        <h3>Trip Information</h3>
                    <asp:Repeater ID="Repeater8" runat="server" DataSourceID="SqlDataSource8">
                    <ItemTemplate>
                       
						<ul>
							<li>Location : <%#Eval("pname")%></li>
							<li>Best time: <%#Eval("best_time")%></li>
							<li>Free Sightseeing & Hotel</li>
						</ul>
					</div>
                                
                    </ItemTemplate>
                    </asp:Repeater>
					    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [pname], [best_time] FROM [tour_details] WHERE ([tdid] = @tdid)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="tdid" QueryStringField="tdid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
					<!--====== PACKAGE SHARE ==========-->
				  <div class="tour_right head_right tour_social tour-ri-com">
						<h3>Chat With Us</h3>
						<ul>
							
							<li><button type="button" class="btn btn-primary"><i class="fa fa-whatsapp" aria-hidden="true"></i><a href="https://wa.me/919773410129"<a href="#" style="color:white"><b>WhatsApp</b> </a></a></button>&nbsp; <button type="button" class="btn btn-success"><i class="fa fa-google-plus" aria-hidden="true"></i><a href="mailto:nottymanish2000@gmail.com"<a href="#" style="color:white"><b>Email</b></a></button>
                            </li>
						</ul>
				 </div>
                    <div class="tour_right head_right tour_social tour-ri-com">
						<h3>See the details of hotels</h3><br/>
					<%--<center><a href="hotelinfo.aspx" class="link-btn">Click here</a></center>--%>

                    <center><asp:Button ID="Button1" runat="server" class="link-btn" Text="Click here" onclick="Button1_Click"></asp:Button></center>
					</div>
					<!--====== HELP PACKAGE ==========-->
					<div class="tour_right head_right tour_help tour-ri-com">
						<h3>Help & Support</h3>
						<div class="tour_help_1">
							<h4 class="tour_help_1_call">Call Us Now</h4>
							<h4><i class="fa fa-phone" aria-hidden="true"></i>9773410129</h4> </div>
					</div>
					<!--====== PUPULAR TOUR PACKAGES ==========-->
					<%--<div class="tour_right tour_rela tour-ri-com">
						<h3>Popular Packages</h3>
						<div class="tour_rela_1"> <img src="images/related1.png" alt="" />
							<h4>Dubai 7Days / 6Nights</h4>
							<p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p> <a href="#" class="link-btn">View this Package</a> </div>
						<div class="tour_rela_1"> <img src="images/related2.png" alt="" />
							<h4>Mauritius 4Days / 3Nights</h4>
							<p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p> <a href="#" class="link-btn">View this Package</a> </div>
						<div class="tour_rela_1"> <img src="images/related3.png" alt="" />
							<h4>India 14Days / 13Nights</h4>
							<p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p> <a href="#" class="link-btn">View this Package</a> </div>
					</div>--%>
				</div>
			</div>
		</div>
	</section>
	
	
    </form>
	
	
</asp:Content>

