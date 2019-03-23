<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AfterLogin.aspx.cs" Inherits="AfterLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    
    <!-- Bootstrap core CSS -->
  <%--<link href="AfterLogin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>--%>

  <!-- Custom styles for this template -->
  <link href="AfterLogin/css/shop-homepage.css" rel="stylesheet"/>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>--%>
    <link rel="stylesheet" type="text/css" href="assets/css/Header-Icons.css"/>


    <!-- Custom styles for this template -->
    <link href="css/Cart.css" rel="stylesheet"/>
    <link href="css/sign_up.css" rel="stylesheet"/>

    </head>
<body>

 <form id="form1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
     <%--<nav class="navbar navbar-default navigation-clean-button">--%>
    <%--<div class="container">--%>
       
      <a class="navbar-brand" >
          <img src="pizza/mbl-logo.png"/>Pizza Eat</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
       
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
            <div class="form-group form-button">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                 <asp:Button ID="Button7" runat="server" CssClass="form-submit" Text="Show Cart" OnClick="Button7_Click"/>
                 <asp:Button ID="Button8" runat="server" CssClass="form-submit" Text="Logout" OnClick="Button8_Click"/>
                <asp:Button ID="Button1" runat="server" CssClass="form-submit" Text="Home" OnClick="Button1_Click"/>
                </div>
          
        </ul>
      </div>
    <%--</div>--%>
  </nav>
      

  <!-- Page Content -->
 

    <%--<div class="row">--%>

      <%--<div class="col-lg-3">

        <h1 class="my-4">Shop Name</h1>
        <div class="list-group">
          <a href="#" class="list-group-item">Regular</a>
          <a href="#" class="list-group-item">Small</a>
          <a href="#" class="list-group-item">Large</a>
        </div>

      </div>--%>
      <!-- /.col-lg-3 -->

      <%--<div class="col-lg-9">--%>

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="pizza/Dominos-Web-Banner-full-2.png" alt="First slide"/>
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="pizza/Dom_EVO2_Brand_Desktop_1366x452.jpg" alt="Second slide"/>
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="pizza/giftcardbanner.png" alt="Third slide"/>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

 <div class="container">
        <div class="row">
            &nbsp;&nbsp;&nbsp;<asp:DataList ID="DataList1" runat="server" CellPadding="3" CellSpacing="2" DataKeyField="ProductId" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table border="1" class="w-100">
                        <tr>
                            <td style="text-align: center">Product ID&nbsp;
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="147px" ImageUrl='<%# Eval("image") %>' Width="253px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">Rs.<asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                /-</td>
                        </tr>
                  
                        <tr>
                            <td style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qty:&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Size:
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem>Regular</asp:ListItem>
                                    <asp:ListItem>Small</asp:ListItem>
                                    <asp:ListItem>Large</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                  
                        <tr>
                            <td style="text-align: center">
                                
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("ProductId") %>' CommandName="addtocart" Height="38px" ImageUrl="~/pizza/AddToCart.jpg" Width="122px" />
                                                                </div>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->


  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>
</form>

    <!-- Bootstrap core JavaScript -->
  <script src="AfterLogin/vendor/jquery/jquery.min.js"></script>
  <script src="AfterLogin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    
</body>
</html>
