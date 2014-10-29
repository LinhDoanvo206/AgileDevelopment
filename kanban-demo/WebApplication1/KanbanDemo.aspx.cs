using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class KanbanDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int num = 0;
            string str = TextBox1.Text;
            num = Convert.ToInt32(str);
           
            Panel1.Controls.Add(new LiteralControl("<ul id='sortable'>"));
            for (int i = 1; i <= num; i++)
            {
                Panel1.Controls.Add(new LiteralControl("<li class='div-note'>Note "+i+"</li>"));
            }
            Panel1.Controls.Add(new LiteralControl("<ul>"));

        }
    }
}