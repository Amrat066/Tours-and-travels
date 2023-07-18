<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_tour_type.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                <h4>EDIT TOUR TYPE</h4>
                                </div>
                                <div class="tab-inn">
                                   <form id="Form1" runat ="server">
                    <div class="row">
                    <div class="input-field col s12">
                        <%--<input id="TOUR TYPE" type="text" class="validate">--%>
                        <asp:TextBox ID="txt_ttype" runat="server" class="validate"></asp:TextBox>
                        <label for="TOUR TYPE">Enter Tour Type</label>
                    </div>
                    </div>
                    <div class="row">
                    <div class="input-field col s12">
                        <%--<a class="waves-effect waves-light btn-large btn-log-in" href="index.html">Submit</a>--%>
                        <asp:Button ID="btn_update" runat="server" Text="update" 
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

