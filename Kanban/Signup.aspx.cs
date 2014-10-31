using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        
       protected void ValidateUN_ServerValidate(object source, ServerValidateEventArgs args)
       {
           String connstr;
           connstr = "Provider = Microsoft.Jet.OLEDB.4.0;" + @"Data Source = C:\Users\Nguyen Minh Son\Documents\Visual Studio 2013\Projects\Project\ProjectDatabase.mdb;";
           OleDbConnection myConnection = new OleDbConnection();
           myConnection.ConnectionString = connstr;
           OleDbCommand myCommand = new OleDbCommand();
           myCommand.Connection = myConnection;
           myCommand.CommandText = "SELECT count(*) FROM Login WHERE Login_name = '" + txtUN.Text + "'";
           myCommand.CommandType = CommandType.Text;
           myConnection.Open();
           int count = Convert.ToInt16(myCommand.ExecuteScalar());
           if (count == 0)
           {
               args.IsValid = true;
           }

           else
               args.IsValid = false;
           myConnection.Close();
       }

       protected void ValidatePW_ServerValidate(object source, ServerValidateEventArgs args)
       {
           lbl_p.Text = "";
           bool length = args.Value.Length > 7;
           bool maxlength = args.Value.Length < 13;
           if (length && maxlength)
           {
               args.IsValid = true;
           }
           else
               args.IsValid = false;
       }

       protected void btnSubmit_Click1(object sender, EventArgs e)
       {
           String connstr;
           connstr = "Provider = Microsoft.Jet.OLEDB.4.0;" + @"Data Source = C:\Users\Nguyen Minh Son\Documents\Visual Studio 2013\Projects\Project\ProjectDatabase.mdb;";
           OleDbConnection myConnection = new OleDbConnection();
           myConnection.ConnectionString = connstr;
           OleDbCommand myCommand = new OleDbCommand();
           myCommand.Connection = myConnection;
           myCommand.CommandType = CommandType.Text;
           myCommand.CommandText = "INSERT INTO Login (Login_name,[Password])" + " VALUES ('" + txtUN.Text + "','" + txtpwd.Text + "');";
           myConnection.Open();
           myCommand.ExecuteNonQuery();
           myConnection.Close();
           if (this.IsValid)
               Response.Redirect("WebForm2.aspx");
       }
    }
}