using Microsoft.AspNetCore.Mvc;

namespace BodegaAdriana.Controllers
{
    public class ContactoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult EnviarMensaje(string nombre, string email, string mensaje)
        {
            // Aquí podrías guardar en BD o enviar por correo real
            ViewBag.Exito = $"¡Gracias {nombre}! Hemos recibido tu mensaje y pronto nos pondremos en contacto contigo.";
            return View("Index");
        }
    }
}
