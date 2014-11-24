<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Kanban.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="CSS/KanbanStyle.css" rel="stylesheet" type="text/css" />

</head>
<body class="small login">

    <div id="header">
		<div class="wrapper">
			<h1>Sign Up</h1>
		</div>
	</div>

    <div id="container">
    	<div id="content">
    		<div class="wrapper">

    <form id="form1" runat="server">
        <asp:Table id="table2"  style="margin-left: auto; margin-right: auto;" runat="server">

          <asp:TableRow ID="tablerow1" runat="server">
              <asp:TableCell>
                  <p CssClass="mtop0 mbottom025"><strong><asp:Label ID="lblUN" runat="server" Text="User Name:"></asp:Label></strong>
                               </p>
                  <asp:TextBox ID="txtUN" tabindex="1" CssClass="inputtext" runat="server"></asp:TextBox>     
                 </br>                           
                <asp:CustomValidator ID="ValidateUN" runat="server" ControlToValidate="txtUN" ErrorMessage="Username has already been taken" OnServerValidate="ValidateUN_ServerValidate" Display="Dynamic" ForeColor="Red"></asp:CustomValidator>
                <asp:RequiredFieldValidator ID="ValidateUsername" runat="server" ControlToValidate="txtUN" ErrorMessage="Please enter a username" ForeColor="Red"></asp:RequiredFieldValidator>
                 </asp:TableCell>                                
           </asp:TableRow> 

            <asp:TableRow ID="tablerow2" runat="server">
			<asp:TableCell ><p CssClass="mtop05 mbottom025"><strong><asp:Label ID="lblEm" runat="server" Text="E-mail:"></asp:Label></strong>
                              		</p>	
                <asp:TextBox ID="txtEm" runat="server" CssClass="inputtext"></asp:TextBox>        
                </br>       	                                  
                <asp:RegularExpressionValidator ID="ValidateEmail" runat="server" ControlToValidate="txtEm" ErrorMessage="Please check your email again" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEm" ErrorMessage="Please give your email here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="tablerow3" runat="server">
			<asp:TableCell><p CssClass="mtop05 mbottom025"><strong><asp:Label ID="lblPWD" runat="server" Text="Password:"></asp:Label></strong>
                              		</p>
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" CssClass="inputtext"></asp:TextBox> 
                </br>      
                <asp:Label ID="lbl_p" runat="server" Text="(*requires 8-12 characters)"></asp:Label>
                </br>
                <asp:CustomValidator ID="ValidatePW" runat="server" ControlToValidate="txtpwd" ErrorMessage="Your password should be between 8-12 characters" OnServerValidate="ValidatePW_ServerValidate" Display="Dynamic" ForeColor="Red"></asp:CustomValidator>
                <asp:RequiredFieldValidator ID="ValidatePassword" runat="server" ControlToValidate="txtpwd" ErrorMessage="Please give your password here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow ID="tablerow4" runat="server">
			<asp:TableCell><p CssClass="mtop05 mbottom025"><strong><asp:Label ID="lblrp" runat="server" Text="Repeat password:"></asp:Label></strong>
                              		</p>                             
                <asp:TextBox ID="txtrp" runat="server" TextMode="Password" CssClass="inputtext"></asp:TextBox>
                </br>
                <asp:CompareValidator runat="server" ID="ValidateRepeatpw" ControlToValidate="txtrp" ControlToCompare="txtpwd" Operator="Equal" Display="Dynamic" Text="Please repeat your password" ForeColor="Red"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="ValidateRepeatPasswprd" runat="server" ControlToValidate="txtpwd" ErrorMessage="Please repeat your password here" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow ID="tablerow5" runat="server">
							<asp:TableCell style="padding-top: 10px; text-align :right ;">
                                <asp:Button CssClass="public-button" ID="btnSubmit" runat="server" Text="Submit"  OnClick="btnSubmit_Click1" />
                                   </asp:TableCell>
						</asp:TableRow>
					</asp:Table>
				</form>
			
        </div>
            </div>

    </div>
    
</body>
</html>


