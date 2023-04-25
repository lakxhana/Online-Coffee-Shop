    <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Mini_Project_2A.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style8 {
            width: 280px;
        }
        .auto-style9 {
            width: 364px;
        }
        .auto-style16 {
            background-color: #000000;
        }
          .auto-style17 {
              width: 100%;
          }
          .auto-style18 {
              width: 434px;
          }
          .auto-style19 {
              width: 172px;
          }
          .auto-style20 {
              width: 440px;
          }
          .auto-style21 {
              width: 172px;
              height: 26px;
          }
          .auto-style22 {
              width: 440px;
              height: 26px;
          }
          .auto-style23 {
              width: 434px;
              height: 26px;
          }
          .auto-style24 {
              height: 26px;
          }
          .auto-style25 {
              width: 172px;
              height: 29px;
          }
          .auto-style26 {
              width: 440px;
              height: 29px;
          }
          .auto-style27 {
              width: 434px;
              height: 29px;
          }
          .auto-style28 {
              height: 29px;
          }
          .auto-style29 {
              width: 458px;
          }
          .auto-style30 {
              width: 458px;
              height: 29px;
          }
          .auto-style31 {
              width: 458px;
              height: 26px;
          }
          .auto-style32 {
              width: 649px;
          }
          .auto-style33 {
              height: 29px;
              width: 649px;
          }
          .auto-style34 {
              height: 26px;
              width: 649px;
          }
          .auto-style35 {
              width: 434px;
              text-align: right;
          }
          .auto-style36 {
              width: 434px;
              text-align: center;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
         &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroundUpCafeConnectionString %>" SelectCommand="SELECT * FROM [cart]"></asp:SqlDataSource>
    </p>
     <table class="auto-style17">
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Larger" Text="Payment Method"></asp:Label>
             </td>
             <td class="auto-style20">
                 &nbsp;</td>
             <td class="auto-style18" colspan="2">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Cart Total"></asp:Label>
             </td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style18" colspan="2">&nbsp;</td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">Enter Address : </td>
             <td class="auto-style20">
                    <asp:TextBox ID="TextBoxAdd" runat="server" Height="106px" TextMode="MultiLine" Width="265px"></asp:TextBox>
                </td>
             <td class="auto-style18" colspan="2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" Height="176px" Width="402px" BorderStyle="Solid" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName" />
                <asp:BoundField DataField="prodPriceTotal" HeaderText="Product Price" SortExpression="prodPriceTotal" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
             </td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style25"></td>
             <td class="auto-style26">Mobile Number :</td>
             <td class="auto-style26">
                    <asp:TextBox ID="TextBoxMobile" runat="server" Width="263px"></asp:TextBox>
                </td>
             <td class="auto-style27" colspan="2"></td>
             <td class="auto-style30"></td>
             <td class="auto-style28"></td>
             <td class="auto-style33"></td>
             <td class="auto-style28"></td>
         </tr>
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style35">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Adobe Garamond Pro Bold" Font-Size="16pt" Text="Subtotal"></asp:Label>
             </td>
             <td class="auto-style36">
                 <strong>
                    <asp:Label ID="Label12" runat="server" Text="RM"></asp:Label>
&nbsp; <asp:Label ID="subtotal" runat="server" Font-Bold="True" Text="100"></asp:Label>
                 </strong>
             </td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style20">
                 <asp:RadioButton ID="RadioBtnCOD" runat="server" Text="COD" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RadioButton ID="RadioBtnOnline" runat="server" Text="Online Payment" />
             </td>
             <td class="auto-style35">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Adobe Garamond Pro Bold" Font-Size="16pt" Text="Tax"></asp:Label>
                </td>
             <td class="auto-style36"><strong>
                    <asp:Label ID="Label15" runat="server" Text="RM"></asp:Label>
&nbsp; <asp:Label ID="tax" runat="server" Font-Bold="True" Text="100"></asp:Label>
                 </strong></td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style35">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Adobe Garamond Pro Bold" Font-Size="16pt" Text="Total"></asp:Label>
                </td>
             <td class="auto-style36"><strong>
                    <asp:Label ID="Label16" runat="server" Text="RM"></asp:Label>
&nbsp; <asp:Label ID="total" runat="server" Font-Bold="True" Text="100"></asp:Label>
                 </strong></td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style21"></td>
             <td class="auto-style22"></td>
             <td class="auto-style22"></td>
             <td class="auto-style23" colspan="2"></td>
             <td class="auto-style31"></td>
             <td class="auto-style24"></td>
             <td class="auto-style34"></td>
             <td class="auto-style24"></td>
         </tr>
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style20">
        <asp:Button ID="Button1" runat="server" CssClass="auto-style16" ForeColor="White" Text="Checkout" OnClick="Button1_Click" Height="52px" Width="202px" />
             </td>
             <td class="auto-style18" colspan="2">&nbsp;</td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style18" colspan="2">&nbsp;</td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style18" colspan="2">&nbsp;</td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style18" colspan="2">&nbsp;</td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style19">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style20">&nbsp;</td>
             <td class="auto-style18" colspan="2">&nbsp;</td>
             <td class="auto-style29">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style32">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
    </asp:Content>
