% $Log: ncfthesis.cls,v $
% Copyright (c) 2019, by Chris Kottke
%%
% Changelog: 
%
% 04/11/2019 nobind option added, support for multiple sponsors
% 04/05/2019 Basic version
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ncfthesis}[2019/04/11 NCF thesis class]
 
\LoadClass{report} % Use report class as a base

\RequirePackage{geometry}

\RequirePackage{setspace}
 
% Allow for a singlespace option
\def\@mystretch{1.5} % Default to double space
\DeclareOption{singlespace}{\def\@mystretch{1}}

% Library margin requirements for binding are the default
% nobind option gives symmetric margins
\geometry{left=1.5in, right=1in, top=1in, bottom=1in}
\DeclareOption{nobind}{\geometry{left=1.25in, right=1.25in, top=1in, bottom=1in}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}} 
\ProcessOptions\relax

% Single or double space
\setstretch{\@mystretch}
 
\gdef\@degree{Bachelor of Arts}
\newcommand\degree[1]{\gdef\@degree{#1}}
\newcommand\division[1]{\gdef\@division{#1}}
\newcommand\degreemonth[1]{\gdef\@degreemonth{#1}}
\newcommand\degreeyear[1]{\gdef\@degreeyear{#1}}
\newcommand\thesisdate[1]{\gdef\@thesisdate{#1}}

\newcommand\sponsor[2]{ % Support for multiple sponsors
\@ifundefined{@sponsorname}{
	\gdef\@sponsorname{#1}%\gdef\@sponsortitle{#2}
	\gdef\@sponsorsig{\vbox\bgroup\setstretch{1}\par\noindent\dotfill\null\\{\null\hfill #1, #2}\\{\null\hfill \@thesisdate}\egroup}
}{
	\g@addto@macro\@sponsorname{\ and\ #1}
	\g@addto@macro\@sponsorsig{\vfill\vbox\bgroup\setstretch{1}\par\noindent\dotfill\null\\{\null\hfill #1, #2}\\{\null\hfill \@thesisdate}\egroup}
}}


% Signature lines %%% Pushed into sponsor macro to support multiple sponsors
%\newcommand\signature[2]{\vbox\bgroup\setstretch{1}\par\noindent\dotfill\null\\{\null\hfill #1}\\{\null\hfill #2}\egroup}

% Generate the title page using vfills to fill page
\renewcommand{\maketitle}{%
\thispagestyle{empty} % No page number
\vspace*{1in}
\begin{center}
\bgroup  % Single spaced
\setstretch{1}
{\bf \MakeUppercase{\@title}}
\vfill
{\MakeUppercase{by}}
\\ {\MakeUppercase{\@author}}
\vfill
A Thesis
\vfill
Submitted to the {\@division}
\\ New College of Florida
\\ in partial fulfillment of the requirements for the degree
\\ Bachelor of Arts
\\ under the sponsorship of {\@sponsorname}
\vfill
Sarasota, Florida
\\ \@degreemonth\ \@degreeyear
\egroup
\end{center}
}

% Abstract environment
\renewenvironment{abstract}
{\clearpage
\thispagestyle{plain}
\vspace*{1in}
\bgroup\setstretch{1} % Single spaced title and author
\begin{center}
{\large\bf \@title}
\\[\baselineskip]
{\large \@author}
\\[\baselineskip]
\@normalsize New College of Florida, \@degreeyear
\end{center}
\egroup % end single spaced
\vfill
\addcontentsline{toc}{chapter}{Abstract}
\section*{Abstract} }
%
{\vfill
\@sponsorsig % Now handles multiple sponsors
%\signature{\@sponsorname, \@sponsortitle}{\@division, \@thesisdate}
\vfill }

% Centered dedication page
\newenvironment{dedication}
{\clearpage \vspace*{2in}\begin{center}\large}
{\end{center}\@normalsize}

% Acknowledgements page (added to TOC)
\newenvironment{acknowledgements}
{\clearpage\vspace*{2in}
\addcontentsline{toc}{chapter}{Acknowledgements}
\section*{Acknowledgements}
}{}

