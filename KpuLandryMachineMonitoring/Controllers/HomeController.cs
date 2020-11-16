using Microsoft.AspNetCore.Mvc;

namespace KpuLandryMachineMonitoring.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}