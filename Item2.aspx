<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Item2.aspx.cs" Inherits="Mini_Project_2A.Item2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 24px;
        }
        .auto-style9 {
            width: 23px;
        }
        .auto-style10 {
            width: 450px;
        }
        .auto-style11 {
            height: 27px;
        }
        .auto-style12 {
            width: 450px;
            height: 27px;
        }
        .auto-style13 {
            height: 156px;
        }
        .auto-style14 {
            width: 450px;
            height: 156px;
        }
        .auto-style15 {
            height: 44px;
        }
        .auto-style16 {
            width: 450px;
            height: 44px;
        }
        .auto-style17 {
        width: 20%;
        height: 211px;
        }
        .btn_addtocart:hover {
            box-shadow: inset 1000px 0 0 0 #c7a17a;
            cursor: pointer;
            color: white;
        }
        .btn_buynow:hover {
            box-shadow: inset 1000px 0 0 0 #c7a17a;
            cursor: pointer;
            color: white;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td rowspan="9" class="auto-style17">
                <asp:Image ID="product_image" runat="server" Height="450px" ImageUrl="~/Pictures/product2.png" Width="376px" />
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10"><strong>
                <asp:Label ID="prodName" runat="server" Font-Size="20pt" Text="House Cofee Original"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
            <td class="auto-style14">
                <asp:Label ID="description" runat="server" Text="What is a blend and a roast of coffee? Blended coffee is 2 or more coffee varieties blended together. You can blend coffees from the same region, or coffees from different growing regions. Coffee can be blended Pre-Roast, meaning the beans are blended and then roasted, or Post-Roast, meaning the coffee is roasted then blended."></asp:Label>
            </td>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#996633" Text="RM"></asp:Label>
&nbsp;
                <asp:Label ID="prodPrice" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#996633" Text="30"></asp:Label>
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="btn_minus" runat="server" Text="-" OnClick="btn_minus_Click" />
                <asp:TextBox ID="TextBoxQty" runat="server" Height="22px" Width="37px">1</asp:TextBox>
                <asp:Button ID="btn_add" runat="server" Text="+" OnClick="btn_add_Click" />
&nbsp;&nbsp;
                <asp:Button ID="btn_addtocart" CssClass="btn_addtocart" runat="server" BackColor="Black" ForeColor="White" Height="37px" Text="Add To Cart" Width="167px" OnClick="btn_addtocart_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16">
                <asp:Button ID="btn_buynow" CssClass="btn_buynow" runat="server" BackColor="Black" ForeColor="White" Height="42px" Text="Buy Now" Width="221px" />
            </td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
