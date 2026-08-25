# Examen 2 — Aprendizaje de Máquina y Clustering (semana 11)

**Formato:** en clase, individual, lápiz y papel. Sin computadora, sin IA.
**Peso:** 20% de la calificación final.
**Material permitido:** una hoja (carta, por ambos lados) escrita a mano por ti.
**Cobertura:** slides *ML Teoría 1–3*, *Supervisado en sklearn*, *Clustering*; Tareas 5–8; Críticas #3 y #4.

Igual que el Examen 1: no se escribe código. Se interpreta, se
diagnostica y se justifica.

---

## 1. Fundamentos de ML (Tarea 5–6)

- ¿Qué es un modelo? Entrenamiento vs. predicción; sobreajuste y
  subajuste explicados con un ejemplo de política pública.
- Train/test split: para qué sirve, qué pasa si evalúas sobre los
  datos de entrenamiento, y la aritmética básica de un split.
- **Fuga de datos (data leakage):** definirla, dar tres formas
  concretas en que ocurre (escalar antes del split, variables que
  "conocen" el futuro, duplicados entre train y test) y cómo se
  detecta ("demasiado bueno para ser verdad").
- Estandarización: cuáles algoritmos la necesitan (KNN sí, árboles
  no) y por qué; por qué se ajusta la escala **solo con train**.

## 2. Algoritmos supervisados (Tareas 6–7)

- KNN: cómo decide, efecto de k chica/grande, por qué la distancia
  exige escalar.
- Árboles de decisión: cómo se elige un split (impureza/Gini,
  entropía — intuición, no fórmulas); leer un árbol dibujado y
  clasificar un caso a mano; profundidad y sobreajuste.
- Random Forest: qué agrega sobre un árbol y por qué funciona
  (intuición de promediar).
- Regresión logística: leer un coeficiente (signo y magnitud,
  odds — intuición); por qué no usar regresión lineal para
  clasificar.
- Naive Bayes: el supuesto "naive" y cuándo se rompe.

## 3. Métricas de desempeño (Tarea 7, Crítica #3)

- Construir e interpretar una matriz de confusión a mano.
- Precisión, recall (eficiencia y cobertura), F1, accuracy: calcular
  con números dados y — más importante — **elegir la métrica correcta
  para un problema de política pública dado** (inspecciones,
  focalización de programas, listas de espera) y justificar.
- ¿Por qué accuracy engaña con clases desbalanceadas? Ejemplo numérico.
- Curva ROC y AUC: qué significan; métricas @k (precision@k) y por qué
  son la métrica natural cuando hay presupuesto para atender k casos.
- Umbral de decisión: qué cambia al moverlo y quién debería decidirlo.

## 4. Clustering (Tarea 8, Crítica #4)

- K-means: el algoritmo en palabras; por qué importa la
  inicialización; el codo y la silueta para elegir k; cuándo falla
  (grupos no esféricos, escalas distintas).
- Jerárquico: leer un dendrograma, efecto del tipo de linkage, dónde
  cortar.
- DBSCAN: núcleo/frontera/ruido, `eps` y `minpts`, cuándo es preferible
  a K-means.
- **¿Son reales estos clusters?** Dado un resultado de clustering con
  su silueta y descripción de variables: decidir si la interpretación
  está justificada, detectar variables sin escalar, y explicar por qué
  "el algoritmo encontró 4 grupos" no implica que existan 4 grupos.

## 5. Verificación de pipelines hechos por IA (Críticas #3–#4)

- Dado el esqueleto de un pipeline de sklearn escrito por un agente
  (en pseudocódigo o código impreso): señalar los errores (orden de
  escalar/split, métrica equivocada, evaluación sobre train) y decir
  cómo corregirlos.
- Dada una tabla de resultados sospechosamente buena, listar las tres
  primeras hipótesis a revisar antes de creerla.
