using KpuLandryMachineMonitoring.Models;
using Microsoft.AspNetCore.Mvc;

namespace KpuLandryMachineMonitoring.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index(int id = 3)
        {
            var context = HttpContext.RequestServices.GetService(typeof(MariaDBService)) as MariaDBService;
            var useStateDataList = context.GetUseStateData(id);

            ViewData["floor"] = id;

            return View(useStateDataList);
        }
    }
}