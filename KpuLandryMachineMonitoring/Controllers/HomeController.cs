using System.Collections.Generic;
using KpuLandryMachineMonitoring.Models;
using Microsoft.AspNetCore.Mvc;

namespace KpuLandryMachineMonitoring.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            MariaDBService context = HttpContext.RequestServices.GetService(typeof(MariaDBService)) as MariaDBService;
            List<UseStateDataModel> list = context.GetData();

            return View(list);
        }
    }
}