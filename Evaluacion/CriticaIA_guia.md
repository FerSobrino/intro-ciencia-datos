# Sesiones "Critica a la IA" — guía y rúbrica

**Peso:** 30% de la calificación final (4 sesiones; cuentan las
mejores 3, 10% cada una).
**Formato:** en clase, en parejas, **45 minutos** + 10 de plenaria. Con
computadora, **sin IA** (la IA ya hizo su parte: el análisis que van a
criticar). Al cumplirse los 45 minutos, cada pareja sube su notebook
con la celda de hallazgos a Canvas — no hay entrega tardía ni para
llevar a casa.

## La idea

En cada sesión reciben un notebook producido por un agente de IA:
corre sin errores, se ve profesional y llega a conclusiones claras.
Tiene entre 3 y 5 problemas plantados — de los que aparecen todo el
tiempo en análisis reales hechos por agentes. Su trabajo es
encontrarlos, demostrar con evidencia que son problemas y proponer la
corrección.

| # | Semana | Tema | Tipo de errores plantados |
|---|---|---|---|
| 1 | 4 | pandas y joins | merge que duplica renglones, groupby que descarta NaN, filtro mal puesto |
| 2 | 6 | EDA y visualización | gráficas engañosas, afirmaciones no respaldadas por los datos |
| 3 | 9 | pipeline supervisado | fuga de datos, métrica equivocada, evaluación sobre train |
| 4 | 11 | clustering | variables sin escalar, k injustificada, sobreinterpretación de grupos |

## Qué entregan (al final de la sesión, en Canvas)

Una copia del notebook con una celda de **hallazgos** al final:

- Para cada problema encontrado: (1) dónde está (celda), (2) por qué
  es un problema, (3) la evidencia que lo demuestra (un conteo, una
  celda nueva, una gráfica alternativa), (4) la corrección propuesta.
- Una conclusión de dos líneas: ¿cambian las conclusiones del reporte
  después de tus correcciones?

## Rúbrica (por sesión, 100 pts)

| Componente | Pts | Qué se evalúa |
|---|---|---|
| Problemas encontrados | 50 | Proporcional a los problemas plantados que detectaron (encontrar problemas reales no plantados también cuenta) |
| Evidencia | 30 | No basta señalar: demostrar con código/conteos/gráficas que el problema existe y afecta el resultado |
| Correcciones | 20 | La corrección propuesta es concreta y correcta; queda claro cómo cambia la conclusión |

Señalar como "error" algo que no lo es no resta puntos si viene con la
verificación que lo descarta — así funciona la revisión de verdad.

## Para la profesora (logística)

- La carpeta `criticas/` completa (notebooks y claves) vive **solo en
  la máquina local** — está en `.gitignore` y NO existe en el repo
  público, para que nadie pueda analizarla antes de la sesión.
  **Respaldarla fuera del repo.**
- Publicar el notebook en Canvas **al inicio de la sesión, nunca antes**.
- Ritmo de la media sesión: ~5 min de arranque (parejas, reglas),
  45 min de trabajo con corte de entrega en Canvas, ~10 min de
  plenaria descubriendo los errores plantados con la clave; cada
  pareja marca cuáles encontró.
