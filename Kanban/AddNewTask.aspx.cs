using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Kanban
{
    public partial class AddNewTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void ButtonAddTask_Click(object sender, EventArgs e)
        {
            DatabaseConnection connectionClass = new DatabaseConnection();
            connectionClass.OpenConnection();
            connectionClass.executeNonQueryCommand("INSERT INTO Task (Task_Name,Task_Status)" + " VALUES ('" + txtTitle.Text + "','" + DropDownListColumn.SelectedValue + "');");
            connectionClass.CloseConnection(); 
        }
    }
}