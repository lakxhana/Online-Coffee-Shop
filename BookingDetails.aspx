<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookingDetails.aspx.cs" Inherits="Mini_Project_2A.BookingDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style8 {
            width: 257px;
        }
        .auto-style9 {
            width: 57px;
        }
          .auto-style10 {
              width: 100%;
          }
          .auto-style11 {
              width: 996px;
          }
          .auto-style12 {
              height: 26px;
          }
          .auto-style13 {
              width: 996px;
              height: 26px;
          }
          .auto-style14 {
              text-align: center;
          }
          .auto-style15 {
              height: 26px;
              width: 257px;
          }
          .auto-style16 {
              width: 257px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style10">
         <tr>
             <td class="auto-style12"></td>
             <td class="auto-style15"></td>
             <td class="auto-style13"></td>
             <td class="auto-style12"></td>
             <td class="auto-style12"></td>
             <td class="auto-style12"></td>
         </tr>
         <tr>
             <td class="auto-style14" colspan="6">
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="30pt" Text="BOOKING DETAILS"></asp:Label>
             </td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td class="auto-style16">&nbsp;</td>
             <td class="auto-style11">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td class="auto-style16">&nbsp;</td>
             <td class="auto-style11">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black">
                     <Columns>
                         <asp:BoundField DataField="Id" HeaderText="Table Number" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                         <asp:BoundField DataField="NumOfPeople" HeaderText="Pax" SortExpression="NumOfPeople" />
                         <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                         <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                         <asp:BoundField DataField="Message" HeaderText="Note" SortExpression="Message" />
                         <asp:CommandField HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" />
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
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td class="auto-style16">&nbsp;</td>
             <td class="auto-style11">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td class="auto-style16">&nbsp;</td>
             <td class="auto-style11">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td class="auto-style16">&nbsp;</td>
             <td class="auto-style11">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td class="auto-style16">&nbsp;</td>
             <td class="auto-style11">
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroundUpCafeConnectionString %>" DeleteCommand="DELETE FROM [booking] WHERE [Id] = @Id" InsertCommand="INSERT INTO [booking] ([Email], [NumOfPeople], [Date], [Time], [Message]) VALUES (@Email, @NumOfPeople, @Date, @Time, @Message)" SelectCommand="SELECT * FROM [booking]" UpdateCommand="UPDATE [booking] SET [Email] = @Email, [NumOfPeople] = @NumOfPeople, [Date] = @Date, [Time] = @Time, [Message] = @Message WHERE [Id] = @Id">
                     <DeleteParameters>
                         <asp:Parameter Name="Id" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="Email" Type="String" />
                         <asp:Parameter Name="NumOfPeople" Type="Int32" />
                         <asp:Parameter DbType="Date" Name="Date" />
                         <asp:Parameter Name="Time" Type="String" />
                         <asp:Parameter Name="Message" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="Email" Type="String" />
                         <asp:Parameter Name="NumOfPeople" Type="Int32" />
                         <asp:Parameter DbType="Date" Name="Date" />
                         <asp:Parameter Name="Time" Type="String" />
                         <asp:Parameter Name="Message" Type="String" />
                         <asp:Parameter Name="Id" Type="Int32" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
             </td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td class="auto-style16">&nbsp;</td>
             <td class="auto-style11">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td class="auto-style16">&nbsp;</td>
             <td class="auto-style11">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td class="auto-style16">&nbsp;</td>
             <td class="auto-style11">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
</asp:Content>
