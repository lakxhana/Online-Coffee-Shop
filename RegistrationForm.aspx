<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" 
    Inherits="Mini_Project_2A.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Register </title>
    <link href="Style.css" rel="stylesheet" />
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style8 {
            width: 337px;
        }
        .auto-style9 {
            width: 390px;
        }
        .auto-style10 {
            width: 109px;
        }
        .auto-style11 {
            width: 60%;
            max-width: 1320px;
            height: 100%;
            margin-left: auto;
            margin-right: auto;
            padding-left: var(--bs-gutter-x, .75rem);
            padding-right: var(--bs-gutter-x, .75rem);
            padding-bottom: 50px;
            background-color: #f8f9fa;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
        <div class="auto-style11" >
            <center>
                <h3> Create Account</h3>
                <p>Please register using account detail below</p>
            </center>
             <label for="fname"><b>First Name
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FNameTextBox" 
                ErrorMessage="is required*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </b></label>
&nbsp;<asp:TextBox runat="server" ID="FNameTextBox" placeholder="Enter First Name"></asp:TextBox>
             <label for="lname"><b>Last Name
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LNameTextBox" 
                ErrorMessage="is required*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </b></label>
            &nbsp;<asp:TextBox runat="server" ID="LNameTextBox" placeholder="Enter Last Name"></asp:TextBox>
            <label for="email" ><b>Email Address
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailTextBox" 
                ErrorMessage="is required*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </b></label>
&nbsp;<asp:TextBox runat="server" ID="EmailTextBox" placeholder="Enter Email Address"></asp:TextBox>
            <label for="psw" class="auto-style108"><b>Password</b></label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                runat="server" ControlToValidate="PassTextBox" ErrorMessage="is required*" Font-Bold="True" 
                ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox runat="server" ID="PassTextBox" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="regbtn" CssClass="regbtn" Text="Register" OnClick="regbtn_Click" />
           
           Already have an account?<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" 
               CausesValidation="false" >Sign In</asp:LinkButton>
</div>
</asp:Content>
