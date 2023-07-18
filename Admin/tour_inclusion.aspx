<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="tour_inclusion.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                <h4>ADD TOUR INCLUSION</h4>    
                                </div>
                                <div class="tab-inn">
                                    <form id="Form1"  runat="server">
                                    <div class="row">
                                              <div class="input-field col s12">
                                                  <asp:DropDownList ID="DropDownList1" runat="server" 
                                                      DataSourceID="SqlDataSource1" DataTextField="pname" DataValueField="tdid">
                                                  </asp:DropDownList>
                                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                      SelectCommand="SELECT * FROM [tour_details]"></asp:SqlDataSource>
                                                <label for="place name">Select Place Name </label> 
                                                </div> 
                                    </div> 
                              
                                     <div class="row">
                                                 <div class="input-field col s12">
                                                 <%--<input id="inclusion" type="text" class="validate">--%>
                                                 <asp:TextBox ID="txt_inclusion" runat="server" class="validate" required=""></asp:TextBox>
                                                 <label for="inclusion">Inclusion</label>
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

