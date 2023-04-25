<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Mini_Project_2A.EditBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <script src="https://kit.fontawesome.com/678951087b.js" crossorigin="anonymous"></script>
    <style type="text/css">
    .auto-style8 {
        width: 100%;
        height: 199px;
        margin-top: 0px;
    }
        .auto-style9 {
            width: 490px;
        }
        .auto-style10 {
            width: 258px;
        }
        .auto-style11 {
            width: 55px;
        }
        .auto-style12 {
            height: 21px;
        }
        .auto-style14 {
            width: 258px;
            height: 21px;
        }
        .auto-style15 {
            width: 55px;
            height: 21px;
        }
        .auto-style16 {
            width: 30px;
        }
        .auto-style17 {
            height: 21px;
            width: 30px;
        }
        .auto-style19 {
            width: 58px;
        }
        .auto-style20 {
            height: 21px;
            width: 58px;
        }
        .auto-style21 {
            width: 90px;
            height: 211px;
        }
        .auto-style22 {
            height: 21px;
            width: 90px;
        }
        .auto-style23 {
            width: 258px;
            text-align: left;
        }
        .auto-style24 {
            height: 52px;
        }
        .auto-style25 {
            width: 30px;
            height: 52px;
        }
        .auto-style26 {
            width: 258px;
            text-align: left;
            height: 52px;
        }
        .auto-style27 {
            width: 55px;
            height: 52px;
        }
        .auto-style28 {
            width: 58px;
            height: 52px;
        }
        .auto-style29 {
            width: 90px;
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8" style="background-color: #ffffff">
        <tr>
            <td colspan="8" class="text-center">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="30pt" Text="BOOKING TABLE AREA"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
            <td class="auto-style25">
                </td>
            <td class="auto-style29"></td>
            <td class="auto-style26">
                <asp:Label ID="Label2" runat="server" ForeColor="#FF9933" Text="#Reservation" Font-Names="Arial Narrow"></asp:Label>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style28"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style21" rowspan="12">
                <asp:Image ID="Image1" runat="server" Height="495px" ImageUrl="https://i.postimg.cc/pd9Y4kWR/cafe.jpg" Width="456px" />
            </td>
            <td class="auto-style23">
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="BOOK A TABLE" Font-Names="Arial Narrow" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxEmail" runat="server" ForeColor="Black" Width="239px" PlaceHolder="Your Email"></asp:TextBox>
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxNum" runat="server" Width="237px" PlaceHolder="Number of people"></asp:TextBox>
            </td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td class="auto-style16"></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxDate" runat="server" ForeColor="Black" Width="219px" PlaceHolder="dd/mm/yyyy"></asp:TextBox>
                <asp:ImageButton ID="ImageButton5" runat="server" Height="17px" ImageUrl="https://i.postimg.cc/tJrj19L3/calender2-removebg-preview.png" Width="18px" OnClick="ImageButton5_Click" />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" OnSelectionChanged="Calendar1_SelectionChanged" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" Visible="False">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
                
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style19"></td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxTime" runat="server" ForeColor="Black" Width="237px" PlaceHolder="1 : 00 pm"></asp:TextBox>
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxMessage" runat="server" Width="239px" TextMode="MultiLine" PlaceHolder="Your Message"></asp:TextBox>
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Names="Arial Narrow" ForeColor="White" OnClientClick="True" Text="BOOK A TABLE" Width="244px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style17"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style20"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
