using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace Kanban
{
    public class DatabaseConnection
    {
        String projectPath = @"|DataDirectory|\ProjectDatabase.mdb";                                                //Relative path for the database to avoid DB not found
        String connectionString;
        OleDbConnection DBConnection = new OleDbConnection();
        OleDbCommand DBCommand = new OleDbCommand();
        OleDbDataReader DBReader;
        String SQLResults;

        public void OpenConnection()
        {

            connectionString = "Provider = Microsoft.Jet.OLEDB.4.0;" + "Data Source = " + projectPath;
            DBConnection.ConnectionString = connectionString;

            DBConnection.Open();
        }

        public void CloseConnection()
        {
            DBConnection.Close();
        }

        public Boolean executeCommand(String SQLCommand)                                                            // Executes the command submited by the method. Use it when you want to submit the command such as INSERT which also will return value TRUE if command submitted sucessfully. 
        {
            DBCommand.Connection = DBConnection;
            DBCommand.CommandText = SQLCommand;
            DBCommand.CommandType = CommandType.Text;

            try
            {
                DBCommand.ExecuteNonQuery();
                return true;
            }

            catch (Exception error)
            {
                System.Diagnostics.Debug.WriteLine(error.ToString());                                               // Prints the error debug info in the console. Only works during DEBUG option. Use DEBUG -> Start Debugging if you want to see the error message.
                return false;
            }      
        }

        public String readDataCommand()                                                                             // Returns the information submited by the command SELECT as STRING. 
        {
            return SQLResults;
        }
    }
}