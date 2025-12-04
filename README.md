E — Sistema de Monitoreo de Red
📌 Descripción General del Proyecto

El Sistema de Monitoreo de Red es una solución diseñada para registrar, analizar y visualizar la actividad de red en diferentes equipos dentro de una organización.

El sistema captura información como:

🖥 Sistema operativo

🏷 Hostname

🔗 MAC Address

🌐 Dirección IP

⏰ Uso de puertos (con regla de no duplicar en menos de 10 minutos)

📡 Protocolos utilizados

🟢🟡🔴 Clasificación de seguridad por puerto

Incluye una aplicación cliente, un servicio en segundo plano, una base de datos en MySQL, y una interfaz web para visualizar y analizar toda la información recopilada.

🧬 Metodología Híbrida del Proyecto (Scrum + Espiral)

Este proyecto se desarrolló utilizando una metodología híbrida combinando:

✔ Scrum

Para organizar el trabajo en sprints, mantener avances constantes y adaptarse rápidamente.

✔ Modelo Espiral

📁 Estructura del Repositorio
/
├── cliente/            → Aplicación cliente (captura de información)
├── servicio/           → Servicio de Windows que se ejecuta al iniciar
├── script/             → Scripts en Batch o PowerShell
├── web/                → Interfaz web para visualizar la información
├── database/           → Modelo y scripts MySQL
├── docs/               → Documentación del proyecto
│   ├── METODOLOGÍAS.md
│   ├── Diagramas.md
│   ├── Presentaciones/
│   ├── Reportes/
│   └── BaseDeDatos/
├── LICENSE
├── .gitignore
└── README.md           → (Este archivo)
🛠 Tecnologías utilizadas
Cliente

C# / Visual Basic

PowerShell / Batch

.NET Framework

System Tray API

Backend / Servicio

Servicio de Windows

Control de procesos

Captura de red y puertos

Base de Datos

MySQL

Tablas:

Equipo

Fabricante

Protocolo

ProtocoloUsado

Interfaz Web

HTML5 / CSS

JavaScript / PHP / Node.js (lo que tú usaste)

Bootstrap / UI responsiva

Documentación

Scrum

Modelo Espiral

Diagramas

Reportes

🚀 Características principales del sistema
✔ 1. Captura de información del sistema

Sistema operativo

Hostname

MAC Address

IP Address

Puertos utilizados

No se duplica un puerto si se usó en los últimos 10 minutos

✔ 2. Validación de direcciones

Verificación de que la MAC e IP no estén registradas en otro equipo

✔ 3. Base de datos MySQL

Modelo optimizado

Relaciones Equipo ↔ ProtocoloUsado

✔ 4. Aplicación cliente

Captura automática

Envío de datos a MySQL

Ejecución silenciosa

✔ 5. Servicio de Windows

Se inicia automáticamente

Impide que el usuario cierre el cliente

✔ 6. Interfaz web

Dashboard con actividad de la red

Tabla de protocolos por equipo

Clasificación por colores:

🟢 Seguro

🟡 Precaución

🟠 Intermedio

🔴 Inseguro

✔ 7. Reportes

Gráficas de pastel

Actividad general por protocolos

Protocolos seguros vs inseguros

Para trabajar por ciclos🎯 Estado del Proyecto

✔ Captura del sistema

✔ Validación de IP/MAC

✔ Base de datos

✔ Cliente funcional

✔ Servicio de Windows

✔ Interfaz web

✔ Clasificación de protocolos

✔ Reportes

✔ Documentación completa (Scrum + Espiral + README), reducir riesgos, realizar prototipos y validar componentes críticos 
como red, puertos y protocolos



