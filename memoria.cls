\ProvidesClass{memoria}[2026/08/01 Custom Class for Memoria de Practicas Academicas Externas UEA]
\LoadClass[12pt,a4paper]{report}

% ---------- Idioma y codificación ----------
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[spanish,es-tabla]{babel}

% ---------- Tipografía ----------
% Sans-serif estilo Helvetica/Arial (se acerca a la Century Gothic/Arial
% de la plantilla Word original, mucho más que una serif como Charter).
\RequirePackage[scaled]{helvet}
\renewcommand{\familydefault}{\sfdefault}

% Excepciones de guionado: evita cortes de línea no deseados en estas palabras
\hyphenation{Grandes}

% ---------- Geometría de página (según sectPr del docx original) ----------
% Word: top=2977twips(~5.25cm) right=601(~1.06cm) bottom=2693(~4.75cm) left=601(~1.06cm)
\RequirePackage[a4paper,top=4.5cm,bottom=4cm,left=2.2cm,right=2.2cm,headheight=2.2cm,footskip=2.4cm]{geometry}

% ---------- Color corporativo (extraído del docx: rojo institucional) ----------
\RequirePackage[table]{xcolor}
\definecolor{ueared}{HTML}{C4281A}

% ---------- Cabecera / pie de página ----------
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{tikz}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[L]{\includegraphics[height=1.3cm]{img/logo.png}}
\fancyfoot[L]{%
  \begin{tikzpicture}[baseline]
    \node[anchor=west, font=\small] (txt) at (0,0) {%
      \begin{minipage}[t]{7.5cm}
        \textbf{Campus Teatinos-Universidad}\\
        C/ Eolo, 10\\
        29010 Málaga\\
        \textbf{universidadeuropea.com}
      \end{minipage}%
    };
    \draw[ueared, thick] (7.8cm,0.1) rectangle ++(0.3,0.3);
  \end{tikzpicture}%
}
\fancyfoot[R]{\thepage}

\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyhead[L]{\includegraphics[height=1.3cm]{img/logo.png}}
  \fancyfoot[L]{%
    \begin{tikzpicture}[baseline]
      \node[anchor=west, font=\small] (txt) at (0,0) {%
        \begin{minipage}[t]{7.5cm}
          \textbf{Campus Teatinos-Universidad}\\
          C/ Eolo, 10\\
          29010 Málaga\\
          \textbf{universidadeuropea.com}
        \end{minipage}%
      };
    \end{tikzpicture}%
  }
  \fancyfoot[R]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

% ---------- Estilo de portada: logo, sin número de página ----------
\fancypagestyle{portada}{%
  \fancyhf{}
  \fancyhead[L]{\includegraphics[height=1.3cm]{img/logo.png}}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

% ---------- Estilo de los títulos de sección ----------
\RequirePackage{titlesec}
\titleformat{\chapter}[hang]
  {\normalfont\normalsize\bfseries}
  {\thechapter.}{1em}{}
\titleformat{\section}
  {\normalfont\normalsize\bfseries}
  {\thesection}{1em}{}
\titleformat{\subsection}
  {\normalfont\normalsize\bfseries\itshape}
  {\thesubsection}{1em}{}

% ---------- Índice ----------
\RequirePackage{tocloft}
\renewcommand{\cftchapfont}{\bfseries}
\setcounter{tocdepth}{2}

% ---------- Otros paquetes útiles ----------
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  linkcolor=black,
  urlcolor=black,
  citecolor=black,
  pdftitle={Memoria de Prácticas Académicas Externas},
  pdfauthor={Nombre Apellido1 Apellido2}
}
\RequirePackage{parskip}
\RequirePackage{enumitem}
