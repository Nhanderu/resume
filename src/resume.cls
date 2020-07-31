\ProvidesClass{main}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions
\relax
\LoadClass{article}

% Imports.
\usepackage[a4paper, hmargin=1cm, vmargin=1cm]{geometry}
\usepackage{xcolor}
\usepackage{hyperref}
\usepackage{fontspec}

% Remove page numbering.
\pagenumbering{gobble}

% Remove indentation.
\setlength
\parindent{0pt}

% Sets colors.
\definecolor{primary}{HTML}{000000}
\definecolor{secondary}{HTML}{7A9B49}

% Sets fonts.
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[
    Path=../fonts/montserrat/,
    Extension=.otf,
    Color=primary,
    UprightFont=Montserrat-Medium,
    BoldFont=Montserrat-Bold,
    ItalicFont=Montserrat-MediumItalic,
    BoldItalicFont=Montserrat-BoldItalic,
]{Montserrat-Medium}

%
% Environments and commands.
%

\newenvironment{textblock}{}{\vspace{20pt}}

\newcommand{\resumetitle}[1]{
    \bfseries
    \Large
    #1
    \vspace{15pt}
    \hspace{5pt}
    \leaders\vrule height 6pt depth -4pt \hfill\null
    \resumestylereset
}

\newcommand{\resumesection}[1]{
    \vspace{20pt}
    \resumetitle{#1}
}

\newcommand{\resumesubsection}[1]{
    \bfseries
    \color{secondary}
    #1
    \vspace{5pt}
    \resumestylereset
}

\newcommand{\resumesubsubsection}[1]{
    \itshape
    \small
    #1
    \vspace{5pt}
    \resumestylereset
}

\newcommand{\resumestylereset}[0]{
    \normalfont
    \normalsize
    \color{primary}
}
