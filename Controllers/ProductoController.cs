using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BodegaAdriana.Data;
using BodegaAdriana.Models;
using System.Text.Json;

namespace BodegaAdriana.Controllers
{
    public class ProductoController : Controller
    {
        private readonly DataContext _ctx;
        private const string KEY = "carrito";

        public ProductoController(DataContext ctx) => _ctx = ctx;

        public async Task<IActionResult> Index()
        {
            var productos = await _ctx.Productos
                .OrderBy(p => p.Categoria).ThenBy(p => p.Nombre)
                .ToListAsync();

            // Construye un diccionario idProducto -> cantidad desde la sesión del carrito
            ViewBag.CarritoCounts = GetCarritoCounts();
            return View(productos);
        }

        // Lee la sesión "carrito" (List<CarritoItem>) y devuelve diccionario de cantidades
        private Dictionary<int, int> GetCarritoCounts()
        {
            var json = HttpContext.Session.GetString(KEY);
            if (string.IsNullOrEmpty(json)) return new Dictionary<int, int>();

            var lista = JsonSerializer.Deserialize<List<CarritoItem>>(json) ?? new List<CarritoItem>();
            return lista
                .GroupBy(i => i.Producto.IdProducto)
                .ToDictionary(g => g.Key, g => g.Sum(x => x.Cantidad));
        }
    }
}
