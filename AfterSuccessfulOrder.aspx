<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AfterSuccessfulOrder.aspx.cs" Inherits="AfterSuccessfulOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 520px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Your Order has Successfully Placed..........................!<br />
        <br />
        Order Id:
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Download Invoice" Width="139px" />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td style="text-align: center">Retail Invoice</td>
                </tr>
                <tr>
                    <td>Order No:&nbsp;
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        <br />
                        <br />
                        Order Date:&nbsp;
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <br />
                                    <br />
                                    Buyer Address:<br />
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                                <td>Seller Address:<br /> Pizza Eat</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="140px" Width="1257px">
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="S No">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="productId" HeaderText="Product Id">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Pname" HeaderText="Product Name">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="qty" HeaderText="Quantity">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="Price">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Tcost" HeaderText="Total Cost">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        Grand Total:
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>Declaration: We declare that this invoice shows actual price of the foods described inclusive of taxes and that all particular are true and correct.<br /> Incase you find Selling&nbsp; price on the invoice to be more than MRP mentioned on product.<br />
                        <br />
                        THIS IS A COMPUTER GENERATED INVOICE AND DOES NOT REQUIRED SIGNATURE.</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AfterLogin.aspx">Way to go to Order Page</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
