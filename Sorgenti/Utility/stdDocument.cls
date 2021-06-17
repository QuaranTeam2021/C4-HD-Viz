% \LoadClass[a4paper, 11pt]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stdDocument}

% \DeclareOption{10pt}{\LoadClass[a4paper, 10pt]{article}}
% \DeclareOption{11pt}{\LoadClass[a4paper, 11pt]{article}}
% \DeclareOption{12pt}{\LoadClass[a4paper, 12pt]{article}}
% \DeclareOption*{\PassOptionsToClass{a4paper, \CurrentOption}{article}}
% \ProcessOptions\relax
\LoadClass[a4paper, 11pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[italian]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{charter}
\RequirePackage{color}
\RequirePackage{caption}

\RequirePackage[longtable]{multirow}
\RequirePackage[table]{xcolor} 
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage{makecell}

\RequirePackage{graphbox}
\RequirePackage{graphicx}
\RequirePackage{import}
\RequirePackage{titlesec}
\RequirePackage{lastpage}
\RequirePackage{etoolbox}
\RequirePackage{diagbox}
\RequirePackage{float}
\colorlet{headercolour}{violet!40}
\colorlet{evencolour}{white}
\colorlet{oddcolour}{gray!20!white}


\RequirePackage[top=2.8cm, bottom=4.0cm, left=2.2cm, right=2.2cm]{geometry}
\RequirePackage[pdftex,
            pdftitle={\TitoloDoc{} v\VersioneDoc},
            pdfauthor={QuaranTeam - Gruppo 5},
            pdfcreator={QuaranTeam - Gruppo 5},
            bookmarks=true,
            bookmarksnumbered=true,
            pdfpagelabels=true,
            pdfpagemode=UseOutlines,
            pdfstartview=FitH,
            linktocpage=true,
            colorlinks=true,
            linkcolor=black,
            urlcolor=blue,
            plainpages=false
           ]{hyperref}


\RequirePackage{imakeidx}
\makeindex[columns=2, intoc]

% Impostazione sottotitolo di quarto livello e quinto livello
\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}

\RequirePackage{fancyhdr}



\titleformat{\paragraph}
{\normalfont\normalsize\bfseries}{\theparagraph}{1em}{}
\titlespacing*{\paragraph}{0pt}{2.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

\titleformat{\subparagraph}
{\normalfont\normalsize\bfseries}{\thesubparagraph}{1em}{}
\titlespacing*{\subparagraph}{0pt}{1.75ex plus 1ex minus .2ex}{.75ex plus .1ex}

\newcommand{\templateDoc}{
      \pagestyle{fancy}
      \fancyhf{}
      \fancyhead[L]{\TitoloDoc{} - Versione \VersioneDoc{}}
      \fancyhead[R]{ \includegraphics[scale=0.1]{\pathimg/cropped_quaranteam_logo.jpg}}

      \renewcommand\sectionmark[1]{\markboth{§~\thesection}{}}
      \renewcommand\subsectionmark[1]{\markboth{§~\thesubsection}{}}
      \renewcommand\subsubsectionmark[1]{\markboth{§~\thesubsubsection}{}}
      \renewcommand\paragraphmark[1]{\markboth{§~\theparagraph}{}}

      \fancyfoot[L]{\leftmark}
}
\newcommand{\templateVerbale}{
  \pagestyle{fancy}
  \fancyhf{}
      \fancyhead[L]{\TitoloDoc{} - Versione \VersioneDoc{}}
      \fancyhead[R]{ \includegraphics[scale=0.1]{\pathimg/cropped_quaranteam_logo.jpg}}
}

\newcommand{\frontespizio}{
      \begin{titlepage}
      \begin{center}
            \includegraphics[scale=0.6]{\pathimg/quaranteam_logo.jpg}\\ 
      \end{center}

      \thispagestyle{empty}
      \begin{center}
            \Huge
            \textbf{\TitoloDoc{}}

            \vspace{0.6cm}
            \large
            \textbf{Gruppo \Gruppo{} - Progetto \NomeProgetto{}}\\


            \vspace{0.6cm}
            \Mail{}      
            \vspace{0.8cm}

      \end{center}
      \begin{table}[ht]
        \begin{center}
          \label{tab:Informazioni_Documento}
          \begin{tabular}{r|l}
              \multicolumn{2}{c}{ \textsc{Informazioni sul documento} } \\
              \hline
                  \textbf{Versione} & \VersioneDoc{} \\[2pt]
                  \textbf{Approvatore} & \Approvatore{} \\[2pt]
                  \textbf{Redattori} & \Redattori{} \\[2pt]
                  \textbf{Verificatori} & \Verificatori{}\\[2pt]
                  \textbf{Stato} & \Stato{} \\[2pt]
                  \textbf{Uso} & \Uso{} \\[2pt]  
                  \textbf{Destinato a} & \Distribuzione \\
          \end{tabular}
        \end{center}
      \end{table}
      
      \vspace{\fill}
      \begin{center}
      \textbf{Descrizione}\\
      \DescrizioneDoc{}
      \end{center}
      \end{titlepage}
}

\newcommand{\frontespizioVerbale}{
      \begin{titlepage}
      \begin{center}
            \includegraphics[scale=0.6]{\pathimg/quaranteam_logo.jpg}\\ 
      \end{center}

      \thispagestyle{empty}
      \begin{center}
            \Huge
            \textbf{Verbale \Uso{} del \Data{}}

            \vspace{0.6cm}
            \large
            \textbf{Gruppo \Gruppo{} - Progetto \NomeProgetto{}}\\


            \vspace{0.6cm}
            \Mail{}      
            \vspace{0.8cm}

      \end{center}
      \begin{table}[ht]
        \begin{center}
          \label{tab:Informazioni_Documento}
          \begin{tabular}{r|l}
              \multicolumn{2}{c}{ \textsc{Informazioni sul documento} } \\
              \hline
                  \textbf{Versione} & \VersioneDoc{} \\[2pt]
                  \textbf{Approvatore} & \Approvatore{} \\[2pt]
                  \textbf{Redattori} & \Redattori{} \\[2pt]
                  \textbf{Verificatori} & \Verificatori{}\\[2pt]
                  \textbf{Stato} & \Stato{} \\[2pt]
                  \textbf{Uso} & \Uso{} \\[2pt]  
                  \textbf{Destinato a} & \Distribuzione{}\\
          \end{tabular}
        \end{center}
      \end{table}
      
      \vspace{\fill}
      \begin{center}
      \textbf{Descrizione}\\
      \DescrizioneDoc{}
      \end{center}
      \end{titlepage}
}

\newcommand\T{\rule{0pt}{3.4ex}}              % Top strut
\newcommand\B{\rule[-1.2ex]{0pt}{0pt}}        % Bottom strut

\newenvironment{TableBase}
{

\setlength{\tabcolsep}{5pt}
\renewcommand{\arraystretch}{1.4}
 \newcommand{\tcode}[1]{\texttt{##1}}
 \newcommand{\topline}{\hline}
 \newcommand{\capsep}{\hline\hline}
 \newcommand{\rowsep}{\hline}
 \newcommand{\bottomline}{\hline}

%% vertical alignment
 \newcommand{\rb}[1]{\raisebox{1.5ex}[0pt]{##1}}  % move argument up half a row

%% header helpers
 \newcommand{\hdstyle}[1]{\textbf{##1}}       % set header style
 \newcommand{\Head}[3]{\multicolumn{##1}{##2}{\hdstyle{##3}}} % add title spanning multiple columns
 \newcommand{\lhdrx}[2]{\Head{##1}{|c}{##2}}    % set header for left column spanning #1 columns
 \newcommand{\chdrx}[2]{\Head{##1}{c}{##2}}     % set header for center column spanning #1 columns
 \newcommand{\rhdrx}[2]{\Head{##1}{c|}{##2}}    % set header for right column spanning #1 columns
 \newcommand{\ohdrx}[2]{\Head{##1}{|c|}{##2}}   % set header for only column spanning #1 columns
 \newcommand{\lhdr}[1]{\lhdrx{1}{##1}}        % set header for single left column
 \newcommand{\chdr}[1]{\chdrx{1}{##1}}        % set header for single center column
 \newcommand{\rhdr}[1]{\rhdrx{1}{##1}}        % set header for single right column
 \newcommand{\ohdr}[1]{\ohdrx{1}{##1}}
 \newcommand{\br}{\hfill\break}           % force newline within table entry

%% column styles
 \newcolumntype{x}[1]{>{\raggedright\let\\=\tabularnewline}p{##1}}      % word-wrapped ragged-right
                                                                        % column, width specified by #1

  % do not number bullets within tables
  \renewcommand{\labelitemi}{---}
  \renewcommand{\labelitemii}{---}
  \renewcommand{\labelitemiii}{---}
  \renewcommand{\labelitemiv}{---}
}

\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}


% usage: \begin{LongTable}{TITLE}{XREF}{LAYOUT}
% produces table that handles page breaks sensibly.
% WARNING: Putting two of these on the same page
% does not break sensibly. Avoid this for short tables.
\newenvironment{LongTable}[3]
{
 \newcommand{\continuedcaption}{\hiderowcolors \caption[]{#1 (segue da pagina precedente)}\\ \showrowcolors}

\rowcolors{2}{oddcolour}{evencolour}
 \begin{TableBase}
 \begin{longtable}{|#3|}
 \hiderowcolors \caption{#1}\\ \showrowcolors
 % \caption*{\large{\textbf{#1}}}
 % \label{#2}
 % \rowcolor{\colorheader}
}
{
 \bottomline
 \end{longtable}
 \end{TableBase}
}


\newenvironment{floattablebasex}[4]
{
 \rowcolors{1}{\ifnumless{\rownum}{2}{headercolour}{oddcolour}}{evencolour}
 \begin{table}[#4]
 \begin{center}
 \caption{\label{tab:#2}#1}
 \begin{tabular}{|#3|}
}
{
 \bottomline
 \end{tabular}
 \end{center}
 \end{table}
}



% usage: \begin{floattablebase}{TITLE}{XREF}{LAYOUT}{PLACEMENT}
% produces floating table, location determined within limits
% by LaTeX.
\newenvironment{floattablebase}[4]
{
 \begin{TableBase}
 \begin{floattablebasex}{#1}{#2}{#3}{#4}
}
{
 \end{floattablebasex}
 \end{TableBase}
}

% usage: \begin{floattable}{TITLE}{XREF}{LAYOUT}
% produces floating table, location determined within limits
% by LaTeX.
\newenvironment{floattable}[3]
{
 % \begin{floattablebase}{#1}{#2}{#3}{htbp}
 \begin{floattablebase}{#1}{#2}{#3}{htbp}
}
{
 \end{floattablebase}
}

% usage: \begin{simpletypetable}{TITLE}{XREF}{LAYOUT}
% produces white table at current location
\newenvironment{simplewhitetable}[3]
{
 \begin{TableBase}
 \renewcommand{\arraystretch}{1.3}
 \rowcolors{1}{\ifnumless{\rownum}{2}{headercolour}{white}}{}
 \begin{table}[!htb]
 \begin{center}
 \caption{\label{tab:#2}#1}
 \begin{tabular}{|#3|}
}
{
 \bottomline
 \end{tabular}
 \end{center}
 \end{table}
 \end{TableBase}
}

\newenvironment{simpletable}[3]
{
 \begin{floattablebase}{#1}{#2}{#3}{!htb}
}
{
 \end{floattablebase}
}


\newenvironment{RegistroModifiche}
{
   \newcommand{\continuedcaption}{\hiderowcolors \caption[]{Registro delle modifiche (segue da pagina precedente)}\\ \showrowcolors}
  \begin{center}
\rowcolors{2}{evencolour}{oddcolour}
 \begin{TableBase}
 \begin{longtable}{|c|c|p{3.8cm}|x{3.5cm}|p{3.3cm}|}
  \topline
    \rowcolor{headercolour}
      \textbf{Versione}       &   \textbf{Data}   &    \textbf{Descrizione}  &
      \textbf{Autore}   &   \textbf{Verificatore}   \\ \capsep
    \endfirsthead
  \continuedcaption
  \topline
    \rowcolor{headercolour}
      \textbf{Versione}       &   \textbf{Data}   &    \textbf{Descrizione}  &
      \textbf{Autore}   &   \textbf{Verificatore}   \\ \capsep
  \endhead
  \rowsep
    \defaultfooter{5}
}
{ 
 \bottomline
 \end{longtable}
 \end{TableBase}
\end{center}
}


\newenvironment{RiepilogoDecisioni}
{

  \begin{center}
  \begin{LongTable}{Riepilogo delle decisioni}{riepilogo decisioni}{p{5cm}|p{10cm}}
  \topline
    \rowcolor{headercolour}
      \textbf{Codice}   &   \textbf{Decisione}   \\ \capsep
  \endfirsthead
  \continuedcaption
  \topline
    \rowcolor{headercolour}
      \textbf{Codice}   &   \textbf{Decisione}   \\ \capsep
  \endhead
  \rowsep
  \defaultfooter{2}
}
{ 
  \bottomline
  \end{LongTable}
\end{center}
}

\newcommand{\sectionInFolder}[1]{%
    \newpage
    \import{res/sections/#1/}{main}
}

\newcommand{\subsectionInFile}[1]{%
    \subimport{subsections/}{#1}
}

\renewcommand{\footrulewidth}{1pt}
\newcommand{\fullDocConfig}{
   \pagenumbering{roman}
  \templateDoc
   \fancyfoot[R]{\thepage}
  \frontespizio{}
  \newpage
\section*{Registro delle modifiche}
  \input{res/registro}
  \newpage
  \tableofcontents
  \newpage
   \pagenumbering{arabic}  
   \fancyfoot[R]{Pagina \thepage \hspace{1pt} di \pageref{LastPage}}
}

\newcommand{\fullDocConfigTablesImg}{
  \pagenumbering{roman}
  \templateDoc
  \fancyfoot[R]{\thepage}
  \frontespizio{}
  \newpage
  \section*{Registro delle modifiche}
  \input{res/registro}
  \newpage
  \tableofcontents
  \newpage
  \listoffigures
  \listoftables
  \newpage
  \pagenumbering{arabic}  
  \fancyfoot[R]{Pagina \thepage \hspace{1pt} di \pageref{LastPage}}
}

\newcommand{\fullDocConfigImg}{
  \pagenumbering{roman}
  \templateDoc
  \fancyfoot[R]{\thepage}
  \frontespizio{}
  \newpage
  \section*{Registro delle modifiche}
  \input{res/registro}
  \newpage
  \tableofcontents
  \newpage
  \listoffigures
  \newpage
  \pagenumbering{arabic}  
  \fancyfoot[R]{Pagina \thepage \hspace{1pt} di \pageref{LastPage}}
}


\newcommand{\verbaleFronte}{
  \pagenumbering{roman}
  \templateVerbale
  \fancyfoot[R]{\thepage}
  \frontespizioVerbale{}
  \newpage
}
  
\newcommand{\verbaleIndice}{
  \newpage
  \tableofcontents
  \newpage
  \pagenumbering{arabic}  
  \fancyfoot[R]{Pagina \thepage \hspace{1pt} di \pageref{LastPage}}
}

\newcommand{\glossarioConfig}{
  \pagenumbering{roman}
  \templateVerbale
  \fancyfoot[R]{\thepage}
  \frontespizio{}
  \newpage
  \fancyfoot[L]{\leftmark}
\section*{Registro delle modifiche}
  \input{res/registro}
  \verbaleIndice
  \setcounter{secnumdepth}{0}
  \setcounter{tocdepth}{2}
  \fancyfoot[L]{}

}