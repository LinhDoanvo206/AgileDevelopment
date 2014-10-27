<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainActivity.aspx.cs" Inherits="Kanban.MainActivity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="KanbanBoardGrid"></asp:GridView>
        </div>
    </form>
</body>
</html>
