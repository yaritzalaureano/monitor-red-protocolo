El script captura-info.ps1 tiene como objetivo obtener información relevante del equipo y de la actividad de red, la cual es utilizada por el sistema de monitoreo de protocolos para su posterior almacenamiento, validación y visualización.

Este script está diseñado para ejecutarse de forma automática o manual en sistemas Windows.

🖥 ¿Qué hace el script?

El script realiza las siguientes acciones principales:

Obtiene información básica del sistema operativo.

Identifica el equipo dentro de la red mediante hostname.

Captura datos de red como dirección IP y MAC Address.

Registra información relacionada con el uso de puertos de red.

Prepara los datos para su envío o almacenamiento en la base de datos del sistema.

📊 ¿Qué información captura?

El script captura la siguiente información del equipo:

Sistema Operativo
Versión y nombre del sistema operativo Windows.

Hostname
Nombre del equipo dentro de la red.

Dirección IP
Dirección IP activa del equipo.

MAC Address
Dirección física de la interfaz de red principal.

Fabricante del dispositivo
Información obtenida desde el sistema (manufacturer).

Fecha y hora de uso de puertos
Registro temporal del momento en que se detecta actividad de red.

⏰ ¿Cada cuánto se ejecuta?

El script está pensado para ejecutarse de las siguientes formas:

🔹 Ejecución manual: el usuario o administrador puede ejecutarlo directamente.

🔹 Ejecución automática (planeada):

Mediante el Programador de tareas de Windows

O como parte de un servicio del sistema

📌 La frecuencia recomendada es:

Cada 5 a 10 minutos, dependiendo de la carga de la red y el tamaño de la infraestructura.

⚠ Regla de los 10 minutos (control de puertos)

Para evitar registros duplicados e innecesarios, el sistema aplica la siguiente regla lógica:

No se registra el mismo puerto si ya fue utilizado en los últimos 10 minutos por el mismo equipo.

🧠 Funcionamiento conceptual:

Antes de registrar un puerto, el sistema verifica:

El puerto

El hostname

La fecha y hora del último registro

Si el puerto ya fue registrado en un intervalo menor a 10 minutos, el evento se descarta.

Si el intervalo es mayor a 10 minutos, el registro se guarda como nuevo evento.

📌 Esta regla mejora:

La eficiencia del sistema

La limpieza de los datos

La precisión de los reportes

🧩 Relación con otros módulos

El script forma parte del flujo general del proyecto y se integra conceptualmente con:

La aplicación cliente

El servicio de Windows

La base de datos

La interfaz web de monitoreo

Su correcta ejecución es fundamental para garantizar la calidad de la información recopilada.
