<%@ Page Title="" Language="C#" MasterPageFile="~/User_master/MasterPage2.master" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Inherits="User_master_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="db-2">
				<div class="db-2-com db-2-main">
					<h4>Edit My Profile </h4>
					<div class="db-2-main-com db2-form-pay db2-form-com">
						<form runat="server" class="col s12">
							<div class="row">
								<div class="input-field col s12">
									<%--<input type="number" class="validate">--%>
                                    <asp:TextBox ID="txt_name" runat="server"  required="" class="validate"></asp:TextBox>
									<label>User Name</label>
								</div>
                            </div> 
                              <div class="row">
								  <div class="input-field col s12">
									<%--<input type="number" class="validate">--%>
                                    <asp:TextBox ID="txt_email" runat="server"  required="" class="validate"></asp:TextBox>
									<label>Email</label>
								  </div>
					        </div> 	
                            <div class="row">
								  <div class="input-field col s12">
									<%--<input type="number" class="validate">--%>
                                    <asp:TextBox ID="txt_pass" runat="server"  required="" class="validate"></asp:TextBox>
									<label>Password</label>
								  </div>
					        </div> 	
                              <div class="row">
								  <div class="input-field col s12">
									<%--<input type="number" class="validate">--%>
                                    <asp:TextBox ID="txt_mobno" runat="server"  required="" class="validate"></asp:TextBox>
									<label>Mobile no</label>
								  </div>
					        </div> 	
							 <div class="row">
                                                <div class="input-field col s12">
                                                  <%--<input id="image" type="text" class="validate">--%>
                                                <%-- <asp:TextBox ID="TextBox1" runat="server" class="validate"></asp:TextBox>--%>
                                                 <asp:FileUpload ID="FileUpload1" runat="server" />
                                                 <asp:Image ID="Image1" runat="server"/><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                 </div>
                                  </div>      
							<div class="row">
								<div class="input-field col s12">
									<%--<input type="submit" value="SUBMIT" class="waves-effect waves-light full-btn"> --%>
                                    <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                                        class="waves-effect waves-light full-btn" onclick="btn_submit_Click"/>
                                    </div>
							</div>
						</form>
					</div>
				</div>
			</div>
            </div> 
</asp:Content>

