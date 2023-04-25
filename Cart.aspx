<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Mini_Project_2A.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            margin-left:50px;
        }
        .auto-style22 {
            width: 100%;
        }
        .auto-style23 {
            width: 277px;
        }
        .auto-style24 {
            height: 26px;
        }
        .auto-style25 {
            width: 277px;
            height: 26px;
        }
        .auto-style26 {
            width: 215px;
        }
        .auto-style27 {
            height: 26px;
            width: 215px;
        }
        .auto-style28 {
            text-align: right;
            width: 202px;
        }
        .auto-style29 {
            width: 202px;
        }
        .auto-style30 {
            height: 26px;
            width: 202px;
        }
        .auto-style31 {
            height: 36px;
        }
        .auto-style32 {
            width: 215px;
            height: 36px;
        }
        .auto-style33 {
            width: 277px;
            height: 36px;
        }
        .auto-style34 {
            text-align: right;
            width: 202px;
            height: 36px;
        }
        .auto-style35 {
            height: 302px;
        }
        .auto-style37 {
            width: 42px;
        }
        .auto-style38 {
            height: 26px;
            width: 42px;
        }
        .auto-style39 {
            height: 36px;
            width: 42px;
        }
    .auto-style40 {
        height: 302px;
        width: 132px;
    }
    .auto-style43 {
        width: 132px;
        height: 36px;
    }
    .auto-style44 {
        width: 132px;
    }
    .auto-style45 {
        height: 26px;
        width: 132px;
    }
    .auto-style46 {
        height: 302px;
        text-align: center;
    }
    .auto-style47 {
        text-align: right;
        width: 202px;
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="auto-style21">
        <table class="auto-style22">
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style46" colspan="4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="397px" Width="998px">
                        <Columns>
                            <asp:ImageField DataImageUrlField="prodImage" HeaderText="Image">
                                <ControlStyle Height="150px" Width="150px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="prodName" HeaderText="Product" SortExpression="prodName" />
                            <asp:BoundField DataField="prodQty" HeaderText="Quantity" SortExpression="prodQty" />
                            <asp:BoundField DataField="prodPrice" HeaderText="Price" SortExpression="prodPrice" />
                            <asp:BoundField DataField="prodPriceTotal" HeaderText="Total" SortExpression="prodPriceTotal" />
                            <asp:CommandField ButtonType="Image" CancelText="" DeleteImageUrl="~/Pictures/delete.png" DeleteText="" ShowDeleteButton="True">
                            <ControlStyle Height="30px" Width="30px" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style38"></td>
                <td class="auto-style27"></td>
                <td class="auto-style25"></td>
                <td class="auto-style30"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style27"></td>
                <td class="auto-style25">
        &nbsp;
        <asp:Label ID="Label9" runat="server" Text="Cart Totals" Font-Bold="True" Font-Names="Adobe Caslon Pro Bold" Font-Size="30px"></asp:Label>
                </td>
                <td class="auto-style30"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style23">
                    &nbsp;
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Adobe Garamond Pro Bold" Font-Size="16pt" Text="Subtotal"></asp:Label>
                </td>
                <td class="auto-style28"><strong>
                    <asp:Label ID="Label12" runat="server" Text="RM"></asp:Label>
&nbsp;</strong><asp:Label ID="subtotal" runat="server" Font-Bold="True" Text="100"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style38"></td>
                <td class="auto-style27"></td>
                <td class="auto-style25">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Adobe Garamond Pro Bold" Font-Size="16pt" Text="Tax"></asp:Label>
                </td>
                <td class="auto-style47"><strong>
                    <asp:Label ID="Label15" runat="server" Text="RM"></asp:Label>
&nbsp;<asp:Label ID="tax" runat="server" Font-Bold="True" Text="1.5"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td class="auto-style39"></td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style33">
                    &nbsp;
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Adobe Garamond Pro Bold" Font-Size="16pt" Text="Total"></asp:Label>
                </td>
                <td class="auto-style34"><strong>
                    <asp:Label ID="Label13" runat="server" Text="RM"></asp:Label>
&nbsp;<asp:Label ID="total" runat="server" Font-Bold="True" Text="100"></asp:Label>
                    </strong></td>
                <td class="auto-style31"></td>
            </tr>
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style23">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroundUpCafeConnectionString %>" DeleteCommand="DELETE FROM [cart] WHERE [Id] = @Id" InsertCommand="INSERT INTO [cart] ([userEmailAdd], [prodName], [prodQty], [prodPrice], [prodPriceTotal], [prodImage]) VALUES (@userEmailAdd, @prodName, @prodQty, @prodPrice, @prodPriceTotal, @prodImage)" SelectCommand="SELECT * FROM [cart]" UpdateCommand="UPDATE [cart] SET [userEmailAdd] = @userEmailAdd, [prodName] = @prodName, [prodQty] = @prodQty, [prodPrice] = @prodPrice, [prodPriceTotal] = @prodPriceTotal, [prodImage] = @prodImage WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="userEmailAdd" Type="String" />
                            <asp:Parameter Name="prodName" Type="String" />
                            <asp:Parameter Name="prodQty" Type="Int32" />
                            <asp:Parameter Name="prodPrice" Type="Double" />
                            <asp:Parameter Name="prodPriceTotal" Type="Double" />
                            <asp:Parameter Name="prodImage" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="userEmailAdd" Type="String" />
                            <asp:Parameter Name="prodName" Type="String" />
                            <asp:Parameter Name="prodQty" Type="Int32" />
                            <asp:Parameter Name="prodPrice" Type="Double" />
                            <asp:Parameter Name="prodPriceTotal" Type="Double" />
                            <asp:Parameter Name="prodImage" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style29">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Button ID="Button1" runat="server" Text="Proceed To Checkout" BackColor="Black" ForeColor="White" Height="47px" Width="244px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
         
        
</asp:Content>
