<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerSign.aspx.cs" Inherits="CustomerSign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

      <!-- Font Icon -->
    <link rel="stylesheet" href="SignUp/fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="SignUp/SignUp_css/style.css"/>
</head>
<body>
    <div class="main"  runat="server">

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
                                <asp:Button ID="Button1" runat="server" CssClass="form-submit" Text="Register" OnClick="Button1_Click" />
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="SignUp/SignUp_images/pizzaNeed.jpg" alt="sing up image"></figure>
                        <a href="CustLogin.aspx" class="signup-image-link">I am already user</a>
                    </div>
                </div>
            </div>
        </section>

        <%--<!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="SignUp/SignUp_images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="#" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="your_name" id="your_name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="your_pass" id="your_pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
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
        </section>--%>

    </div>
    <script src="SignUp/SignUp_vendor/jquery/jquery.min.js"></script>
    <script src="SignUp/SignUp_js/main.js"></script>
</body>
</html>
