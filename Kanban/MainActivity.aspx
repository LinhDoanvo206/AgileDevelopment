<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainActivity.aspx.cs" Inherits="Kanban.MainActivity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/KanbanStyle.css" />
    <title></title>
    <style type="text/css">
        #form1 {
            width: 1350px;
        }
        .table_header {
            height: 50px;
            background-color: lightgrey;
            font-size: large;
            font-weight: 200;
            vertical-align:middle;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div1" style="width:270px; float:left">
            <div class="table_header">Product Backlog</div>
            
        </div>
        <div id="div2" style="width:270px; float:left">
            <div class="table_header">Sprint Backlog</div>
        </div>
        <div id="div3" style="width:270px; float:left">
            <div class="table_header">To Do</div>
        </div>
        <div id="div4" style="width:270px; float:left">
            <div class="table_header">Work in Progress</div>
        </div>
        <div id="div5" style="width:270px; float:left">
            <div class="table_header">Done</div>
        </div>
    </form>
</body>
</html>
