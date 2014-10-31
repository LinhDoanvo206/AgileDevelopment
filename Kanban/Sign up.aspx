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
                <asp:Button CssClass="btnC"  ID="ButtonClose" runat="server" Text="Close" Height="27px" />
               <asp:Label ID="lblID" runat="server" Text="Sign Up"></asp:Label>          
           </div>
            <br/>
            <br/>
    <div class="divComment">
        <asp:Label ID="lblUN" runat="server" Text="User Name:"></asp:Label>
        <br/>
        <asp:TextBox ID="txtUN" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_U" runat="server" Text="(*press Enter check if user name valid)"></asp:Label>
        <br/>
        <br/>
        <asp:Label ID="lblEm" runat="server" Text="E-mail:"></asp:Label>
        <br/>
        <asp:TextBox ID="txtEm" runat="server"></asp:TextBox>
         <br/>
         <br/>
        <asp:Label ID="lblPWD" runat="server" Text="Password:"></asp:Label>
        <br/>
        <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_p" runat="server" Text="(*require 8-12 charactors)"></asp:Label>
        <br/>
         <br/>
        <asp:Label ID="lblrp" runat="server" Text="Repeat password"></asp:Label>
        <br/>
        <asp:TextBox ID="txtrp" runat="server"></asp:TextBox>
        </div>
        <br/>
        <asp:Button CssClass ="NewTAdd"  ID="btnSbm" runat="server" Text="Submit" />
    </div>
    </form>
</body>
</html>
