using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;

namespace DBInlämningsuppgift2
{
    class Program
    {
        public static string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        static void Main(string[] args)
        {
            DisplayMenu();
                 
        }
        public static void DisplayMenu()
        {
            int userInput = 0;
            Console.WriteLine("1) Lägg till kund");
            Console.WriteLine("2) Lägg till produkt");
            Console.WriteLine("3) Uppdatera produktpris");
            Console.WriteLine("4) Avsluta");

            do
            {
                try { 
                    userInput = int.Parse(Console.ReadLine());

                    if (userInput == 1)
                    {
                        InsertCustomer();
                    }
                    else if (userInput == 2)
                    {
                        InsertProduct();
                    }
                    else if (userInput == 3)
                    {
                        UpdateProductPrice();
                    }
                }
                catch
                {
                    Console.WriteLine("Ange ett av de fyra alternativen");
                }
            }
            while (userInput != 1 || userInput != 2 || userInput != 3 || userInput != 4);  
        }
        public static void InsertCustomer()
        {
            Console.Clear();
            string customerID;
            string companyName;
            string contactName;
            using (SqlConnection cn = new SqlConnection(connectionString))
            {
                cn.Open();
                using (SqlCommand cmd = new SqlCommand("InsertCustomer", cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    Console.Write("Ange ett kundID (5 Versaler): ");
                    customerID = Console.ReadLine();
                    cmd.Parameters.AddWithValue("@CustomerID", customerID);
                    Console.Write("Ange företagsnamn: ");
                    companyName = Console.ReadLine();
                    cmd.Parameters.AddWithValue("@CompanyName", companyName);
                    Console.Write("Ange kontaktnamn: ");
                    contactName = Console.ReadLine();
                    cmd.Parameters.AddWithValue("@ContactName", contactName);
                    cmd.ExecuteNonQuery();
                }
            }
            Console.Clear();
            DisplayMenu();
        }
        public static void InsertProduct()
        {
            Console.Clear();
            string productName;
            string quantityPerUnit;
            double unitPrice;
            using (SqlConnection cn = new SqlConnection(connectionString))
            {
                cn.Open();
                using (SqlCommand cmd = new SqlCommand("InsertProduct", cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    Console.Write("Ange produktnamn: ");
                    productName = Console.ReadLine();
                    cmd.Parameters.AddWithValue("@ProductName", productName);

                    Console.Write("Ange kvantitet per enhet: ");
                    quantityPerUnit = Console.ReadLine();
                    cmd.Parameters.AddWithValue("@QuantityPerUnit", quantityPerUnit);

                    Console.Write("Ange enhetspris: ");
                    unitPrice = int.Parse(Console.ReadLine());
                    cmd.Parameters.AddWithValue("@UnitPrice", unitPrice);
                    cmd.ExecuteNonQuery();
                }
            }
            Console.Clear();
            DisplayMenu();
        }
        public static void UpdateProductPrice()
        {

        }
    }
}
