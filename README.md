# Memoria de Prácticas Académicas Externas — Proyecto LaTeX

Plantilla LaTeX que replica la presentación visual del documento oficial
`Plantilla_MemoriaPracticas_BigData.docx` (Máster en Big Data — Universidad
Europea de Andalucía): portada, márgenes, logo en cabecera, pie de página
con dirección del campus y color institucional, índice y estructura de
capítulos/secciones idéntica a la plantilla original.

## Estructura

```
main.tex              -> documento principal (compilar este)
portada.tex           -> portada (título, máster, campos alumno/tutor/fechas)
declaracion.tex        -> declaración de veracidad y firma (última página)
secciones/
  01-datos-generales.tex
  02-institucion.tex
  03-memoria-actividades.tex
  04-relacion-titulacion.tex
  05-conclusiones.tex
  06-anexos.tex
img/logo.png           -> logotipo extraído de la plantilla Word original
```

## Requisitos

El proyecto usa `babel` con el idioma `spanish`. La mayoría de distribuciones
LaTeX completas (Overleaf, MiKTeX, TeX Live completo) ya lo incluyen. Si
compilas en local con una instalación mínima de TeX Live y da un error de
`babel`, instala el paquete de idioma con:

```bash
sudo apt install texlive-lang-spanish   # Debian/Ubuntu/WSL2
# o, con tlmgr:
tlmgr install babel-spanish
```

## Compilación

Con pdfLaTeX (recomendado, funciona en Overleaf sin configuración extra):

```bash
pdflatex main.tex
pdflatex main.tex   # segunda pasada, para generar el índice correctamente
```

## Sobre las fuentes

La plantilla Word original usa Century Gothic (portada/títulos) y Arial
(cuerpo). Este proyecto usa las fuentes por defecto de LaTeX (Computer
Modern / Latin Modern) en lugar de imitarlas, para mantener el proyecto
simple y compilable con pdfLaTeX sin dependencias externas.

## Color institucional

Se ha extraído el rojo corporativo usado en el documento original
(`#C4281A`) y se aplica a los títulos de capítulo y a un elemento
decorativo del pie de página, igual que en la plantilla Word.

## Notas

- El logotipo (`img/logo.png`) se extrajo directamente del `.docx` original
  para mantener la fidelidad visual; sustitúyelo si dispones de una versión
  vectorial (SVG/EPS) de mayor calidad.
- Los campos de portada (alumno, institución, tutores, fechas) se dejan en
  blanco con líneas para rellenar, igual que en el Word original.
- Cada sección/subsección de la memoria está en su propio archivo dentro de
  `secciones/` para facilitar el trabajo colaborativo y el control de
  versiones en Git.
