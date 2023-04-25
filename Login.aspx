<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mini_Project_2A.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login </title>
    <link href="Style.css" rel="stylesheet" />
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style10 {
            width: 97px;
            height: 19px;
        }
        .auto-style11 {
            width: 60%;
            max-width: 1320px;
            height: 415px;
            margin-left: auto;
            margin-right: auto;
            padding-left: var(--bs-gutter-x, .75rem);
            padding-right: var(--bs-gutter-x, .75rem);
            padding-top: 16px;
            padding-bottom: 16px;
            background-color: #f8f9fa;
        }
    </style>
</asp:Content>
<asp:Content  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
        <div class="auto-style11">
            <center>
                <h3> Login </h3>
                <p>Please login using account detail below</p>
            </center>
            <label for="email"><b>Email Address</b></label>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailTextBox" 
                ErrorMessage="is required*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox runat="server" ID="EmailTextBox" placeholder="Enter Email Address" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <label for="psw" class="auto-style10"><b>
            <br />
            Password</b></label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" 
                ErrorMessage="is required*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox runat="server" ID="PasswordTextBox" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="lgnbtn" CssClass="lgnbtn" Text="Login" OnClick="lgnbtn_Click" />
           
            Don't have an account? 
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="false" >Create One</asp:LinkButton>
        </div>
    
</asp:Content>
