using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace Kanban
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int Task_Status = Convert.ToInt32(context.Request.Params["status"]);
            int Task_ID = Convert.ToInt32(context.Request.Params["id"]);

            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");

            DatabaseConnection connectionClass = new DatabaseConnection();
            connectionClass.OpenConnection();
            connectionClass.executeNonQueryCommand("UPDATE Task SET Task_Status = " + Task_Status + " WHERE Task_ID = " + Task_ID);
            connectionClass.CloseConnection();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}