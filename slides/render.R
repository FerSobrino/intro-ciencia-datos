# Renderiza todas las slides: .Rmd (beamer, tema bugambilia) -> .pdf
# Uso: Rscript slides/render.R [archivo.Rmd ...]   (sin argumentos: todas)

args <- commandArgs(trailingOnly = TRUE)
setwd(dirname(sub("--file=", "", grep("--file=", commandArgs(), value = TRUE))))

rmds <- if (length(args)) args else list.files(".", pattern = "\\.Rmd$")

for (f in rmds) {
  message(">> ", f)
  rmarkdown::render(f, quiet = TRUE)
}
message("Listo: ", length(rmds), " decks.")
