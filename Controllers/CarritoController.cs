using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BodegaAdriana.Data;
using BodegaAdriana.Models;
using System.Text.Json;

namespace BodegaAdriana.Controllers
{
    public class CarritoController : Controller
    {
        private const string KEY = "carrito";
        private readonly DataContext _ctx;
        public CarritoController(DataContext ctx) => _ctx = ctx;

        // Mostrar carrito
        public IActionResult Index()
        {
            var carrito = GetCarrito();
            return View(carrito);
        }

        // Agregar producto
        [HttpPost]
        public async Task<IActionResult> Agregar(int id)
        {
            var prod = await _ctx.Productos.FirstOrDefaultAsync(p => p.IdProducto == id);
            if (prod == null) return NotFound();

            var carrito = GetCarrito();
            var item = carrito.FirstOrDefault(c => c.Producto.IdProducto == id);
            if (item == null)
                carrito.Add(new CarritoItem { Producto = prod, Cantidad = 1 });
            else
                item.Cantidad = item.Cantidad + 1; // más explícito

            SaveCarrito(carrito);
            return RedirectToAction("Index","Producto");
        }

        // Quitar una unidad
        [HttpPost]
        public IActionResult Quitar(int id)
        {
            var carrito = GetCarrito();
            var item = carrito.FirstOrDefault(c => c.Producto.IdProducto == id);
            if (item != null)
            {
                item.Cantidad--;
                if (item.Cantidad <= 0) carrito.Remove(item);
                SaveCarrito(carrito);
            }
            return RedirectToAction(nameof(Index));
        }

        // Eliminar completamente
        [HttpPost]
        public IActionResult Eliminar(int id)
        {
            var carrito = GetCarrito();
            carrito.RemoveAll(c => c.Producto.IdProducto == id);
            SaveCarrito(carrito);
            return RedirectToAction(nameof(Index));
        }

        // Vaciar carrito
        [HttpPost]
        public IActionResult Vaciar()
        {
            SaveCarrito(new List<CarritoItem>());
            return RedirectToAction(nameof(Index));
        }

        // Vaciar carrito vía AJAX (sin redirección)
        [HttpPost]
        public IActionResult VaciarAjax()
        {
            SaveCarrito(new List<CarritoItem>());
            return Ok();
        }

        // --- Helpers de sesión ---
        private List<CarritoItem> GetCarrito()
        {
            var json = HttpContext.Session.GetString(KEY);
            return string.IsNullOrEmpty(json)
                ? new List<CarritoItem>()
                : JsonSerializer.Deserialize<List<CarritoItem>>(json)!;
        }

        private void SaveCarrito(List<CarritoItem> carrito)
        {
            var json = JsonSerializer.Serialize(carrito);
            HttpContext.Session.SetString(KEY, json);
        }
    }
}
