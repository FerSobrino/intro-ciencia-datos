# Examen 2 — Aprendizaje de Máquina Supervisado (semana 11)

**Formato:** en clase, individual, lápiz y papel. Sin computadora, sin IA.
**Peso:** 20% de la calificación final.
**Material permitido:** una hoja (carta, por ambos lados) escrita a mano por ti.
**Cobertura:** slides *ML Teoría 1–3*; notebooks de aprendizaje supervisado en `sklearn`; Tareas 5–7; Críticas #3 y #4.
**Nota:** el clustering (aprendizaje no supervisado) **no** entra en este examen.

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

## 4. Comparar modelos con honestidad (Crítica #4)

- ¿Por qué elegir hiperparámetros **mirando el conjunto de prueba** infla
  el desempeño reportado? El papel de un conjunto de validación (o
  validación cruzada) y la regla "el test se toca una sola vez".
- Sobreajuste en la práctica: qué significa un accuracy de ~100% en
  entrenamiento y por qué no es evidencia de que el modelo "aprendió".
- Elegir la semilla/corrida "más representativa" entre varias: por qué
  es *cherry-picking* y cómo se reporta honestamente (media y
  variabilidad entre corridas).
- Importancia de variables ≠ causalidad: qué afirmaciones sí y qué
  afirmaciones no soporta un `feature_importances_`.

## 5. Verificación de pipelines hechos por IA (Críticas #3–#4)

- Dado el esqueleto de un pipeline de sklearn escrito por un agente
  (en pseudocódigo o código impreso): señalar los errores (orden de
  escalar/split, métrica equivocada, evaluación sobre train, selección
  de modelo sobre el test) y decir cómo corregirlos.
- Dada una tabla de resultados sospechosamente buena, listar las tres
  primeras hipótesis a revisar antes de creerla.
