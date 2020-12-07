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

        public dynamic GetUseStateData()
        {
            var studentUseStateResultList = new List<StudentUseState>();
            const string sql = @"
                SELECT name, room_number, phone_number, machine_id, start_time, end_time
                FROM student
                         INNER JOIN use_state us on student.student_number = us.student_number
                WHERE machine_id in (
                    SELECT machine_id
                    FROM laundry_machine
                    WHERE locate_floor = 3
                )
                ORDER BY machine_id ASC;
            ";

            using var connection = GetConnection();
            connection.Open();
            var command = new MySqlCommand(sql, connection);
            using var reader = command.ExecuteReader();

            while (reader.Read())
                studentUseStateResultList.Add(new StudentUseState
                {
                    Name = reader["name"].ToString(),
                    RoomNumber = reader["room_number"].ToString(),
                    PhoneNumber = reader["phone_number"].ToString(),
                    MachineID = Convert.ToInt32(reader["machine_id"]),
                    StartTime = Convert.ToDateTime(reader["start_time"]),
                    EndTime = Convert.ToDateTime(reader["end_time"])
                });

            return studentUseStateResultList;
        }
    }
}