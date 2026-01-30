using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BodegaAdriana.Models
{
    [Table("Productos")]
    public class Producto
    {
        [Key]
        [Column("IdProducto")]
        public int IdProducto { get; set; }

        [Column("Nombre")]
        public string Nombre { get; set; } = string.Empty;

        [Column("Categoria")]
        public string Categoria { get; set; } = string.Empty;

        [Column("Precio")]
        public decimal Precio { get; set; }

        [Column("ImagenUrl")]
        public string ImagenUrl { get; set; } = string.Empty;
    }
}
