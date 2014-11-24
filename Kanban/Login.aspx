<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Kanban.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
   <link href="CSS/KanbanStyle.css" rel="stylesheet" type="text/css" />
</head>
<body class="small login">

    <div id="header">
		<div class="wrapper">
			<h1>Login</h1>
		</div>
	</div>
    <div id="container">
    	<div id="content">
    		<div class="wrapper">
    <form id="form1" runat="server">
        
        
    <asp:Table id="table1"  style="margin-left: auto; margin-right: auto;" runat="server">

						<asp:TableRow ID="tablerow1" runat="server">
							<asp:TableCell cellspan="2"><p class="mtop0 mbottom025"><strong><asp:Label ID="lblUsername"  runat="server" Text="User Name:"></asp:Label></strong>
                                </p>
                                <asp:TextBox ID="txtUserName" tabindex="1" CssClass="inputtext" runat="server"></asp:TextBox>  		
                                </br>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Style="margin-left: 30px" ErrorMessage="Please enter your username" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>	               
						</asp:TableCell>
                                </asp:TableRow>

						<asp:TableRow ID="tablerow2" runat="server">
							<asp:TableCell cellspan="2"><p class="mtop05 mbottom025"><strong><asp:Label ID ="lblPassword"  runat="server" Text="Password:"></asp:Label></strong>
                                </p>
                                <asp:TextBox ID="txtpwd" tabindex="1" CssClass="inputtext" runat="server"></asp:TextBox>  
                                 </br>		
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your password" Style="margin-left: 30px" ControlToValidate="txtpwd" ForeColor="Red"></asp:RequiredFieldValidator>
						</asp:TableCell>
                                </asp:TableRow>
								
                        <asp:TableRow ID="tablerow3" runat="server">
                            <asp:TableCell>
                                <asp:label ID="lblErr" runat="server" ></asp:Label>
                                </asp:TableCell>
        			    </asp:TableRow>
						
                        

						<asp:TableRow ID="tablerow4" runat="server">
                            
							<asp:TableCell style="padding-top: 10px; text-align :right ;">
                                 <p class="mtop025 mbottom0 smalltxt"><a href="Kanban.Signup.aspx">Sign up?</a>
                                <asp:Button CssClass="public-button" ID="btnSubmit" runat="server" Text="Submit"  OnClick="btnSubmit_Click" />
                                     </p>
                                </asp:TableCell>
						</asp:TableRow>
					</asp:Table>
				</form>
			
        </div>
            </div>

    </div>
    
</body>
</html>
