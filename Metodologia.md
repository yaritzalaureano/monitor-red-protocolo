# 📘 Metodologías Aplicadas al Proyecto de Monitoreo de Red

Este documento describe las dos metodologías utilizadas para el desarrollo del proyecto: **Scrum** y **Modelo Espiral**, justificando su selección, fases, entregables y cómo se integraron al proyecto real.

---

# 🌀 1. Modelo Espiral

El Modelo Espiral fue utilizado debido al tipo de proyecto: **software crítico que requiere pruebas constantes, validación de riesgos y mejoras progresivas**, especialmente por trabajar con red, IP/MAC, puertos, protocolos y servicios del sistema.

El proyecto se desarrolló a través de 4 ciclos iterativos.

---

## 🔄 **Ciclo 1**
### ✔ Actividades
- Captura de información del sistema (OS, hostname, MAC, IP).
- Validación de direcciones (evitar duplicados en la red).
- Creación del primer script en Batch/PowerShell.
- Pruebas básicas de funcionamiento.

### ✔ Evaluación
- Se verificó que el script registrara datos correctos.
- Se corrigieron errores de detección en MAC e IP.

---

## 🔄 **Ciclo 2**
### ✔ Actividades
- Diseño del modelo de base de datos (MySQL).
- Creación de tablas: `Equipo`, `Fabricante`, `Protocolo`, `ProtocoloUsado`.
- Implementación del servicio de Windows.
- Integración Cliente ↔ Base de datos.

### ✔ Evaluación
- Pruebas de inserción y consulta.
- Validación de que el servicio se ejecutara al iniciar Windows.

---

## 🔄 **Ciclo 3**
### ✔ Actividades
- Desarrollo de la interfaz web para visualizar datos.
- Clasificación de protocolos según nivel de seguridad.
- Colores aplicados:
  - 🟢 Seguro  
  - 🟡 Precaución  
  - 🔴 Inseguro  
  - 🟠 Intermedio  

### ✔ Evaluación
- Se comprobó que los protocolos se mostraran con colores consistentes.
- La interfaz respondió correctamente en distintos navegadores.

---

## 🔄 **Ciclo 4**
### ✔ Actividades
- Implementación de reportes y gráficas.
- Gráfica de pastel de protocolos seguros.
- Gráfica de pastel de protocolos inseguros.
- Estadísticas globales de la red.

### ✔ Evaluación
- Se validó que los datos fueran completos y actualizados.
- Pruebas de rendimiento con varios equipos reportando datos.

---

## ⚠ **Riesgos y Mitigaciones**

| Riesgo | Descripción | Mitigación |
|-------|-------------|------------|
| Duplicación de MAC/IP | Dos equipos usando mismos datos | Validación automática de direcciones |
| Puerto repetido | Registrar el mismo puerto en menos de 10 min | Control de tiempo en base de datos |
| Usuario cierre el cliente | Cerrar app desde área de notificación | Bloqueo del ícono del System Tray |
| Datos inconsistentes | Errores al capturar datos del sistema | Pruebas unitarias y de integración |
| Fallas de visualización web | Navegadores incompatibles | Pruebas en Chrome, Edge y Firefox |

---

# ⚡ 2. Metodología Scrum

Scrum se utilizó para organizar el trabajo en sprints cortos y manejables, permitiendo avances constantes en un proyecto técnico y complejo.

---

## 👥 **Roles Scrum**
- **Scrum Master:** Imelda 
- **Product Owner:** Yaritza 
- **Equipo de Desarrollo:** Michelle

## 📌 **Product Backlog (Tareas Principales)**

- Captura de información del sistema
- Validación de MAC/IP
- Script en Batch/PowerShell
- Base de datos MySQL
- Cliente de Windows (C#/VB)
- Servicio en Windows
- Icono en área de notificación
- Interfaz web responsiva
- Clasificación de protocolos
- Gráficas de reporte
- Pruebas y documentación

---

# 🗓 **Sprints**

## 🟪 **Sprint 1**
### Objetivo:
Construir la base del proyecto y obtener datos reales del sistema.

### Entregables:
- Script de captura
- Validación de direcciones
- Registro básico en archivos o consola

---

## 🟦 **Sprint 2**
### Objetivo:
Integrar la base de datos y servicio.

### Entregables:
- Tablas en MySQL
- Integración Cliente → Base de datos
- Servicio ejecutándose en Windows

---

## 🟩 **Sprint 3**
### Objetivo:
Desarrollar la interfaz web y clasificación de protocolos.

### Entregables:
- Página principal
- Tabla de protocolos con colores
- Filtros y visualización correcta

---

## 🟧 **Sprint 4**
### Objetivo:
Crear los reportes finales del sistema.

### Entregables:
- Gráfica de pastel de protocolos seguros
- Gráfica de protocolos inseguros
- Dashboard con estadísticas globales

---

# 🔍 Retrospectiva General

### ✔ Lo que salió bien
- Integración estable entre cliente, base de datos y web.
- Scripts robustos y validaciones correctas.
- Clasificación clara de protocolos.

### ✔ Lo que se puede mejorar
- Optimizar el tiempo de registro para redes más grandes.
- Automatizar más pruebas de estrés.
- Mejorar UI/UX de la interfaz web.

---

# 🎯 Conclusión
La combinación de **Modelo Espiral** y **Scrum** permitió:
- Ciclos de mejora continua  
- Gestión de riesgos  
- Avances constantes y medibles  
- Un producto funcional, estable y bien documentado  

Estas metodologías fueron adecuadas debido a la complejidad del proyecto y la necesidad de pruebas repetitivas y mejoras progresivas.


