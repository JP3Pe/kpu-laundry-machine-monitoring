namespace KpuLandryMachineMonitoring.Models
{
    public class Student
    {
        public int StudentNumber { get; set; }
        public string PhoneNumber { get; set; }
        public string RoomNumber { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
        public string PasswordSalt { get; set; }
        public string Email { get; set; }
    }
}