<%@ Page Title="" Language="C#" MasterPageFile="~/User_master/MasterPage.master" AutoEventWireup="true" CodeFile="Uhome.aspx.cs" Inherits="User_master_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
<section>
		<div class="rows inn-page-bg com-colo">
			<div class="container inn-page-con-bg tb-space pad-bot-redu" id="inner-page-title">
				<!-- TITLE & DESCRIPTION -->
				<div class="spe-title col-md-10">
					<center><h2>Top <span>Sight Seeings</span></h2></center> 
					<div class="title-line">
						<div class="tl-1"></div>
						<div class="tl-2"></div>
						<div class="tl-3"></div>
					</div>
                           <p>World's leading tour and travels Booking website,Over 30,000 packages worldwide. Book travel packages and enjoy your holidays with distinctive experience.</p>
				   </div> 
				<div>
					<!--====== PACKAGE ==========-->
					
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-md-3 col-sm-6 col-xs-12 b_packages">
						<div class="band"><img src="images/band.png" alt="" /></div>
						<div class="v_place_img"><a href="tour_details1.aspx?tdid=<%#Eval("tdid")%>"><img src='../image/<%#Eval("image")%>' height="170px" width="200px" alt="Tour Booking" title="Tour Booking"/></a> </div>
						<div class="b_pack rows">
						 <div class="col-md-12">
								<h4><a href="tour_details1.aspx?tdid=<%#Eval("tdid")%>"><%#Eval("pname")%><span class="v_pl_name"></span></a></h4> </div>
						</div>
					</div>
                    </ItemTemplate>
                    </asp:Repeater>
                    
				
	                	<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [tour_details]"></asp:SqlDataSource>
				
					<!--====== Use clearfix div after 8th place ========-->
					<div class="clearfix"></div>
					<!--====== Use clearfix div after 8th place ========-->
				
					<!--====== Use clearfix div after 8th place ========-->
					<div class="clearfix"></div>
					<!--====== Use clearfix div after 8th place ========-->
				
				</div>
			</div>
		</div>
	</section>
    </form>
</asp:Content>

