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

        private string ConnectionString { get; }

        private MySqlConnection GetConnection()
        {
            return new MySqlConnection(ConnectionString);
        }

        public List<UseState> GetUseStateData()
        {
            var resultList = new List<UseState>();
            const string sql = "SELECT student_number, machine_id, start_time, end_time FROM use_state ";

            using var connection = GetConnection();
            connection.Open();
            var command = new MySqlCommand(sql, connection);

            using var reader = command.ExecuteReader();
            while (reader.Read())
                resultList.Add(new UseState
                {
                    StudentNumber = Convert.ToInt32(reader["student_number"]),
                    MachineID = Convert.ToInt32(reader["machine_id"]),
                    StartTime = Convert.ToDateTime(reader["start_time"].ToString()),
                    EndTime = Convert.ToDateTime(reader["end_time"].ToString())
                });

            return resultList;
        }
    }
}