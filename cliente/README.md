# Aplicación Cliente – Monitor de Red

## 📌 Descripción
Este módulo corresponde a la **aplicación cliente** instalada en los equipos de la red.  
Su función principal es **recopilar información del sistema y de la actividad de red**, y enviarla al sistema central para su análisis.

La aplicación se ejecuta en segundo plano y está diseñada para no interferir con el uso normal del equipo por parte del usuario.

---

## 🖥 Funciones principales
La aplicación cliente realiza las siguientes funciones:

- Ejecutar el script de captura de información del sistema.
- Obtener datos del equipo como IP, MAC Address y hostname.
- Registrar la actividad de protocolos y puertos utilizados.
- Enviar la información recopilada a la base de datos.
- Integrarse con el servicio de Windows para su ejecución automática.

---

## 🔔 Integración con el área de notificación (System Tray)
La aplicación cliente incluye un ícono en el **System Tray** de Windows con las siguientes características:

- Permite visualizar el estado del monitoreo.
- Se ejecuta en segundo plano.
- **No permite al usuario cerrar la aplicación**, garantizando la continuidad del monitoreo.

---

## ⚙️ Tecnologías utilizadas
- Lenguaje: **C# / Visual Basic**
- Plataforma: **.NET**
- Sistema operativo: **Windows**

---

## 🔒 Seguridad y restricciones
Para asegurar el correcto funcionamiento del sistema:

- La aplicación se ejecuta con permisos controlados.
- El usuario no puede detener el monitoreo manualmente.
- La información capturada es manejada de forma segura.

---

## 🧩 Relación con otros módulos
La aplicación cliente se integra con:

- El script de captura de información
- El servicio de Windows
- La base de datos central
- La interfaz web de visualización

Es un componente clave para la recolección de datos en la red.

---

## 📌 Estado del módulo
**Estado:** Implementación parcial con diseño funcional documentado.

