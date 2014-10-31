using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Kanban
{
    public partial class MainActivity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseConnection connectionClass = new DatabaseConnection();
            connectionClass.OpenConnection();
            connectionClass.CloseConnection();

            String[] tableArray = { "Product Backlog", "Sprint Backlog", "To do", "Work in Progress", "Done" };

            HtmlTable KanbanTable = new HtmlTable();
            KanbanTable.Attributes.Add("class", "KanbanTable");

            // Start adding content to the table.
            HtmlTableRow row;
            HtmlTableCell cell;

            // Create a new HEADER row.

            row = new HtmlTableRow();
            for (int j = 1; j <= 5; j++)
            {
                // Create a cell and set its text.
                cell = new HtmlTableCell("th");
                cell.InnerHtml = tableArray[j - 1];
                // Add the cell to the current row.
                row.Cells.Add(cell);
            }

            // Add the row to the table.
            KanbanTable.Rows.Add(row);

            // Create a new product row.

            row = new HtmlTableRow();

            for (int j = 1; j <= 5; j++)
            {
                // Create a cell and set its text.
                cell = new HtmlTableCell("td");
                cell.InnerHtml = "Test";
                // Add the cell to the current row.
                row.Cells.Add(cell);
            }

            KanbanTable.Rows.Add(row);

            // Add the table to the page.
            this.Controls.Add(KanbanTable);

            // connectionClass.executeCommand("SELECT * FROM Task");
        }
    }
}