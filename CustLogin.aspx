<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustLogin.aspx.cs" Inherits="CustLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/Basic-Header.css"/>

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/Header-Icons.css"/>
    <link rel="stylesheet" href="SignUp/fonts/material-icon/css/material-design-iconic-font.min.css"/>
    
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/Header-Icons.css"/>
     <!-- Font Icon -->
    <link rel="stylesheet" href="SignUp/fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="SignUp/SignUp_css/style.css"/>
</head>
<body>
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

    

        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="SignUp/SignUp_images/pizzaEat.jpg" alt="sing up image"></figure>
                        <a href="Index.aspx" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Login</h2>
                        <form class="register-form" runat="server">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <%--<input type="text" name="your_name" id="your_name" placeholder="Your Name"/>--%>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <%--<input type="password" name="your_pass" id="your_pass" placeholder="Password"/>--%>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                               <%-- <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />--%>
                                <asp:CheckBox ID="CheckBox1" runat="server"/>
                                <label for="remember-me" class="label-agree-term"><span></span>Remember me</label>
                                
                            </div>
                            <div class="form-group form-button">
                                <%--<input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>--%>
                                <asp:Button ID="Button1" runat="server" CssClass="form-submit" Text="Login" OnClick="Button1_Click"/>
                            </div>
                        </form>
                        <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
             
    <script src="SignUp/SignUp_vendor/jquery/jquery.min.js"></script>
    <script src="SignUp/SignUp_js/main.js"></script>
</body>
</html>
