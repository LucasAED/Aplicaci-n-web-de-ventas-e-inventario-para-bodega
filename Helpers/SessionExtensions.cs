using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;

namespace BodegaAdriana.Helpers
{
    public static class SessionExtensions
    {
        /// <summary>
        /// Guarda un objeto en la sesión serializado en JSON
        /// </summary>
        public static void SetObject<T>(this ISession session, string key, T value)
        {
            var stringValue = JsonConvert.SerializeObject(value);
            session.SetString(key, stringValue);
        }

        /// <summary>
        /// Obtiene un objeto desde la sesión deserializando desde JSON.
        /// Devuelve null si no existe.
        /// </summary>
        public static T? GetObject<T>(this ISession session, string key)
        {
            var value = session.GetString(key);
            return value == null ? default : JsonConvert.DeserializeObject<T>(value);
        }
    }
}
