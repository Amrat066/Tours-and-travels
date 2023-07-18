<%@ Page Title="" Language="C#" MasterPageFile="~/User_master/MasterPage2.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="User_master_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
	<div class="db-2">
				<div class="db-2-com db-2-main">
					<h4>My Profile</h4>
					<div class="db-2-main-com db-2-main-com-table">
						<table class="responsive-table">
							<tbody>
								<tr>
									<td>User Name</td>
									<td>:</td>
									<td><asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></td>
								</tr>
								<tr>
									<td>Email</td>
									<td>:</td>
									<td><asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label></td>
								</tr>
								<tr>
									<td>Password</td>
									<td>:</td>
									<td><asp:Label ID="lblpass" runat="server" Text="Label"></asp:Label></td>
								</tr>
								<tr>
									<td>Mobile no</td>
									<td>:</td>
									<td><asp:Label ID="lblmobno" runat="server" Text="Label"></asp:Label></td>
								</tr>
								
								<tr>
									<td>Status</td>
									<td>:</td>
									<td><span class="db-done">Active</span>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="db-mak-pay-bot">
							<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters</p> <%--<a href="db-my-profile-edit.html" class="waves-effect waves-light btn-large">Edit my profile</a>--%>
                            <asp:Button ID="btn_submit" runat="server" Text="Edit My Profile" 
                                class="waves-effect waves-light btn-large" onclick="btn_submit_Click" />
                             </div>

					</div>
				</div>
			</div>
</form> 
</asp:Content>

