

# Servicio de Windows – Monitor de Red

## 📌 Descripción
Este módulo corresponde al **servicio de Windows** encargado de ejecutar de forma automática el sistema de monitoreo de red al iniciar el sistema operativo.

El servicio permite que la captura de información del equipo se realice en segundo plano, sin intervención del usuario.

---

## ⚙️ Función principal del servicio
El servicio tiene como funciones principales:

- Ejecutarse automáticamente al iniciar Windows.
- Invocar el script de captura de información del sistema.
- Garantizar la ejecución continua del monitoreo.
- Enviar o preparar la información capturada para su almacenamiento en la base de datos.

---

## 🔄 Funcionamiento general
El servicio sigue el siguiente flujo conceptual:

1. El sistema operativo inicia.
2. El servicio de Windows se ejecuta automáticamente.
3. El servicio llama al script de captura (`captura-info.ps1`).
4. La información recopilada es procesada y almacenada.
5. El servicio continúa ejecutándose en segundo plano.

---

## ⏰ Frecuencia de ejecución
El servicio está diseñado para ejecutar el proceso de captura:

- De forma continua en segundo plano.
- Con una frecuencia aproximada de **cada 5 a 10 minutos**, configurable según las necesidades del sistema.

---

## 🔒 Restricciones para el usuario
Para garantizar la integridad del monitoreo:

- El servicio no puede ser detenido fácilmente por el usuario.
- La ejecución se mantiene activa mientras el sistema esté encendido.
- La aplicación cliente no permite el cierre manual desde el área de notificación.

---

## 🧩 Relación con otros módulos
Este servicio se integra conceptualmente con:

- El script de captura de información
- La aplicación cliente
- La base de datos
- La interfaz web de visualización

Es un componente esencial para la automatización del sistema.

---

## 📌 Estado del módulo
**Estado:** Implementación parcial con diseño funcional documentado.

