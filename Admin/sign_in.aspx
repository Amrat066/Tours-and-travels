<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign_in.aspx.cs" Inherits="Admin_sign_in" %>



<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/travelz/admin/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 18 Jun 2020 16:51:14 GMT -->
<head>
    <title>Sunshine Travel-Forever And Ever</title>
    <!--== META TAGS ==-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <!--== FAV ICON ==-->
    <link rel="shortcut icon" href="images/fav.ico"/>

    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600|Quicksand:300,400,500" rel="stylesheet"/>

    <!-- FONT-AWESOME ICON CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css"/>

    <!--== ALL CSS FILES ==-->
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/mob.css"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/materialize.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
    <div class="blog-login">
        <div class="blog-login-in">
            <form runat ="server">
                <img src="images/sunshine (3).jfif" height="120px" width ="180px" alt="" />
                <div class="row">
                    <div class="input-field col s12">
                        <%--<input id="first_name1" type="text" class="validate">--%>
                        <asp:TextBox ID="txt_email" runat="server"  class="validate" required=""></asp:TextBox>
                        <label for="first_name1">Email</label>
                        
                       
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <%--<input id="last_name" type="password" class="validate">--%>
                        <asp:TextBox ID="txt_pass" type="password" runat="server" class="validate" required=""></asp:TextBox>
                        <label for="last_name">Password</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                       <%-- <a class="waves-effect waves-light btn-large btn-log-in" href="index.html">Login</a>--%>
                        <asp:Button ID="btn_login" runat="server" Text="Login" 
                            class="waves-effect waves-light btn-large btn-log-in" 
                            onclick="btn_login_Click" />
                        <center><b><asp:Label ID="Label1" runat="server" Text=""></asp:Label></b> </center> 
                    </div>
                </div>
                <a href="forgot_password.aspx" class="for-pass">Forgot Password?</a>
            </form>
        </div>
    </div>

    <!--======== SCRIPT FILES =========-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/custom.js"></script>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/travelz/admin/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 18 Jun 2020 16:51:31 GMT -->
</html>