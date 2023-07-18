<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change_password.aspx.cs" Inherits="Admin_Change_password" %>

<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/travelz/admin/forgot.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 18 Jun 2020 17:00:57 GMT -->
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
    <link rel="stylesheet" href="css/materialize.css"/>

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
            <form id="Form1" runat ="Server">
                 <img src="images/sunshine (3).jfif" height="100px" width ="150px" alt="" />
                <div class="row">
                    <div class="input-field col s12">
                        <%--<input id="oldpass" type="text" class="validate">--%>
                        <asp:TextBox ID="txt_oldpass" runat="server" class="validate" required=""></asp:TextBox>
                        <label for="old pass">Enter old password</label>
                    </div>
                </div>
                 <div class="row">
                    <div class="input-field col s12">
                        <%--<input id="new pass" type="text" class="validate">--%>
                        <asp:TextBox ID="txt_newpass" type="password" runat="server" class="validate" required=""></asp:TextBox>
                        <label for="new">Enter new password</label>
                    </div>
                </div>
                 <div class="row">
                    <div class="input-field col s12">
                        <%--<input id="confirm new pass" type="text" class="validate">--%>
                        <asp:TextBox ID="txt_cnnpass" type="password" runat="server" class="validate" required=""></asp:TextBox>
                        <label for="confirm new pass">Enter confirm new password</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <%--<a class="waves-effect waves-light btn-large btn-log-in" href="index.html">Submit</a>--%>
                        <asp:Button ID="btn_submit" runat="server" Text="submit" 
                            class="waves-effect waves-light btn-large btn-log-in" 
                            onclick="btn_submit_Click1" />
                    </div>
                </div>
                <a href="sign_in.aspx" class="for-pass">Login</a>
            </form>
        </div>
    </div>

    <!--======== SCRIPT FILES =========-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/custom.js"></script>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/travelz/admin/forgot.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 18 Jun 2020 17:00:57 GMT -->
</html>




