<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewTask.aspx.cs" Inherits="Kanban.AddNewTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link  href="CSS/KanbanStyle.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
</head>
<body >

    <div id="header">
		<div class="wrapper1">
			<h1>Add New Task</h1>
		</div>
	</div>

    <div id="container" class="internal" >
	
		<div id="top">
			
			<h2>Task details</h2>
						
		</div>
    
    	<div id="content">
			<div class="wrapper">
      <form id="form1" runat="server">
                 
        <div class ="divNewT2" >
            <asp:Label CssClass ="lblTF"  ID="Label4" runat="server" Text="Task fields"></asp:Label>
         
            <br/>
            <br/>

            <asp:Table id="table3"  style="margin-left: auto; margin-right: auto;" runat="server">

                <asp:TableRow ID="tablerow1" runat="server">
              <asp:TableCell>
            <asp:Label ID="Label5" runat="server" Text="Color:"></asp:Label>
            <br/>
            <asp:DropDownList ID="DropDownListColor" runat="server"  CssClass="droplist">
                <asp:ListItem Text="red" Value ="1"></asp:ListItem>
                <asp:ListItem Text="Blue" Value ="2"></asp:ListItem>
                <asp:ListItem Text="Green" Value ="3"></asp:ListItem>
                <asp:ListItem Text="Yellow" Value ="4"></asp:ListItem>
                <asp:ListItem Text="Pink" Value ="5"></asp:ListItem>
            </asp:DropDownList>

                   </asp:TableCell>                                
           </asp:TableRow> 

            <asp:TableRow ID="tablerow2" runat="server">
              <asp:TableCell>
            <asp:Label ID="Label7" runat="server" Text="Complexity:"></asp:Label>
             <br/>
            <asp:TextBox ID="TextBoxComplexity" runat="server" Width="94px" CssClass="inputtext"></asp:TextBox>
                    </asp:TableCell>
                <asp:TableCell> &nbsp;</asp:TableCell>
                <asp:TableCell>
            <asp:Label ID="Label8" runat="server" Text="Assignee:"></asp:Label>
            <br/>
            <asp:DropDownList ID="DropDownListAssignee" runat="server" CssClass="droplist">
            </asp:DropDownList>
                  </asp:TableCell>                                
           </asp:TableRow> 


            <asp:TableRow ID="tablerow3" runat="server">
              <asp:TableCell>
            <asp:Label ID="Label9" runat="server" Text="Estimation Hours:"></asp:Label>
                  <br/>
          <asp:TextBox ID="TextBoxDeadline" runat="server" Width="98px" CssClass="inputtext"></asp:TextBox>
                  </asp:TableCell>
                <asp:TableCell> &nbsp;</asp:TableCell>
                <asp:TableCell>
            <asp:Label ID="Label10" runat="server" Text="Column:"></asp:Label>
            <br/>
            
            <asp:DropDownList ID="DropDownListColumn" runat="server" CssClass="droplist">
                <asp:ListItem Text="Backlog" Value ="1"></asp:ListItem>
                <asp:ListItem Text="Sprint" Value ="2"></asp:ListItem>
                <asp:ListItem Text="To do" Value ="3"></asp:ListItem>
                <asp:ListItem Text="Doing" Value ="4"></asp:ListItem>
                <asp:ListItem Text="Done" Value ="5"></asp:ListItem>
            </asp:DropDownList>
               </asp:TableCell>
                 </asp:TableRow>
                </asp:Table>
            <br/>
            <br/>

        </div>

       
        <div class ="divNewT3" >
            <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
            <br/>
            <asp:TextBox runat="server" ID="txtTitle"  CssClass="inputtext"></asp:TextBox><br />
            <asp:RequiredFieldValidator runat="server" ID="ValidateTitle" ControlToValidate="txtTitle" ErrorMessage="Please insert task title!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br/>
            <br/>
            <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
            <br/>
            <asp:TextBox runat="server" ID="txtDescription" TextMode="MultiLine" Height="97px" Width="263px" CssClass="inputtext1"></asp:TextBox>
             <br/><br/>
            <asp:Button CssClass ="public-button" style="text-align :center  ;"  ID="ButtonAddTask" runat="server" Text="Add Task"  OnClick="ButtonAddTask_Click"/>
        </div>

        <br/><br/>
          <br />
        
        
        
      </form>
    
     </div>        
       </div>           
              </div>    
         
</body>
</html>

