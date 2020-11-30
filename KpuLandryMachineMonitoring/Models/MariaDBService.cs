using System;
using System.Collections.Generic;
using System.Dynamic;
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
            dynamic useStateModel = new ExpandoObject();

            var studentResultList = new List<Student>();
            var useStateResultList = new List<UseState>();
            const string sql = @"
                SELECT us.student_number, room_number, phone_number, start_time, end_time
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
            {
                studentResultList.Add(new Student
                {
                    StudentNumber = Convert.ToInt32(reader["student_number"]),
                    RoomNumber = reader["room_number"].ToString(),
                    PhoneNumber = reader["phone_number"].ToString()
                });
                useStateResultList.Add(new UseState
                {
                    StudentNumber = Convert.ToInt32(reader["student_number"]),
                    StartTime = Convert.ToDateTime(reader["start_time"]),
                    EndTime = Convert.ToDateTime(reader["end_time"]),  
                });
            }

            useStateModel.UseState = useStateResultList;
            useStateModel.Student = studentResultList;

            return useStateModel;
        }
    }
}