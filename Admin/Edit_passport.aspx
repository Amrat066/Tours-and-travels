<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_passport.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                             <div class="inn-title">
                             <h4>EDIT PASSPORT DETAILS</h4>
                             </div>
                                <div class="tab-inn">
                                    <form id="Form1" runat="server">
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <%--<input id="number" type="text" class="validate">--%>
                                                <asp:TextBox ID="txt_no" runat="server" class="validate"></asp:TextBox>
                                                <label for="number">No</label> 
                                            </div>
                                          
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <%--<input id="details" type="text" class="validate">--%>
                                                <asp:TextBox ID="txt_details" runat="server" class="validate"></asp:TextBox>
                                                <label for="details">Details</label> 
                                            </div>
                                          
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <%--<input id="requiredfor" type="text" class="validate">--%>
                                                <asp:TextBox ID="txt_requirefor" runat="server" class="validate"></asp:TextBox>
                                                <label for="requirefor">Requiredfor</label> 
                                            </div>
                                          
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                               <%-- <input type="update" class="waves-effect waves-light btn-large">--%>
                                                <asp:Button ID="btn_update" runat="server" Text="Update" 
                                                    class="waves-effect waves-light btn-large" onclick="btn_update_Click"/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>

