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
        String projectPath = @"|DataDirectory|\ProjectDatabase.mdb";                            //Relative path for the database
        String connectionString;
        OleDbConnection DBConnection = new OleDbConnection();
        OleDbCommand dbCommand = new OleDbCommand();
        OleDbDataReader dbReader;

        public String Connection() {

            connectionString = "Provider = Microsoft.Jet.OLEDB.4.0;" + "Data Source = " + projectPath;
            DBConnection.ConnectionString = connectionString;

            DBConnection.Open();
            DBConnection.Close();
        }
    }
}