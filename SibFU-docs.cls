% класс документов для рефератов

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SibFU-docs}

% загрузка базового класса extarticle (что поддерживает 14pt)
\LoadClass[14pt,a4paper]{extarticle}

% подключаем необходимые пакеты (в правильном порядке)
\RequirePackage[utf8]{inputenc}
\RequirePackage[T2A]{fontenc}
\RequirePackage[russian]{babel}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{titlesec}
% Times-подобный шрифт с кириллицей для pdflatex
\RequirePackage{tgtermes}
% математические шрифты
\RequirePackage{newtxmath}

% biblatex с правильной конфигурацией для русского языка
\RequirePackage{csquotes}
\RequirePackage[
    style=gost-numeric,
    backend=biber,
    sorting=none,
    autolang=other,
    language=auto
]{biblatex}

% настройка полей страницы по СТУ
\geometry{
    left=30mm,
    right=10mm,
    top=20mm,
    bottom=20mm,
    headsep=10mm,
    bindingoffset=0mm
}

% настройка межстрочного интервала (1.5)
\onehalfspacing

% настройка абзацного отступа
\setlength{\parindent}{12.5mm}

% настройка заголовков
\titleformat{\section}
    {\normalfont\normalsize\bfseries}{\thesection.}{1em}{}
\titleformat{\subsection}
    {\normalfont\normalsize\bfseries}{\thesubsection.}{1em}{}

% нумерация страниц
\pagenumbering{arabic}
\pagestyle{plain}

% титульный лист:
% 1 - институт
% 2 - кафедра
% 3 - название работы
% 4 - группа
% 5 - ФИО студента(ов)
% 6 - руководитель (ФИО, должность)
\newcommand{\makecovertitle}[6]{%
    \begin{titlepage}
        	\thispagestyle{empty}
        \begin{center}
            {\fontsize{12}{14}\selectfont\bfseries\MakeUppercase{Министерство науки и высшего образования}}\\[2mm]
            {\fontsize{12}{14}\selectfont\MakeUppercase{Российской Федерации}}\\[6mm]

            {\fontsize{11}{13}\selectfont Федеральное государственное автономное}\\
            {\fontsize{11}{13}\selectfont образовательное учреждение высшего образования}\\
            {\fontsize{12}{14}\selectfont\textbf{«Сибирский федеральный университет»}}\\[10mm]

            {\fontsize{14}{16}\selectfont\textbf{#1}}\\[1mm]
            {\fontsize{14}{16}\selectfont\textbf{#2}}\\[18mm]

            {\bfseries\fontsize{20}{24}\selectfont #3}\\[0pt]
        \end{center}

        \vspace{28mm}
        \begin{flushright}
            {\fontsize{12}{14}\selectfont Выполнил(и):}\\[2mm]
            {\fontsize{12}{14}\selectfont студент(ы) группы \textbf{#4}}\\[2mm]
            {\fontsize{12}{14}\selectfont \textbf{#5}}\\[6mm]
            {\fontsize{12}{14}\selectfont Руководитель: \textbf{#6}}
        \end{flushright}

        \vfill
        \begin{center}
            {\fontsize{12}{14}\selectfont Красноярск, \the\year}
        \end{center}
    \end{titlepage}
    \clearpage
}

% переопределение команды секции содержания
\renewcommand{\contentsname}{СОДЕРЖАНИЕ}
\RequirePackage{tocloft}
\setlength{\cftbeforesecskip}{3pt}
\setlength{\cftbeforesubsecskip}{2pt}
\addto\captionsrussian{\renewcommand{\contentsname}{СОДЕРЖАНИЕ}}

% настройка списка литературы
\defbibheading{bibliography}[\bibname]{%
    \section*{СПИСОК ИСПОЛЬЗОВАННЫХ ИСТОЧНИКОВ}%
    \addcontentsline{toc}{section}{СПИСОК ИСПОЛЬЗОВАННЫХ ИСТОЧНИКОВ}%
}
