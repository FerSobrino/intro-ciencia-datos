# Cómo correr los notebooks del curso

Tienes dos opciones. Si no quieres instalar nada (o tu computadora es
lenta), usa **Google Colab** — es la opción recomendada para empezar.
Si prefieres trabajar sin internet y tener control total, instala
Python **localmente**.

En ambos casos entregas lo mismo en Canvas: el archivo `.ipynb`
descargado + tu transcripción de IA (ver `PoliticaIA.md`).

## Dónde están los materiales

- **Canvas**: ahí se publican los avisos, las tareas de cada semana y
  ahí entregas todo.
- **El repositorio de GitHub del curso**: contiene TODO el material
  (slides, notebooks, tareas y datos), es público y no necesitas cuenta
  para verlo o descargarlo:
  [github.com/FerSobrino/intro-ciencia-datos](https://github.com/FerSobrino/intro-ciencia-datos)

(De todos modos te conviene [crear tu cuenta de GitHub](https://github.com/signup)
— gratis, la usarás en otras clases y te va a servir toda la carrera.)

## Descarga los materiales una sola vez (recomendado)

En lugar de descargar archivo por archivo desde Canvas, copia la
carpeta completa del repositorio una vez — con eso ya tienes todos los
datos y notebooks con las rutas (`../data/...`) funcionando. Tres
maneras, de más fácil a más 'difícil':

- **Zip (sin cuenta):** en la página del repo, botón verde *Code →
  Download ZIP*, y descomprime.
- **GitHub Desktop** (recomendada si git te da miedo): instala
  [desktop.github.com](https://desktop.github.com), *Clone repository* →
  URL `https://github.com/FerSobrino/intro-ciencia-datos`. Actualizar
  después es un botón (*Fetch/Pull*).
- **Terminal:**
  ```bash
  git clone https://github.com/FerSobrino/intro-ciencia-datos.git
  ```

Luego, según cómo vayas a trabajar:

- **Si usarás Colab:** sube la carpeta completa a tu **Google Drive**
  (arrástrala a drive.google.com). Los notebooks los abres desde Drive
  y los datos quedan disponibles montando tu Drive (ver Opción 1).
- **Si trabajarás local:** deja la carpeta donde quieras en tu
  computadora y salta a la Opción 2.

Para actualizar cuando salga material nuevo: `git pull` (o vuelve a
bajar el zip y reemplaza).

---

## Opción 1 (recomendada): Google Colab

Colab es un Jupyter en la nube de Google. Gratis, no instalas nada,
solo necesitas tu cuenta de Google.

La forma cómoda es tener la carpeta del curso en tu Drive (ver arriba)
y trabajar siempre desde ahí:

1. Entra a [colab.research.google.com](https://colab.research.google.com) e inicia sesión.
2. **Abrir la tarea desde Drive:** en drive.google.com navega a tu
   carpeta del curso → `tareas/` → doble clic al `.ipynb` → "Abrir con
   Google Colaboratory". (Los cambios se guardan solos en Drive.)
3. **Conectar los datos:** en la primera celda monta tu Drive:
   ```python
   from google.colab import drive
   drive.mount('/content/drive')
   import os
   os.chdir('/content/drive/MyDrive/intro-ciencia-datos/tareas')
   ```
   (ajusta la ruta si guardaste la carpeta en otro lado). Con esto las
   rutas `../data/archivo.csv` de los notebooks funcionan tal cual.
4. **Entregar:** `Archivo → Descargar → Descargar .ipynb` y súbelo a
   Canvas con tu transcripción.

Si solo quieres resolver algo rápido sin la carpeta en Drive, también
puedes `Archivo → Subir notebook`, subir el dato a mano (📁 en el panel
izquierdo, cambiando `../data/archivo.csv` por `archivo.csv`), o leerlo
directo por URL *raw* del repositorio:

```python
url = "https://raw.githubusercontent.com/FerSobrino/intro-ciencia-datos/master/data/chipotle.tsv"
df = pd.read_csv(url, sep="\t")
```

Notas:

- `pandas`, `numpy`, `matplotlib`, `seaborn` y `scikit-learn` ya vienen
  instalados en Colab. Si algo falta: `!pip install paquete` en una celda.
- Si Colab se desconecta (pasa tras un rato de inactividad), tus
  archivos subidos se borran pero tu notebook guardado en Drive no:
  vuelve a subir los datos y corre todo de nuevo (`Entorno de
  ejecución → Ejecutar todo`).

## Opción 2: Python local en tu computadora

Instalas una vez y trabajas sin depender de internet.

1. **Instala Miniforge** (una distribución ligera de Python + conda):
   descarga el instalador para tu sistema en
   [github.com/conda-forge/miniforge](https://github.com/conda-forge/miniforge)
   — en Mac también puedes: `brew install miniforge`.
2. **Crea el ambiente del curso** (una sola vez, en la terminal):
   ```bash
   conda create -n ciencia-datos python=3.12 pandas numpy matplotlib seaborn scikit-learn jupyterlab openpyxl statsmodels
   conda activate ciencia-datos
   ```
3. **Descarga el repositorio del curso** (datos incluidos):
   ```bash
   git clone https://github.com/FerSobrino/intro-ciencia-datos.git
   cd intro-ciencia-datos
   ```
   (Sin terminal: GitHub Desktop, o *Code → Download ZIP* y descomprime.)
4. **Abre Jupyter:**
   ```bash
   conda activate ciencia-datos   # cada vez que abras una terminal nueva
   jupyter lab
   ```
   Se abre en tu navegador; navega a `tareas/` y abre tu tarea. Las
   rutas `../data/...` de los notebooks funcionan tal cual.
5. **Entregar:** guarda el notebook y sube el `.ipynb` a Canvas con tu
   transcripción.

Notas:

- Para actualizar las notas/tareas/etc: `git pull` dentro de la carpeta
  del repo lo actualiza.
- Si prefieres VS Code: instala la extensión "Jupyter" y abre el
  `.ipynb` directamente; selecciona el kernel `ciencia-datos`.

## ¿Cuál elijo?

| | Colab | Local |
|---|---|---|
| Instalación | Ninguna | Una vez (~15 min) |
| Internet | Siempre necesario | Solo para descargar |
| Datos | En tu Drive (montado) o por URL | Ya están en `data/` |
| Riesgo de perder trabajo | Si olvidas guardar en Drive | Bajo |
| Para este curso | Suficiente | Suficiente y más cómodo a la larga |

Empieza en Colab; si a media tarea te estorba subir datos cada vez,
cámbiate a local — los notebooks son los mismos.

## Problemas comunes

- **`FileNotFoundError: ../data/...` en Colab** → no montaste tu Drive
  o el `os.chdir` apunta a otra carpeta; corre la celda de montaje del
  paso 3. (Sin Drive: sube el archivo a mano y usa `archivo.csv`, o
  lee el dato por URL raw del repo.)
- **`ModuleNotFoundError` local** → se te olvidó `conda activate ciencia-datos`.
- **El notebook corre distinto que ayer** → `Kernel → Restart & Run All`
  (en Colab: `Entorno de ejecución → Reiniciar y ejecutar todo`); el
  orden de ejecución importa y esta es la forma de verificarlo antes
  de entregar. La defensa oral se hace sobre un notebook que corre de
  arriba a abajo.
