using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kanban
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            Label header = new Label();
            header.Text = "Congratulation. You have successfully logged in as " + username + ".";
            form1.Controls.Add(header);
        }
    }
}