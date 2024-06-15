using Microsoft.AspNetCore.Mvc;

namespace E_Greetings_Website.Controllers
{
    public class GreetingsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Shop()
        {
            return View();
        }
        public IActionResult Shop_Details()
        {
            return View();
        }
        public IActionResult Cart()
        {
            return View();
        }
        public IActionResult CheckOut()
        {
            return View();
        }
        public IActionResult Testimonial()
        {
            return View();
        }
        public IActionResult error_404()
        {
            return View();
        }
        public IActionResult Contact()
        {
            return View();
        }
    }
}
