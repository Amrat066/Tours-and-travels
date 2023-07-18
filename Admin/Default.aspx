<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="sb2-2-2">
                    <ul>
                        <li><a href="index.html"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                        </li>
                        <li class="active-bre"><a href="#">Default</a>
                        </li>

                        <li class="active-bre"><a href="#">Default1</a>
                        </li>
                      
                    </ul>
 </div>
 <div class="ad-v2-hom-info">
					<div class="ad-v2-hom-info-inn">
						<ul>
                           <li>
								<div class="ad-hom-box ad-hom-box-1">
									<span class="ad-hom-col-com ad-hom-col-1"><i class="fa fa-bar-chart"></i></span>
									<div class="ad-hom-view-com">
									<p><i class="fa  fa-arrow-up up"></i> Tour Details</p>
									<h3>
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h3>
									</div>
								</div>
							</li>
							
							
							<li>
								<div class="ad-hom-box ad-hom-box-2">
									<span class="ad-hom-col-com ad-hom-col-2"><i class="fa fa-address-card-o"></i></span>
									<div class="ad-hom-view-com">
									<p><i class="fa  fa-arrow-up up"></i>Total User</p>
									<h3>
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3>
									</div>
								</div>
							</li>

                           
							
							
						</ul>
					</div>
                </div>
</asp:Content>

