# Ciencia de Datos — una introducción

**TC 4025 · Escuela de Gobierno y Transformación Pública, Tec de Monterrey**

Profesora: Fernanda Sobrino (fersobrinono@tec.mx)

Entregas en Canvas

## Filosofía del curso

Los agentes de IA ya escriben la mayor parte del código de análisis de
datos. Eso no hace que este curso sobre: lo hace más importante. El
agente hace *exactamente* lo que le pides — si no sabes pedir bien, no
obtienes lo que necesitas; y si no sabes leer críticamente el
resultado, no notas cuando está mal. Este curso te enseña las dos
cosas que la IA no pone: **especificar bien** y **verificar con
escepticismo**.

Por eso:

1. **Seguimos programando en Python.** No puedes verificar código que
   no podrías haber escrito. La fluidez mínima con pandas y sklearn es
   el piso, no el techo.
2. **No prohibimos la IA.** Pueden (y deben) usar LLMs y agentes en
   las tareas, con transcripción obligatoria. Los exámenes y las
   críticas en clase son sin IA: ahí se ve lo que de verdad entiendes.
3. **Practicamos la crítica.** Cuatro sesiones calificadas en clase
   consisten en encontrar los errores de un análisis hecho por IA.

El estándar del curso: *el agente pone el código; tú pones el
entendimiento.*

## Evaluación

| Componente | Peso | Detalle |
|---|---|---|
| Tareas (8) | 25% | IA permitida con transcripción |
| Exámenes en clase (2) | 35% | Escritos, sin computadora (15% + 20%) |
| Ejercicios "Critica a la IA" (4) | 30% | En clase, individuales; cuentan las mejores 3 (10% c/u) |
| Participación | 10% | Ejercicios en vivo de los notebooks (cold calling) |

- **Tareas**: notebooks entregados en Canvas, con sección obligatoria
  de *Verificación* y la transcripción íntegra de tus conversaciones
  con IA (ver [PoliticaIA.md](PoliticaIA.md)). Sin transcripción, la
  tarea no se califica.
- **Exámenes**: en clase, individuales, lápiz y papel. No piden
  escribir código: piden interpretar, diagnosticar y justificar.
  Temarios en [Examenes/](Examenes/).
- **Critica a la IA**: sesiones en clase donde recibes (vía Canvas, al
  iniciar la sesión) un análisis plausible hecho por un agente y tienes
  que encontrar qué está mal. Individual, sin IA, **45 minutos** para
  encontrar los problemas, demostrarlos con evidencia y proponer la
  corrección; al terminar subes tu notebook con la celda de hallazgos a
  Canvas. Guía completa en
  [Evaluacion/CriticaIA_guia.md](Evaluacion/CriticaIA_guia.md).
- **Participación**: en cada clase resolvemos en vivo los ejercicios de
  los notebooks y voy nombrando a quien pasa a resolverlos (*cold
  calling*) — sin IA, en el momento. No se trata de tenerlo perfecto,
  sino de intentarlo con criterio: por eso programamos en clase.

## Temario semanal (una sesión por semana)

| Semana | Temas | Tareas | Crítica IA | Exámenes |
|---|---|---|---|---|
| 1 | Introducción y política de IA · Pandas I | | | |
| 2 | Pandas II · Tidy I | | | |
| 3 | Tidy II · Verificación de análisis con IA | T1 | | |
| 4 | EDA I | T2 | **Crítica #1** | |
| 5 | EDA II · Visualización I | T3 | | |
| 6 | Visualización II | T4 | **Crítica #2** | |
| 7 | ML Teoría I | T5 | | **Examen 1** |
| 8 | ML Teoría II y III | T6 | | |
| 9 | Aprendizaje supervisado en sklearn | | **Crítica #3** | |
| 10 | Clustering | T7 | | |
| 11 | Repaso | T8 | **Crítica #4** | **Examen 2** |


## Política de IA (resumen)

La política completa está en [PoliticaIA.md](PoliticaIA.md). En corto:

- En **tareas**: cualquier LLM o agente está permitido. Entregas la
  transcripción completa junto con el notebook. Sin transcripción (o
  con una que no corresponde a tu trabajo), la tarea se anula.
- En **exámenes y críticas en clase**: sin IA.
- Eres responsable de todo lo que entregas: "lo escribió el agente" no
  es defensa de un resultado incorrecto.

## Materiales

Todo el material vive en este repositorio (público); los avisos y las
entregas, en Canvas. Recomendado: copiar la carpeta completa una sola
vez — guía paso a paso (Colab o instalación local) en
[tech-help/configuracion_entorno.md](tech-help/configuracion_entorno.md).

- `slides/` — presentaciones (.Rmd → PDF)
- `notebooks/` — notebooks de clase para seguir en vivo
- `tareas/` — las 8 tareas
- `data/` — bases de datos del curso
- `Examenes/` — temarios de los dos exámenes
- `Evaluacion/` — guía de las sesiones de crítica
- `criticas/` — notebooks de las sesiones "Critica a la IA"
- `materials/` — archivo histórico de slides anteriores

## Bibliografía

- Wickham, Çetinkaya-Rundel & Grolemund, *R for Data Science*
- McKinney, *Python for Data Analysis*
- Chen, Rubin & Cornwall, *Data Science for Public Policy*
- Géron, *Hands-On Machine Learning*
- James et al., *An Introduction to Statistical Learning*

---
