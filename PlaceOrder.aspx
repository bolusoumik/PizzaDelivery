<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 146px;
        }
        .auto-style4 {
            width: 141px;
            height: 68px;
        }
        .auto-style5 {
            height: 68px;
        }
        .auto-style6 {
            width: 141px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Order Id:</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Order Date:</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="productid" HeaderText="Product Id">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pname" HeaderText="Product Name">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Pimage" HeaderText="Product Image">
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="size" HeaderText="Size">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="Regular Price">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="qty" HeaderText="Quantity">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Tcost" HeaderText="Total Price">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Address:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="50px" TextMode="MultiLine" Width="216px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Mobile:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="216px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-outline-primary" Text="Place Order" OnClick="Button2_Click" />
    </form>
</body>
</html>
