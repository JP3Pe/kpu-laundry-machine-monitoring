using KpuLandryMachineMonitoring.Models;
using Microsoft.EntityFrameworkCore;

namespace KpuLandryMachineMonitoring
{
    public class MariaDBContext : DbContext
    {
        public MariaDBContext(DbContextOptions options) : base(options)
        {
        }

        public virtual DbSet<UseStateDataModel> UseStates { get; set; }
    }
}