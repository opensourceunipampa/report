\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cosreport}[2023/03/10 v1.0 Clube Open Source]
\LoadClass[11pt]{article}

\renewcommand{\author}[1]{\gdef\cos@author{#1}}
\renewcommand{\title}[1]{\gdef\cos@title{#1}}
\renewcommand{\date}[1]{\gdef\cos@date{#1}}
\newcommand{\semester}[1]{\gdef\cos@semester{#1}}

\providecommand{\hairsp}{\hspace{1pt}}
\providecommand{\ie}{\textit{i.\nobreak\hairsp{}e.}}
\providecommand{\eg}{\textit{e.\nobreak\hairsp{}g.}}

\RequirePackage{calc}
\RequirePackage{xifthen}
\RequirePackage{xstring}

\RequirePackage{fontspec}
\setsansfont{Figtree}[
    Extension      = .ttf,
    Path           = ./fonts/,
    FontFace       = {l}{n}{*-Light},
    FontFace       = {l}{it}{*-LightItalic},
    FontFace       = {sl}{n}{*-Medium},
    FontFace       = {sl}{it}{*-MediumItalic},
    UprightFont    = *-Regular,
    ItalicFont     = *-Italic,
    BoldFont       = *-SemiBold,
    BoldItalicFont = *-SemiBoldItalic,
    FontFace       = {k}{n}{*-Bold},
    FontFace       = {k}{it}{*-BoldItalic},
    FontFace       = {eb}{n}{*-ExtraBold},
    FontFace       = {eb}{it}{*-ExtraBoldItalic},
    FontFace       = {ub}{n}{*-Black},
    FontFace       = {ub}{it}{*-BlackItalic}
]
\newcommand{\textbbf}[1]{{\fontseries{k}\selectfont{}#1}}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{luacolor}
\definecolor{foreground}{RGB}{144,99,205}

\def\@hmargin{2.5cm}
\def\@vmargin{2.5cm}
\RequirePackage[
    a4paper,
    ignoreall,
    hmargin      = \@hmargin,
    vmargin      = \@vmargin
]{geometry}

\RequirePackage[
    bookmarks         = true,
    bookmarksnumbered = true,
    bookmarksopen     = true,
    unicode           = true,
    colorlinks        = true,
    linktoc           = all,
    linkcolor         = foreground,
    citecolor         = foreground,
    filecolor         = foreground,
    urlcolor          = foreground,
    pdfstartview      = FitH,
    pdfencoding       = auto
]{hyperref}
\PassOptionsToPackage{hyphens}{url}

\RequirePackage[portuguese]{babel}
\RequirePackage{graphicx}
\RequirePackage{float}

\RequirePackage{csquotes}
\RequirePackage[
    backend  = biber,
    natbib   = true,
    hyperref = true,
    style    = authoryear-comp
]{biblatex}

\renewcommand{\maketitle}{%
    \newpage\vspace*{2em}
    \begin{center}
        \includegraphics[width=50mm]{images/logo}\\
        \vspace{1cm}
        {\LARGE Relatório de Atividades\\
        \vspace{2.5mm}\textbbf{\cos@title}}\\
        {\large \cos@semester}\\
        {\small Universidade Federal do Pampa, \textit{campus} Alegrete}\\
        \vspace{1.5em}
        \large \lineskip 0.5em
        \begin{tabular}[t]{c}
            \cos@author
        \end{tabular}\par
        \vspace{1em}
        {\small \cos@date}
    \end{center}
    \par
    \vspace{1.5em}}
