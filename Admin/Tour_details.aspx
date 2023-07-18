﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Tour_details.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                <h4>ADD TOUR DETAILS</h4>
                                </div>
                                <div class="tab-inn">
                                    <form id="Form1"  runat="server">
                                    <div class="row">
                                              <div class="input-field col s12">
                                              <asp:DropDownList ID="DropDownList1" runat="server"
                                              DataSourceID="SqlDataSource1" DataTextField="tourtype" DataValueField="ttid">
                                               </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [tour_type]"></asp:SqlDataSource>
                                                <label for="Tour Type">SELECT TOUR TYPE</label> 
                                                </div> 
                                    </div> 
                                    <div class="row">
                                                <div class="input-field col s12">
                                                  <%--<input id="Place Name" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_pname" runat="server" class="validate" required=""></asp:TextBox>
                                                 <label for="place name">Place Name</label>
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
                                                 <%--<input id="Days" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_days" runat="server" class="validate" required=""></asp:TextBox>
                                                 <label for="Days Name">Days</label>
                                                </div> 
                                     </div>   
                                     <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<input id="description" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_desc" runat="server" class="validate" required=""></asp:TextBox>
                                                 <label for="description">Description</label>
                                                 </div>
                                    </div>   
                                    <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<input id="price" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_price" runat="server" class="validate" required=""></asp:TextBox>
                                                 <label for="description">Price</label>
                                                 </div>
                                    </div> 
                                    <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<input id="price" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_discount" runat="server" class="validate" required=""></asp:TextBox>
                                                 <label for="discount">Discount</label>
                                                 </div>
                                    </div> 
                                    <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<input id="location" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_location" runat="server" class="validate" required=""></asp:TextBox>
                                                 <label for="location">location</label>
                                                 </div>
                                    </div> 
                                     <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<input id="location" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_time" runat="server" class="validate" required=""></asp:TextBox>
                                                 <label for="best time">Best time</label>
                                                 </div>
                                    </div> 
                                    <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<a class="waves-effect waves-light btn-large btn-log-in" href="index.html">Login</a>--%>
                                                 <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                                                 class="waves-effect waves-light btn-large btn-log-in" 
                                                 onclick="btn_submit_Click"/>
                                                </div>
                                    </div>
                </form> 
                </div> 
                </div> 
                </div> 
                </div> 
                </div>
                
              
                
</asp:Content>

