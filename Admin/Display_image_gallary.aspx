<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Display_image_gallary.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>DISPLAY IMAGE GALLARY</h4>
                                </div>
                                <div class="tab-inn">
                          <form id="Form1"  runat="server">
                        <div class="tab-inn">
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                         <HeaderTemplate >
                                        <div class="table-responsive table-desi">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>igid</th>
                                                    <th>tdid</th>
                                                    <th>tour images</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                    
                                                </tr>
                                            </thead>
                                            </div> 
                         </HeaderTemplate>
                         <ItemTemplate >
                                         <tr>
                                                <td><%#Eval("igid")%></td>
                                                <td><%#Eval("tdid")%></td>
                                                <td><img alt="" src='../timages/<%#Eval("tour_image")%>' height="190px" width="220px"/></td>
                                                <td><i class="fa fa-pencil-square-o"><a href ='Edit_image_gallary.aspx?igid=<%#Eval("igid")%>'>Edit</a></i></td>
                                                <td><i class="fa fa-trash-o"><a href ='Delete_image_gallary.aspx?igid=<%#Eval("igid")%>'onclick="return confirm(&quot;Are you sure want to Delete?&quot;)">Delete</a></i></td>
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
                                SelectCommand="SELECT * FROM [image_gallary]"></asp:SqlDataSource>
                           
                           </div> 
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>

