<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Display_tour_exclusion.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>DISPLAY TOUR EXCLUSION</h4>
                                </div>
                                <div class="tab-inn">
                          <form id="Form1"  runat="server">
                        <div class="tab-inn">
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                         <HeaderTemplate >
                                        <div class="table-responsive table-desi">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>eid</th>
                                                    <th>tdid</th>
                                                    <th>exclusion</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                    
                                                </tr>
                                            </thead>
                                            </div> 
                         </HeaderTemplate>
                         <ItemTemplate >
                                         <tr>
                                                <td><%#Eval("eid")%></td>
                                                <td><%#Eval("tdid")%></td>
                                                <td><%#Eval("exclusion")%></td>
                                                <td><i class="fa fa-pencil-square-o"><a href ='Edit_tour_exclusion.aspx?eid=<%#Eval("eid")%>'>Edit</a></i></td>
                                                <td><i class="fa fa-trash-o"><a href ='Delete_tour_exclusion.aspx?eid=<%#Eval("eid")%>'onclick="return confirm(&quot;Are you sure want to Delete?&quot;)">Delete</a></i></td>
                                                

                                         </tr> 
                                          
                         </ItemTemplate>
                         <FooterTemplate>
                         <tbody>
                         </tbody> 
                         </table>
                         </FooterTemplate>
                         </asp:Repeater>
                            
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [tour_exclusion]"></asp:SqlDataSource>
                            
                            
                            
                         </div>  
                         </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>

