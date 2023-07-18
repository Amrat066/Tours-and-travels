<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_hotel_details.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                <h4>EDIT HOTEL DETAILS</h4>
                                </div>
                                <div class="tab-inn">
                                    <form id="Form1"  runat="server">
                                    <div class="row">
                                              <div class="input-field col s12">
                                              <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" 
                                               DataTextField="pname" DataValueField="tdid">
                                              </asp:DropDownList> 
                                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                      SelectCommand="SELECT * FROM [tour_details]"></asp:SqlDataSource>
                                               <label for="Tour details">Select Place Name</label> 
                                               </div> 
                                    </div> 
                                    <div class="row">
                                                <div class="input-field col s12">
                                                  <%--<input id="Hotel Name" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_hname" runat="server" class="validate"></asp:TextBox>
                                                 <label for="hotel name">Hotel Name</label>
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
                                                 <%--<input id="Location" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_location" runat="server" class="validate"></asp:TextBox>
                                                 <label for="location name">Location</label>
                                                </div> 
                                     </div>   
                                     <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<input id="hotel type" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_htype" runat="server" class="validate"></asp:TextBox>
                                                 <label for="hotel type">Hotel type</label>
                                                 </div>
                                    </div>  
                                     <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<input id="mobno" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_mobno" runat="server" class="validate" required=""></asp:TextBox>
                                                 <label for="hotel type">Mobile no</label>
                                                 </div>
                                    </div>   
                                     <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<input id="price" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_price" runat="server" class="validate" required=""></asp:TextBox>
                                                 <label for="hotel type">price</label>
                                                 </div>
                                    </div>    
                                    <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<a class="waves-effect waves-light btn-large btn-log-in" href="index.html">Login</a>--%>
                                                <asp:Button ID="btn_update" runat="server" Text="Update" 
                                                         class="waves-effect waves-light btn-large btn-log-in" 
                                                         onclick="btn_update_Click"/>
                                                </div>
                                    </div>
                </form> 
                </div> 
                </div> 
                </div> 
                </div> 
                </div>
</asp:Content>

