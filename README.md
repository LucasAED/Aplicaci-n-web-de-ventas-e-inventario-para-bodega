# 🛒 Sistema de Ventas e Inventario - Bodega Adriana

Este es un sistema de prueba de gestión web diseñado para optimizar el control de ventas, inventario y productos de una bodega. Desarrollado con tecnologías modernas de **.NET 9**, ofrece una interfaz intuitiva y una arquitectura robusta para el manejo de datos comerciales.

---

## 🚀 Tecnologías Utilizadas

* **Backend:** ASP.NET Core 9.0 (Arquitectura MVC)
* **Lenguaje:** C# 13
* **Base de Datos:** PostgreSQL
* **Frontend:** HTML5, CSS3, JavaScript
* **Framework UI:** Bootstrap 5 & jQuery
* **Validaciones:** jQuery Validation Library

---

## 🛠️ Características Principales

* **Gestión de Inventario:** Control total sobre el stock, categorías de productos y proveedores.
* **Módulo de Ventas:** Registro de transacciones con cálculo automático y actualización de stock.
* **Interfaz Responsiva:** Diseño adaptado para ser utilizado tanto en computadoras como en dispositivos móviles.
* **Persistencia de Datos:** Manejo eficiente de transacciones mediante PostgreSQL.
* **Seguridad:** Implementación de validaciones tanto en el lado del cliente como del servidor.

---

## 📋 Requisitos Previos

Antes de ejecutar el proyecto, asegúrate de tener instalado:
1.  [.NET 9.0 SDK](https://dotnet.microsoft.com/download/dotnet/9.0)
2.  [PostgreSQL](https://www.postgresql.org/download/)
3.  [Visual Studio 2022](https://visualstudio.microsoft.com/vs/) (con la carga de trabajo de ASP.NET) o [VS Code](https://code.visualstudio.com/).

---

## ⚙️ Configuración e Instalación

### 1. Clonar el repositorio
```bash
git clone [https://github.com/LucasAED/Aplicaci-n-web-de-ventas-e-inventario-para-bodega.git](https://github.com/LucasAED/Aplicaci-n-web-de-ventas-e-inventario-para-bodega.git)
cd Aplicaci-n-web-de-ventas-e-inventario-para-bodega
```
### 2. Configurar la Base de Datos
Crea una base de datos en PostgreSQL llamada BodegaAdriana.

Importa el script SQL que se encuentra en la carpeta del proyecto (ej: Database/backup.sql).

Actualiza tu cadena de conexión en el archivo appsettings.json:

JSON
```bash
"ConnectionStrings": {
  "PostgresConnection": "Host=localhost;Database=BodegaAdriana;Username=tu_usuario;Password=tu_contraseña"
}
```
### 3. Ejecutar la aplicación
Desde la terminal en la raíz del proyecto:

Bash
dotnet restore
dotnet run
