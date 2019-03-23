<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/Basic-Header.css"/>

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/Header-Icons.css"/>
    <link rel="stylesheet" href="SignUp/fonts/material-icon/css/material-design-iconic-font.min.css"/>
    <!--Add-->


    <!-- Custom styles for this template -->
    <link href="css/Cart.css" rel="stylesheet"/>
    <link href="css/sign_up.css" rel="stylesheet"/>
    <!-- Main css -->
    <link rel="stylesheet" href="SignUp/SignUp_css/style.css"/>
</head>
<body>
    <%--<form id="form1" runat="server">--%>
    <%--<div>--%>
        <nav class="navbar navbar-deafult navigation-clean-button">
           <%-- <div class="container">--%>
                <div class="navbar-header"><a class="navbar-brand" href="#"><img src="pizza/mbl-logo.png"/>Pizza Eat</a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
            
                    <p class="navbar-text navbar-right actions"><a class="btn btn-default action-button" role="button" href="AfterLogin.aspx">Tour</a></p>
                    <p class="navbar-text navbar-right actions"><a class="btn btn-default action-button" role="button" href="Contact.aspx">Contact</a></p>
                    <p class="navbar-text navbar-right actions"><a class="btn btn-default action-button" role="button" href="About.aspx">About</a></p>
                    <p class="navbar-text navbar-right actions"><a class="btn btn-default action-button" role="button" href="Index.aspx">Home</a></p>

                    
                </div>
           <%-- </div>--%>
        </nav>
        
    <%--<div class="main">--%>

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form class="register-form" runat="server">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <%--<input type="text" name="name" id="name" placeholder="Your Name"/>--%>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <%--<input type="email" name="email" id="email" placeholder="Your Email"/>--%>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Email"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label for="phone"><i class="zmdi zmdi-phone"></i></label>
                                <%--<input type="number" name="phone" id="phone" placeholder="Phone no"/>--%>
                                 <asp:TextBox ID="TextBox3" runat="server" placeholder="Phone no"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <%--<input type="password" name="pass" id="pass" placeholder="Password"/>--%>
                                <asp:TextBox ID="TextBox4" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <%--<input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>--%>
                                <asp:TextBox ID="TextBox5" runat="server" placeholder="Conform Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <%--<div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>--%>
                            <div class="form-group form-button">
                                <%--<input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>--%>
                                <asp:Button ID="Button1" runat="server" CssClass="form-submit" Text="Register" OnClick="Button1_Click"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="SignUp/SignUp_images/pizzaNeed.jpg" alt="sing up image"/></figure>
                        <a href="CustLogin.aspx" class="signup-image-link">I am already user</a>
                    </div>
                </div>
            </div>
        </section>

          <%-- </div>
    </form>--%>

     <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
