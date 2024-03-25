using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MP2_IT114L
{
    public class CartRepository
    {
        public void AddToCart(string productId, int Quantity)
        {
            //Replace connectionString according to server            
            var connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Carl\Downloads\MP2-IT114L-master\App_Data\mystore.mdf;Integrated Security=True";
            using (var connection = new SqlConnection(connectionString))
            using (var command = connection.CreateCommand())
            {
                connection.Open();
                command.CommandText =
                //"INSERT INTO Cart (Cart_Id, Date_Added, Quantity, Product_Id) " +
                //"SELECT @Cart_Id, @Date_Added, @Quantity, Product_Id " +
                //"FROM Record " +
                //"WHERE SomeCondition";
                "INSERT INTO Cart (Cart_Id, Date_Added, Quantity, Product_Id) " +
                "VALUES (@Cart_Id, @Date_Added, @Quantity, @Product_Id)";

                string cartId = GenerateCartId();

                command.Parameters.AddWithValue("@Cart_Id", cartId);
                command.Parameters.AddWithValue("@Date_Added", DateTime.Today);
                command.Parameters.AddWithValue("@Quantity", Quantity);
                command.Parameters.AddWithValue("Product_Id", productId);

                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        private string GenerateCartId()
        {
            int latestCartId = GetLatestCartId();
            int newCartId = latestCartId + 1;
            string cartIdString = "C" + newCartId.ToString("D8");

            return cartIdString;
        }

        private int GetLatestCartId()
        {
            int latestCartId = 0;
            // Replace the connection string according to your server configuration   
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Carl\Downloads\MP2-IT114L-master\App_Data\mystore.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT MAX(Cart_Id) FROM Cart";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    var result = command.ExecuteScalar();
                    if (result != null && result != DBNull.Value)
                    {
                        string cartId = result.ToString();
                        string numericPart = cartId.Substring(1);
                        latestCartId = int.Parse(numericPart);
                    }
                }
            }

            return latestCartId;
        }
    }
}