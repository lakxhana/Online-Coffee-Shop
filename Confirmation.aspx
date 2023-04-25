<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Mini_Project_2A.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style8 {
            background-color: #000000;
        }
         .auto-style10 {
             width: 100%;
         }
         .auto-style11 {
             height: 26px;
         }
         .auto-style12 {
             width: 302px;
         }
         .auto-style13 {
             height: 26px;
             width: 302px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="THANK YOU"></asp:Label>
        !<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroundUpCafeConnectionString %>" SelectCommand="SELECT * FROM [Payment]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GroundUpCafeConnectionString %>" SelectCommand="SELECT * FROM [cart]"></asp:SqlDataSource>
    </p>
    <table class="auto-style10">
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style13"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Product"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style13">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black" Width="403px">
                    <Columns>
                        <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName" />
                        <asp:BoundField DataField="prodPriceTotal" HeaderText="Total" SortExpression="prodPriceTotal" />
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
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Shipping Details"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="50px" Width="362px">
                    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="mobileNum" HeaderText="Phone Number" SortExpression="mobileNum" />
                        <asp:BoundField DataField="method" HeaderText="Payment Method" SortExpression="method" />
                    </Fields>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                </asp:DetailsView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">&nbsp;</td>
        </tr>
    </table>
    <p>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style8" ForeColor="White" Text="Return Home" PostBackUrl="~/Homepage.aspx" />
    </p>
    <p>
    </p>
</asp:Content>
