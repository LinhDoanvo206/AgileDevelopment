<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KanbanDemo.aspx.cs" Inherits="WebApplication1.KanbanDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" type="text/css" rel="stylesheet" />
    <meta charset="utf-8">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#sortable").sortable();
            $("#sortable").disableSelection();
        });
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    
    </div>

        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>

    </form>
</body>
</html>
