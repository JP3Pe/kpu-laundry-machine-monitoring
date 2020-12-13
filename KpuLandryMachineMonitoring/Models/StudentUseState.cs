using System;

namespace KpuLandryMachineMonitoring.Models
{
    public class StudentUseState
    {
        public string Name { get; set; }
        public string PhoneNumber { get; set; }
        public string RoomNumber { get; set; }
        public int MachineID { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
    }
}