using Microsoft.AspNetCore.Mvc;
using BodegaAdriana.Data;
using Microsoft.EntityFrameworkCore;

namespace BodegaAdriana.Controllers
{
    public class HomeController : Controller
    {
        private readonly DataContext _ctx;
        public HomeController(DataContext ctx) => _ctx = ctx;

        public async Task<IActionResult> Index()
        {
            // Tomamos algunos productos para mostrar en Inicio
            var destacados = await _ctx.Productos
                .OrderBy(p => p.Categoria).ThenBy(p => p.Nombre)
                .Take(8).ToListAsync();
            return View(destacados);
        }
    }
}
