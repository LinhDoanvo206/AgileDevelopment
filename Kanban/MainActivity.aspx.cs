﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kanban
{
    public partial class MainActivity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DatabaseConnection connectionClass = new DatabaseConnection();
                connectionClass.Connection();
            }

            catch (Exception exc)
            {

            }
            
        }
    }
}