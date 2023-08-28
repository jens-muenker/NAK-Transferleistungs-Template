%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dokumentenklasse für Transferleistungen
% erstellt am 01.12.2022
% Version: v1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{common/nak}[2022/12/01 v1, by Jens Muenker]

\newif\iflnienglish\lnienglishfalse
\DeclareOption{english}{\lnienglishtrue}

\ProcessOptions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Seiteneinstellungen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[a4paper,oneside,12pt, enabledeprecatedfontcommands, bibliography=totocnumbered]{scrartcl} % Schriftgröße 12pt
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc} % Times Schrift

\RequirePackage{textalpha} % Griechische Schriftzeichen
\RequirePackage{lmodern} % Gerenderte Schrift
\RequirePackage{eurosym} % Euro Symbol

\RequirePackage{setspace}
\setstretch{1.25} %Zeilenabstrand 1.25

\RequirePackage[margin=2cm, includefoot, heightrounded]{geometry} % Seitenrand 2cm
\RequirePackage{microtype}

\RequirePackage[table]{xcolor} % Farben in Tabellen

% Sprache einstellen (Schriftzeichen)
\RequirePackage[english,ngerman,german]{babel}
\iflnienglish\selectlanguage{english}\def\bbl@main@language{english}\fi

\usepackage{amsmath}

\usepackage[inline]{enumitem}
\setlist[itemize]{itemjoin=\hspace*{\fill},itemjoin*=\hspace*{\fill}} 

\usepackage{boldline,multirow}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Zitieren mit biber & biblatex
\usepackage{csquotes, url}
\usepackage[backend=biber,citestyle=verbose-ibid,urldate=short,style=apa]{biblatex} % APA-Zitierstil

% Webeseiten-Url-Config
\PassOptionsToPackage{hyphens}{url}
\RequirePackage[hyperfootnotes=false]{hyperref}

% Tikz-Import
\RequirePackage{tikz}
\usetikzlibrary{fadings}

% Für Matheformeln etc.
\RequirePackage{mathptmx}

%Graphicx
\RequirePackage{graphicx}

% Bildunterschriften
\RequirePackage{caption}
\RequirePackage{subcaption}

% Listen
\RequirePackage{listings}

% Für Farben
\RequirePackage{color}

% Mehrfach Footnote
\RequirePackage[symbol]{footmisc}

% Auf Kapitel im Text verweisen
\usepackage{cleveref}

% Abkürzungen
\RequirePackage{acronym}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tabelleneinstellungen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{array} % m und b tabellenausrichtungen
\RequirePackage{longtable} % Tabellen über mehrere Spalten
\RequirePackage{booktabs} % Bessere Tabellen
\RequirePackage{multirow} % Tabellen mit multirow Zellen
\renewcommand{\arraystretch}{1.5} % Tabellen: Zeilenabstand
\setlength{\tabcolsep}{12pt} % Tabellen: Spaltenabstand
\usepackage{threeparttable} % Für Tabellen mit Fußnoten

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Figuren im Text
\RequirePackage{wrapfig}

% PDFs im Text verwenden/importieren können
\RequirePackage{pdfpages}
\RequirePackage[export]{adjustbox}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nordakademie Header für die Seiten
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{fancyhdr}
\addtolength{\headheight}{0.9cm} % Headerhöhe
\pagestyle{fancyplain}
\fancyhead[R]{\includegraphics[height=0.8cm]{images/Nordakademie_Logo.png}} % Logo rechts
\fancyhead[L]{\includegraphics[height=0.9cm]{images/transferleistung.png}} % Logo links

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[all]{nowidow} % Keine Waisen (einsame Zeile eines Absatzes auf der nächsten Seite)

% Pagestyles
\RequirePackage{floatpag}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hilfreiche Befehle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\needCite}[1][]{
    \@latex@warning{Still require cite: #1! Needs to be done}
    \colorbox{yellow}{\textcolor{red}{Zitat Notwendig #1}}
}

\newcommand{\todo}[1]{
    \textcolor{red}{TODO: #1}
    \@latex@warning{TODO: #1! Needs to be done}
}

\newcommand{\anf}[1]{\glqq #1\grqq{}}
\newcommand{\anfo}[1]{\glqq #1\grqq}

\newcommand{\fullref}[1]{\ref{#1} \anf{\nameref{#1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Verbesserte Fussnote
\renewcommand\@makefntext[1]{\leftskip=0.5em\hskip-0.45em\@makefnmark#1}

\RequirePackage{float}

% Auskommentieren von LaTex-Elementen und längeren Text-Blöcken
\usepackage{verbatim} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Programmcode verwenden
%
% WICHTIG:
%
% Python 3 & das Python-Package
% python-pygments muss installiert sein!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\RequirePackage{minted}

%Konfiguration der Codestyles

%\setminted[js]{ 
%    linenos=true,             % Line numbers
%    autogobble=true,          % Automatically remove common white space
%    frame=lines,
%    framesep=2mm,
%    fontsize=\footnotesize
%}

%\setminted[abap]{ 
%    linenos=true,             % Line numbers
%    autogobble=true,          % Automatically remove common white space
%    frame=lines,
%    framesep=2mm,
%    fontsize=\footnotesize
%}

%\setminted[xml]{ 
%    linenos=true,             % Line numbers
%    autogobble=true,          % Automatically remove common white space
%    frame=lines,
%    framesep=2mm,
%    fontsize=\footnotesize
%}

%\setminted[json]{ 
%    linenos=true,             % Line numbers
%    autogobble=true,          % Automatically remove common white space
%    frame=lines,
%    framesep=2mm,
%    fontsize=\footnotesize
%}

%\setminted[java]{ 
%    linenos=true,             % Line numbers
%    autogobble=true,          % Automatically remove common white space
%    frame=lines,
%    framesep=2mm,
%    fontsize=\footnotesize
%}

%\makeatletter
%\newenvironment{codeBlock}[3]S
% {\RecustomVerbatimEnvironment{Verbatim}{BVerbatim}{}
%  \def\FV@BProcessLine##1{
%    \hbox{
%      \hbox to\z@{\hss\theFancyVerbLine\kern\FV@NumberSep}
%      \FancyVerbFormatLine{##1}
%    }
%  }
%  \VerbatimEnvironment
%  \begin{listing}[H]
%  \centering
%  \caption{#2}
%  \label{#3}
%  \setbox\z@=\hbox\bgroup
%  \begin{minted}[samepage]{#1}}
% {\end{minted}\egroup
%  \leavevmode\vbox{\hrule\kern2mm\box\z@\kern2mm\hrule}
%  \end{listing}\noindent
% }
%\makeatother

%\usemintedstyle{lovelace}
%\usemintedstyle[abap]{abap}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Verzeichniseinstellungen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand*{\listingautorefname}{\listingscaption}

% Inhaltsverzeichnis
\newcommand{\inhaltsverzeichnis}{
	\newpage
	\hypertarget{toc}
	\phantomsection
	\tableofcontents
}

% Abbildungsverzeichnis
\newcommand{\abbildungsverzeichnis}{
	\newpage
	\phantomsection
	\addcontentsline{toc}{section}{\footnotesize{Abbildungsverzeichnis}}
	\listoffigures
}

% Tabellenverzeichnis
\newcommand{\tabellenverzeichnis}{
	\phantomsection
	\addcontentsline{toc}{section}{\footnotesize{Tabellenverzeichnis}}
	\listoftables
}

% Abkürzungsverzeichnis
\newcommand{\abkuerzungsverzeichnis}{
	\phantomsection
	\section*{Abkürzungsverzeichnis}
	\addcontentsline{toc}{section}{\footnotesize{Abkürzungsverzeichnis}}
	\begin{center}
		\input{abkuerzungen.tex}
	\end{center}
}

% Quellcodeverzeichnis
%\newcommand{\listingverzeichnis}{
%	\phantomsection
%	\addcontentsline{toc}{section}{\footnotesize{Quellcodeverzeichnis}}
%	\listoflistings
%}
%\renewcommand\listingscaption{Quellcodeverzeichnis}
%\renewcommand\listoflistingscaption{Quellcodeverzeichnis}

% Quellenverzeichnis
\newcommand{\quellenverzeichnis}{
	\newpage	
	\phantomsection
    \section*{Quellenverzeichnis}
	\addcontentsline{toc}{section}{\footnotesize{Quellenverzeichnis}}
	\printbibliography[heading=none]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
