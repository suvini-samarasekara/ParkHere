using System;
using Npgsql;


namespace ParkHere
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            //TestConnection();
            Console.WriteLine("Enter Vehicle Number : ");
            string vehicleNumber = Console.ReadLine();
            Console.WriteLine("Enter Your NIC : ");
            string ownerNIC = Console.ReadLine();
            InsertRecord(vehicleNumber, ownerNIC);
            Console.ReadKey();
        }

        private static void InsertRecord(string vehicleNumber,string ownerNIC)
        {
            using(NpgsqlConnection con = GetConnection())
            {
                string query = $@"INSERT INTO public.Vehicle(VehicleNumber,OwnerNIC)VALUES(@vehicleNumber,@ownerNIC)";
                
                NpgsqlCommand cmd = new NpgsqlCommand(query,con);
                con.Open();

                cmd.Parameters.AddWithValue("vehicleNumber", vehicleNumber);
                cmd.Parameters.AddWithValue("ownerNIC", ownerNIC);
                cmd.Prepare();
                int n = cmd.ExecuteNonQuery();
                if (n == 1)
                    Console.WriteLine("Inserted");
            }
        }

        private static void TestConnection()
        {
            using(NpgsqlConnection con = GetConnection())
            {
                con.Open();
                if (con.State == System.Data.ConnectionState.Open)
                    Console.WriteLine("Connected");
            }
        }

        private static NpgsqlConnection GetConnection()
        {
            return new NpgsqlConnection(@"Server=localhost;Port=5432;User Id=postgres;Password=suvini;Database=ParkHereDB;");
        }

    }
}
