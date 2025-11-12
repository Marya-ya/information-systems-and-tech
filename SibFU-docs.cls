% класс документов для рефератов

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SibFU-docs}[2025/11/06 v1.0 SibFU Documents Class]

% загружаем базовой класс article
\LoadClass[14pt,a4paper]{article}

% подключаем необходимые пакеты
\RequirePackage[utf8]{inputenc}
\RequirePackage[T2A]{fontenc}
\RequirePackage[russian]{babel}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{titlesec}
\RequirePackage[style=gost-numeric,backend=biber,sorting=none]{biblatex}

% настройка полей страницы по СТУ
\geometry{
    left=30mm,
    right=15mm,
    top=20mm,
    bottom=20mm
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

% библиография:

% титульный лист
\newcommand{\makecovertitle}[5]{
    \begin{titlepage}
        \begin{center}
            \large
            МИНИСТЕРСТВО НАУКИ И ВЫСШЕГО ОБРАЗОВАНИЯ\\
            РОССИЙСКОЙ ФЕДЕРАЦИИ
            
            \vspace{0.5cm}
            
            Федеральное государственное автономное\\
            образовательное учреждение высшего образования\\
            «СИБИРСКИЙ ФЕДЕРАЛЬНЫЙ УНИВЕРСИТЕТ»
            
            \vspace{0.5cm}
            
            #1 % Институт
            
            \vspace{0.5cm}
            
            #2 % Кафедра
            
            \vspace{3cm}
            
            \textbf{\Large #3} % Название работы
            
            \vspace{3cm}
        \end{center}
        
        \begin{flushright}
            \large
            Выполнили:\\
            студенты группы #4\\
            #5 % ФИО студентов
        \end{flushright}
        
        \vfill
        
        \begin{center}
            \large
            Красноярск \the\year
        \end{center}
    \end{titlepage}
}

% переопределение команды секции содержания
\renewcommand{\contentsname}{СОДЕРЖАНИЕ}

% настройка отступов в содержании
\RequirePackage{tocloft}
\setlength{\cftbeforesecskip}{5pt}
\setlength{\cftbeforesubsecskip}{5pt}

% настройка списка литературы
\defbibheading{bibliography}{\section*{СПИСОК ИСПОЛЬЗОВАННЫХ ИСТОЧНИКОВ}}
