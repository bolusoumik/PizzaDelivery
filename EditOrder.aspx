<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditOrder.aspx.cs" Inherits="EditOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/EditOrder.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            width: 167px;
        }
        .auto-style2 {
            text-decoration: underline;
            text-align: center;
        }
    </style>
</head>
<body>
    
    <div class="col-md-5 col-md-offset-5" id="login">
        
						<section id="inner-wrapper" class="login">
                            <h2 class="auto-style2"><strong>Modify Cart</strong></h2>
							<article>
								<form id="form1" runat="server">
									
                                    <div class="form-group">
                                        <div class="input-group">
									    <table class="w-100">
                                            
                                                
                                                <tr>
                                                <td class="auto-style1">S.No</td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" class="form-control" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                              
                                            
                                            <tr>
                                                <td class="auto-style1">Product Id:</td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" class="form-control"  Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style1">Product Name:</td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" class="form-control" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style1">Price:</td>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" class="form-control" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style1">Quantity</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style1">Size</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                                        <asp:ListItem>Regular</asp:ListItem>
                                                        <asp:ListItem>Small</asp:ListItem>
                                                        <asp:ListItem>Large</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style1">Total Price</td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
									</div>
									<%--<button type="submit" class="btn btn-success btn-block">Submit</button>--%>
                                    <asp:Button ID="Button1" runat="server" Cssclass="btn btn-success btn-block" Text="Update" OnClick="Button1_Click" />
								</form>
							</article>
						</section>
    </div>
    
    <script src="AfterLogin/vendor/jquery/jquery.min.js"></script>
  <script src="AfterLogin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
