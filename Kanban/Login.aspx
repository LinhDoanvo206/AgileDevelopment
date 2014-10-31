<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Kanban.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link  href="CSS/KanbanStyle.css" rel="stylesheet" type="text/css"/>
 
</head>
<body>
    <form id="form1" runat="server">
    <div class="divNewT">
    <div class ="divNewT1" >
           <asp:Label ID="lblID" runat="server" Text="Log In"></asp:Label>
          
            <asp:Button CssClass="btnC"  ID="ButtonClose" runat="server" Text="Close" Height="27px" />
          
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
        <asp:Button cssclass="NewTAdd"  ID="btnSubmit" runat="server" Text="Submit"/>
    </div>
    </form>
</body>
</html>
