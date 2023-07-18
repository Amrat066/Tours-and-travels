<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Tour_Type.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>ADD TOUR TYPE</h4>
                                </div>
                                <div class="tab-inn">
                                    <form runat="server">
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <%--<input id="first_name" type="text" class="validate">--%>
                                                <asp:TextBox ID="txt_ttype" runat="server" class="validate" required=""></asp:TextBox>
                                                <label for="Tour type">ENTER TOUR TYPE</label> 
                                            </div>
                                          
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                               <%-- <input type="submit" class="waves-effect waves-light btn-large">--%>
                                                <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                                                    class="waves-effect waves-light btn-large" onclick="btn_submit_Click1"/>
                                            </div>
                                           
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>

