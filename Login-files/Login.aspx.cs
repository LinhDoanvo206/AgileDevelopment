using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Project_UI_Design
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String connstr;
            connstr = "Provider = Microsoft.Jet.OLEDB.4.0;" + @"Data Source = D:\TOTO\Finland\Lahti\Autumn 2014\web application\ProjectDatabase.mdb;";
            OleDbConnection myConnection = new OleDbConnection();
            myConnection.ConnectionString = connstr;
            OleDbCommand myCommand = new OleDbCommand();
            myCommand.Connection = myConnection;
            myCommand.CommandText = "SELECT Login_name, Password FROM Login WHERE Login_name = '" + txtUserName.Text + "'";
            myCommand.CommandType = CommandType.Text;
            OleDbDataReader myReader;
            myConnection.Open();
            myReader = myCommand.ExecuteReader();
            TextBox hiddenTB = new TextBox();
            while (myReader.Read())
            {
                hiddenTB.Text = (myReader["Password"].ToString());
            }
            if (hiddenTB.Text == txtpwd.Text)
            {
                Session["username"] = txtUserName.Text;
                Response.Redirect("LoginSuccess.aspx");
            }
            else
            {
                Label labelWrongPass = new Label();
                labelWrongPass.ForeColor = System.Drawing.Color.Red;
                labelWrongPass.Text = "You have entered wrong username or password.";
                Panel1.Controls.Add(labelWrongPass);
            }
            myConnection.Close();
        }

    }
}