# Examen 1 — Datos, EDA y Visualización (semana 7)

**Formato:** en clase, individual, lápiz y papel. Sin computadora, sin IA.
**Peso:** 15% de la calificación final.
**Material permitido:** una hoja (carta, por ambos lados) escrita a mano por ti.
**Cobertura:** slides *Intro*, *Pandas*, *Tidy*, *EDA* y *Visualización*; Tareas 1–4; Críticas #1 y #2.

Las preguntas **no** piden escribir código de memoria. Piden leer,
predecir, diagnosticar y justificar — exactamente el tipo de
razonamiento que necesitas para dirigir (y verificar) a un agente de
IA que sí escribe el código.

---

## 1. Estructura de datos y pandas (Tareas 1–2)

- Dada una base: ¿qué representa cada renglón? ¿cuál es la llave
  primaria? ¿cómo lo verificarías?
- Leer un fragmento de código pandas (filtros, `groupby`, `sort`,
  creación de columnas) y **predecir su salida** — incluyendo casos
  con valores faltantes.
- Diagnosticar: se te muestra código y su salida; explicar por qué el
  resultado es incorrecto o engañoso (p. ej., `groupby` que descarta
  NaN silenciosamente, filtro que excluye casos límite).
- ¿Promedio de promedios o promedio global? Cuándo difieren y por qué.

## 2. Datos limpios y joins (Tarea 3)

- Identificar cuál de los 4 patrones de datos sucios tiene una tabla
  dada y decir qué operación lo arregla (`melt`, `pivot_table`,
  `str.split`).
- Joins: dado un diagrama de dos tablas, predecir cuántos renglones
  produce un inner/left/outer join; qué pasa cuando la llave **no es
  única** (duplicación de renglones) y cómo se detecta con conteos.
- Semi joins y anti joins: para qué sirven en la práctica.

## 3. EDA (Tarea 4)

- Leer un histograma/densidad: sesgo, colas, valores atípicos; cuándo
  y por qué transformar una variable (log).
- Valores faltantes: mecanismos (¿faltan al azar o por algo?), qué
  revisar antes de imputar, por qué "borrar los renglones con NaN"
  puede sesgar el análisis.
- Dada una tabla de estadísticas descriptivas, señalar qué se ve raro
  y qué revisarías primero (el cuarteto de Anscombe como advertencia).
- Regla del curso: nunca modificar la base original — ¿por qué?

## 4. Visualización (Tarea 5 parcial, Crítica #2)

- Dada una gráfica: identificar sus problemas (ejes truncados, dobles
  ejes, área vs. longitud, colores sin orden, sobregraficado) y
  proponer la corrección.
- Elegir la gráfica correcta para una pregunta dada (distribución vs.
  relación vs. comparación vs. evolución) y justificar.
- ¿Están diciendo lo mismo estas dos gráficas de los mismos datos?
  Explicar por qué una engaña.

## 5. Verificación de análisis hechos por IA (visto en cada tema y en las Críticas #1–#2)

- Dado un reporte corto "escrito por un agente" con 2–3 afirmaciones y
  la evidencia (tablas/gráficas): decir cuáles afirmaciones **no**
  están respaldadas por la evidencia y qué revisión concreta harías.
- Listar las verificaciones mínimas después de un merge; después de un
  `groupby`; antes de reportar un promedio.
- ¿Por qué "el código corre sin errores" no implica "el análisis es
  correcto"? Dar dos ejemplos concretos vistos en el curso.
