<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Display_hotel_details.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                <h4>DISPLAY HOTEL DETAILS</h4>
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
                                                    <th>hid</th>
                                                    <th>tdid</th>
                                                    <th>Hotel Name</th>
                                                    <th>Hotel Image</th>
                                                    <th>Location</th>
                                                    <th>HotelType</th>
                                                    <th>Mobile no</th>
                                                    <th>Price</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                    
                                                </tr>
                                            </thead>
                                            </div> 
                         </HeaderTemplate>
                         <ItemTemplate >
                                         <tr>
                                                <td><%#Eval("hid")%></td>
                                                <td><%#Eval("tdid")%></td>
                                                <td><%#Eval("hotel_name")%></td>
                                                <td><img alt="" src='../hotelimage/<%#Eval("hotel_image")%>' height="190px" width="220px"/></td>
                                                <td><%#Eval("location")%></td>
                                                <td><%#Eval("hotel_type")%></td>
                                                <td><%#Eval("mobno")%></td>
                                                <td><%#Eval("price")%></td>
                                                <td><i class="fa fa-pencil-square-o"><a href ='Edit_hotel_details.aspx?hid=<%#Eval("hid")%>')">Edit</a></i></td>
                                                <td><i class="fa fa-trash-o"><a href ='Delete_hotel_details.aspx?hid=<%#Eval("hid")%>' onclick="return confirm(&quot;Are you sure want to Delete?&quot;)">Delete</a></i></td>
                                                

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
                                SelectCommand="SELECT * FROM [hotel_details]"></asp:SqlDataSource>
                            
                                </div> 

                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>

