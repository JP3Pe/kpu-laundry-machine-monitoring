using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;

namespace KpuLandryMachineMonitoring.Models
{
    public class MariaDBService
    {
        public MariaDBService(string connectionString)
        {
            ConnectionString = connectionString;
        }

        public string ConnectionString { get; set; }

        private MySqlConnection GetConnection()
        {
            return new MySqlConnection(ConnectionString);
        }


        public List<UseStateDataModel> GetData()
        {
            var list = new List<UseStateDataModel>();
            var sql = "SELECT * FROM use_state ";

            using var connection = GetConnection();
            connection.Open();
            var command = new MySqlCommand(sql, connection);

            using var reader = command.ExecuteReader();
            while (reader.Read())
                list.Add(new UseStateDataModel
                {
                    StudentNumber = Convert.ToInt32(reader["student_number"]),
                    MachineID = Convert.ToInt32(reader["machine_id"]),
                    StartTime = Convert.ToDateTime(reader["start_time"].ToString()),
                    EndTime = Convert.ToDateTime(reader["end_time"].ToString())
                });

            return list;
        }
    }
}