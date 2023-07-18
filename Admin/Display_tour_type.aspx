<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Display_tour_type.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>DISPLAY TOUR TYPE</h4>
                                </div>
                                <div class="tab-inn">
                                  <form  runat="server">
                        <div class="tab-inn">
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                         <HeaderTemplate >
                                        <div class="table-responsive table-desi">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>ttid</th>
                                                    <th>Tour Type</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                </tr>
                                            </thead>
                                            </div> 
                         </HeaderTemplate>
                         <ItemTemplate >
                                         <tr>
                                                <td><%#Eval("ttid")%></td>
                                                <td><%#Eval("tourtype")%></td>
                                                <td><i class="fa fa-pencil-square-o"><a href ='Edit_tour_type.aspx?ttid=<%#Eval("ttid")%>'>Edit</a></i></td>
                                                <td><i class="fa fa-trash-o"><a href ='Delete_tour_type.aspx?ttid=<%#Eval("ttid")%>'onclick="return confirm(&quot;Are you sure want to Delete?&quot;)">Delete</a></i></td>
                                         </tr> 
                                          
                         </ItemTemplate>
                         <FooterTemplate>
                         <tbody>
                         </tbody> 
                         </table>
                         </FooterTemplate>
                         </asp:Repeater> 
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             SelectCommand="SELECT * FROM [tour_type]"></asp:SqlDataSource>
                                 </div> 

                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>

