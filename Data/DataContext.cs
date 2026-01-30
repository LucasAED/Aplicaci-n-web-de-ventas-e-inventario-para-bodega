using Microsoft.EntityFrameworkCore;
using BodegaAdriana.Models;

namespace BodegaAdriana.Data
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options) { }
        public DbSet<Producto> Productos { get; set; }
    }
}
