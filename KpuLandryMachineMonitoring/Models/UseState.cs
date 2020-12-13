using System;

namespace KpuLandryMachineMonitoring.Models
{
    public class UseState
    {
        public int StudentNumber { get; set; }
        public int MachineID { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
    }
}