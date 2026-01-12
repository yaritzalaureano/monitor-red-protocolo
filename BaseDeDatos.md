TABLA:EQUIPO
| Campo      | Tipo    | Descripción       |
| ---------- | ------- | ----------------- |
| id_equipo  | INT PK  | Identificador     |
| hostname   | VARCHAR | Nombre del equipo |
| fabricante | VARCHAR | Marca             |
| mac        | VARCHAR | Dirección MAC     |
| ip         | VARCHAR | Dirección IP      |

TABLA:PROTOCOLO
| Campo        | Tipo    | Descripción                      |
| ------------ | ------- | -------------------------------- |
| id_protocolo | INT PK  | Identificador                    |
| puerto       | INT     | Número de puerto                 |
| nombre       | VARCHAR | Nombre del protocolo             |
| categoria    | VARCHAR | (Seguro, Riesgo, Inseguro, etc.) |

TABLA:PROTOCOLO_USADO
| Campo        | Tipo     | Descripción              |
| ------------ | -------- | ------------------------ |
| id_uso       | INT PK   | Identificador            |
| id_equipo    | INT FK   | Equipo que usó el puerto |
| id_protocolo | INT FK   | Protocolo                |
| fecha_hora   | DATETIME | Momento de uso           |




