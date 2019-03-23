<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CartItem.aspx.cs" Inherits="CartItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="css/Cart.css" rel="stylesheet"/>
    <link href="css/sign_up.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <script src="https://use.fontawesome.com/c560c025cf.js"></script>
<div class="container">
   <div class="card shopping-cart">
            <div class="card-header bg-dark text-light">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                Shopping cart&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%--<a href="" class="btn btn-outline-info btn-sm pull-right">Continiu shopping</a>--%>
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-outline-info btn-sm pull-right" Text="Continue Shopping" OnClick="Button2_Click"/>
                <div class="clearfix"></div>
            </div>
            <div class="card-body">
                    <!-- PRODUCT -->
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-2 text-center">
                                <%--<img class="img-responsive" src="http://placehold.it/120x80" alt="prewiew" width="120" height="80">--%>
                            <asp:Image ID="Image1" CssClass="img-responsive" runat="server" width="120" height="80" />
                        </div>
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <h4 class="product-name"><strong><asp:Label ID="Label4" runat="server" CssClass="text-info" Text="Label"></asp:Label></strong></h4>
                            <h4>
                                <small>Product description</small>
                            </h4>
                        </div>
                        <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-md-right" style="padding-top: 5px">
                                <h6><strong><asp:Label ID="Label2" runat="server" CssClass="text-info" Text="Label"></asp:Label> <span class="text-muted">x</span></strong></h6>
                            </div>
                            <div class="col-4 col-sm-4 col-md-4">
                                <div class="quantity">
                                    <%--<input type="button" value="+" class="plus">--%>
                                    <%--<asp:Button ID="Button1" runat="server" CssClass="plus" value="+" Text="+"/>--%>
                                    <input type="number" step="1" max="99" min="1" value="1" title="Qty" class="qty"
                                           size="4">
                                   <%-- <input type="button" value="-" class="minus">--%>
                                    <%--<asp:Button ID="Button2" runat="server" CssClass="minus" value="-" Text="-"/>--%>
                                </div>
                            </div>
                            <div class="col-2 col-sm-2 col-md-2 text-right">
                                <button type="button" class="btn btn-outline-danger btn-xs">
                                    <%--<i class="fa fa-trash" aria-hidden="true"></i>--%>
                                    <asp:Button ID="Button3" runat="server" CssClass="fa fa-trash"/>
                                </button>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <!-- END PRODUCT -->
                    <!-- PRODUCT -->
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-2 text-center">
                                <%--<img class="img-responsive" src="http://placehold.it/120x80" alt="prewiew" width="120" height="80">--%>
                            <asp:Image ID="Image2" CssClass="img-responsive" runat="server" width="120" height="80" />
                        </div>
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <h4 class="product-name"><strong><asp:Label ID="Label5" runat="server" CssClass="text-info" Text="Label"></asp:Label></strong></h4>
                            <h4>
                                <small>Product description</small>
                            </h4>   
                        </div>
                        <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-md-right" style="padding-top: 5px">
                                <h6><strong><asp:Label ID="Label3" runat="server" CssClass="text-info" Text="Label"></asp:Label> <span class="text-muted">x</span></strong></h6>
                            </div>
                            <div class="col-4 col-sm-4 col-md-4">
                                <div class="quantity">
                                    <%--<asp:Button ID="Button3" runat="server" CssClass="plus" value="+" Text="+"/>--%>
                                    <input type="number" step="1" max="99" min="1" value="1" title="Qty" class="qty"
                                           size="4"/>
                                    <%--<asp:Button ID="Button4" runat="server" CssClass="minus" value="-" Text="-"/>--%>
                                </div>
                            </div>
                            <div class="col-2 col-sm-2 col-md-2 text-right">
                                <button type="button" class="btn btn-outline-danger btn-xs">
                                    <%--<i class="fa fa-trash" aria-hidden="true"></i>--%>
                                    <asp:Button ID="Button4" runat="server" CssClass="fa fa-trash"/>
                                </button>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <!-- END PRODUCT -->
                <div class="pull-right">
                    <a href="" class="btn btn-outline-secondary pull-right">Update shopping cart
                    </a>
                </div>
            </div>
            <div class="card-footer">
                <div class="coupon col-md-5 col-sm-5 no-padding-left pull-left">
                    <div class="row">
                        <div class="col-6">
                            <%--<input type="text" class="form-control" placeholder="cupone code">--%>
                    <p><asp:Label ID="Label1" runat="server" CssClass="text-info" Text="Label"></asp:Label></p>
                     <asp:Button ID="Button1" runat="server" CssClass="btn btn-success pull-right" Text="CheckOut"/>
                        </div>
                        <%--<div class="col-6">
                            <input type="submit" class="btn btn-default" value="Use cupone">
                        </div>--%>
                    </div>
                </div>
                <div class="pull-right" style="margin: 10px">
                    
                    <div class="form-group">
                     
                    </div>
                    </div>
            </div>
        </div>
</div>
    </form>
     <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>