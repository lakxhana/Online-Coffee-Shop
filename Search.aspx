<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Mini_Project_2A.Search" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            height: 26px;
            text-align: center;
        }
        .auto-style12 {
            width: 666px;
        }
        .auto-style14 {
            margin-left: 248px;
        }
        .auto-style16 {
            width: 187px;
        }
        .auto-style24 {
            width: 393px;
            text-align: center;
        }
        .auto-style25 {
            width: 605px;
            text-align: center;
        }
        .auto-style26 {
            width: 666px;
            text-align: center;
        }
        .auto-style27 {
            width: 666px;
            height: 26px;
        }
        .auto-style28 {
            width: 187px;
            height: 26px;
        }
        .auto-style29 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12" colspan="4">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12" colspan="4">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="10">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14" Width="539px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonSearch" runat="server" BackColor="Black" ForeColor="White" Text="Search" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style27" colspan="4"></td>
            <td class="auto-style28"></td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" Width="125px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                    <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:ImageField DataImageUrlField="prodImage">
                            <ControlStyle Height="200px" Width="200px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="prodName" SortExpression="prodName" />
                        <asp:BoundField DataField="prodPrice" SortExpression="prodPrice" HeaderText="RM" >
                        <HeaderStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                    </Fields>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                </asp:DetailsView>
            </td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12" colspan="4">&nbsp;</td>
            <td class="auto-style16">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroundUpCafeConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [product] ([prodName], [prodPrice], [prodStock], [prodImage]) VALUES (@prodName, @prodPrice, @prodStock, @prodImage)" SelectCommand="SELECT * FROM [product] WHERE ([prodName] LIKE '%' + @prodName + '%')" UpdateCommand="UPDATE [product] SET [prodName] = @prodName, [prodPrice] = @prodPrice, [prodStock] = @prodStock, [prodImage] = @prodImage WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="prodName" Type="String" />
                        <asp:Parameter Name="prodPrice" Type="Double" />
                        <asp:Parameter Name="prodStock" Type="Int32" />
                        <asp:Parameter Name="prodImage" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="prodName" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="prodName" Type="String" />
                        <asp:Parameter Name="prodPrice" Type="Double" />
                        <asp:Parameter Name="prodStock" Type="Int32" />
                        <asp:Parameter Name="prodImage" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style16">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12" colspan="4">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12" colspan="4">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
