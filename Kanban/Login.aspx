﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_UI_Design.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link  href="UI_design.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        #TextArea1 {
            height: 101px;
            width: 276px;
        }
        #Title1 {
            width: 232px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="divNewT">
    <div class ="divNewT1" >
            <asp:Button CssClass="btnC"  ID="ButtonClose" runat="server" Text="Close" Height="27px" />
           <asp:Label ID="lblID" runat="server" Text="Log In"></asp:Label>
          
       </div>
        <br/>
        <br/>
    <div class="divComment" >
        <asp:Label ID="lblUN" runat="server" Text="User Name"></asp:Label>
        <br/>
       
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label>
        <br/>
        <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" />
    </div>
        <asp:Button cssclass="NewTAdd"  ID="btnSubmit" runat="server" Text="Submit" Height="42px" Width="86px" />
    </div>
    </form>
</body>
</html>