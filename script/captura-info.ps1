
=====================================================
 Script: captura-info.ps1
 Proyecto: Monitor de Red y Protocolos
 Fecha: 2025-15-12

 Descripción:
 Script encargado de capturar información del sistema y de la red
 del equipo cliente para su posterior análisis y registro.

 Información capturada:
 - Sistema operativo
 - Hostname del equipo
 - Dirección IP
 - Dirección MAC
 - Fabricante del dispositivo
 - Fecha y hora de uso de puertos de red

 Frecuencia de ejecución:
 - Ejecución manual
 - Ejecución automática mediante programador de tareas
 - Integración con un servicio de Windows
 Frecuencia recomendada: cada 5 a 10 minutos.

 Regla de control (10 minutos):
 El sistema valida que un puerto no sea registrado nuevamente
 si ya fue utilizado por el mismo equipo en un intervalo menor
 a 10 minutos. Esta validación evita registros duplicados y
 mejora el rendimiento del sistema.

 Notas:
 - Diseñado para sistemas Windows.
 - Forma parte del módulo de captura del proyecto.
=====================================================
