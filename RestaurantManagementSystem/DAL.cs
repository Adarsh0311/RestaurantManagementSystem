using System;
using System.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace RestaurantManagementSystem
{
    public class DAL
    {

        public static SqlDataReader GetExecuteReader(String cmdText)
        {
            string con = ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(con);

            SqlCommand cmd = new SqlCommand(cmdText, sqlConnection);

            sqlConnection.Open();
            return cmd.ExecuteReader();
        }

        public static SqlDataReader GetExecuteReader(SqlCommand cmd)
        {
            string con = ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(con);

            cmd.Connection = sqlConnection;

            sqlConnection.Open();

            return cmd.ExecuteReader();
        }

        public static void SetExecuteNonQuery(SqlCommand cmd)
        {
            string con = ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(con);

            cmd.Connection = sqlConnection;
            
            sqlConnection.Open();

            cmd.ExecuteNonQuery();

            sqlConnection.Close();
        }
    }

        public static void Transactions(SqlCommand cmd)
        {
        string con = ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString;
        OleDbConnection Conn = new OleDbConnection(con);

         }
}