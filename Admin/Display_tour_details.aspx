<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Display_tour_details.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>DISPLAY TOUR DETAILS</h4>
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
                                                    <th>tdid</th>
                                                    <th>ttid</th>
                                                    <th>pname</th>
                                                    <th>image</th>
                                                    <th>Days</th>
                                                    <th>Description</th>
                                                    <th>price</th>
                                                    <th>Discount</th>
                                                    <th>location</th> 
                                                    <th>Best time</th> 
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                    
                                                </tr>
                                            </thead>
                                            </div> 
                         </HeaderTemplate>
                         <ItemTemplate >
                                         <tr>
                                                <td><%#Eval("tdid")%></td>
                                                <td><%#Eval("ttid")%></td>
                                                <td><%#Eval("pname")%></td>
                                                <td><img alt="" src='../image/<%#Eval("image")%>' height="190px" width="220px"/></td>
                                                <td><%#Eval("days")%></td>
                                                <td><%#Eval("description")%></td>
                                                <td><%#Eval("price")%></td>
                                                <td><%#Eval("discount")%></td>
                                                <td><%#Eval("location")%></td>
                                                <td><%#Eval("best_time")%></td>
                                                <td><i class="fa fa-pencil-square-o"><a href ='Edit_tour_details.aspx?tdid=<%#Eval("tdid")%>'>Edit</a></i></td>
                                                <td><i class="fa fa-trash-o"><a href ='Delete_tour_details.aspx?tdid=<%#Eval("tdid")%>'onclick="return confirm(&quot;Are you sure want to Delete?&quot;)">Delete</a></i></td>
                                                

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
                                SelectCommand="SELECT * FROM [tour_details]"></asp:SqlDataSource>
                                </div> 

                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>

