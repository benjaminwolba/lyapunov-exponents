%-------------------------------------------------------------------------
%	Standard Preamble for Articles
%-------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article}

\LoadClass[
12pt,																		% font size		
a4paper																	% page layout
]{scrartcl}
%\setlength \parindent{0pt} \parskip 12pt


%------------------------------------------------
%	Encoding, Font, Language
%------------------------------------------------

\RequirePackage[utf8]{inputenc}												% converts input to latex-language 
\RequirePackage[T1]{fontenc}												% font
\RequirePackage[english]{babel}												% language package
\RequirePackage{cmap} 														% allows to copy text from PDF

%------------------------------------------------
%	Page Layout
%------------------------------------------------

\RequirePackage{geometry}													% page geometry
\geometry{left=2.0cm,right=2.0cm, top=2.0cm, bottom=3.0cm}					% specify margin

\RequirePackage{lscape}														% set pages as landscape

\RequirePackage[absolute,overlay]{textpos} 									% text positioning
\RequirePackage{setspace} 													% controll space between lines
\onehalfspacing 														    % spaces times 1,5 !

\RequirePackage{scrpage2} 													% header and footer



%------------------------------------------------
%	Images, PDF and tables
%------------------------------------------------

\RequirePackage{graphicx}													% include graphics
\RequirePackage[dvipsnames]{xcolor}											% color package, dvipsnames provides more colors
\RequirePackage{pdfpages} 													% enables the integration of PDFs to the Latex document

\RequirePackage{pgf,tikz} 													% for drawing graphics
\RequirePackage{circuitikz}													% draw electrical networks
\usetikzlibrary{shapes.geometric, shapes.callouts, arrows, mindmap, positioning} 

\RequirePackage{rotating} 													% let objects rotate
\RequirePackage{float}														% floating environments
\RequirePackage[section]{placeins} 											% control float placement

\RequirePackage[margin=8mm,font=small,labelfont=bf,format=plain]{caption}	% set captions
\RequirePackage[margin=8mm,font=small,labelfont=bf,format=plain]{subcaption}

\RequirePackage{tabularx}													% tables
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}} 				    % flush left with width
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}} 					% centered with width
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}} 					% flush right with width

\RequirePackage{multicol, multirow}											% many colums / rows
\RequirePackage{enumitem} 													% adjust enumerate / itemize

%------------------------------------------------
%	Mathematics and Science
%------------------------------------------------

\RequirePackage{amsmath,amsfonts,amssymb}									% math packages
\RequirePackage{dsfont}														% font package for sets
\newcommand{\C}{\mathds{C}} 												% command for body of complex numbers
\newcommand{\R}{\mathds{R}} 												% command for body of real numbers
\newcommand{\Z}{\mathds{Z}} 												% command for body of integer numbers
\newcommand{\N}{\mathds{N}} 												% command for body of natural numbers

\usepackage{physics}														% typesetting equations for physics 
\newcommand{\nab}{\vec{\nabla}}
\newcommand{\1}{\hat{1}}

% https://tex.stackexchange.com/questions/120029/how-to-typeset-a-primed-vector
% use this as \pvec{v}' or \pvec{v}''
\newcommand{\pvec}[1]{\vec{#1}\mkern2mu\vphantom{#1}}

% change definition of div, https://tex.stackexchange.com/questions/175251/how-to-redefine-a-command-using-declaremathoperator
\let\div\relax																
\newcommand{\div}{\vec{\nabla} \cdot}
\newcommand{\rot}{\vec{\nabla} \curl}
\DeclareMathOperator{\sgn}{sgn}												% sgn operator
\DeclareMathOperator*{\SumInt}{%
	\mathchoice%
	{\ooalign{$\displaystyle\sum$\cr\hidewidth$\displaystyle\int$\hidewidth\cr}}
	{\ooalign{\raisebox{.14\height}{\scalebox{.7}{$\textstyle\sum$}}\cr\hidewidth$\textstyle\int$\hidewidth\cr}}
	{\ooalign{\raisebox{.2\height}{\scalebox{.6}{$\scriptstyle\sum$}}\cr$\scriptstyle\int$\cr}}
	{\ooalign{\raisebox{.2\height}{\scalebox{.6}{$\scriptstyle\sum$}}\cr$\scriptstyle\int$\cr}}
}	

\RequirePackage[version=3]{mhchem} 											% chemical formula
\RequirePackage{isotope} 													% quote isotopes and nuclides

\RequirePackage{listings}													% Python-code with \begin{lstlisting}[language=Python] ... \end{lstlisting}

\RequirePackage{siunitx}													% set units correctly
\sisetup{separate-uncertainty,  										    % quotation of uncertainty: (value \pm MU) unit
	exponent-product=\cdot} 									        	% dot instead of cross

\makeatletter															    % adjust spacing around equations
\g@addto@macro\normalsize{%
	\setlength\abovedisplayskip{20pt}
	\setlength\belowdisplayskip{20pt}
	\setlength\abovedisplayshortskip{20pt}
	\setlength\belowdisplayshortskip{20pt}}
\makeatother

%------------------------------------------------
%	References
%------------------------------------------------

\RequirePackage[
	style=phys,
	articletitle=false,
	biblabel=brackets,%
	chaptertitle=false,
	pageranges=false,
	backend=biber 															% specify backend as biber
]{biblatex}										

\DeclareFieldFormat[article]{volume}{\mkbibbold{#1}}
\renewbibmacro{in:}{}
