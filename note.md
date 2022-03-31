## The Seminar of Physics in UM - Computer Tools

### Latex

#### Quick start

1. Texlive 

The environment of Latex.

2. IDE

The software that can compile Latex.

e.g. VScode, Overleaf, LYX, etc.

3. See and compiled results

#### Basic structures, syntaxes

0. Structures

>`\documentclass[]{}`
>`\usepackage{}` 
>`%something else`
>`\begin{document}`
>
> `This is an example.`
> 
>`\end{document}`

1. documentclass
> `\documentclass[UTF8,a4paper,15pt,titlepage,scale=0.8]{article}`
2. usepackage
> `\usepackage{}`

Examples
> `\usepackage{\physics}`
> `\usepackage[a4paper]{geometry}% 调整纸张大小和页边距的包，这里中括号中规定了纸张大小`
> `\usepackage{color}`
> `\usepackage{graphicx}` 
> `\usepackage{subfigure}`
> `\usepackage{indentfirst}%第一段的首行缩进`
> `\usepackage{enumerate}`
> `\usepackage{tikz}`
3. Page config
Adjust the configurations of your pages.
Examples
> `\pgfplotsset{width=10cm,height=7cm,compat=1.13} % 图片绘制的宽度是7cm`
> `\geometry{left=2.0cm,right=2.0cm,top=2.0cm,bottom=2.0cm} % 页边距设置` 
> `\graphicspath{Pictures/}%设置图片路径为当前路径下的pictures文件夹，一般不怎么用` 
> `\setlength{\parindent}{2em}%统一取消首行缩进`
> `\setcounter{chapter}{5}%重新计数章节`
> `\numberwithin{equation}{chapter}%公式排序`
> `\definecolor{grey}{rgb}{0.85,0.85,0.85`
4. begin/end document
`\begin{}` is the most important syntax in Latex. `\begin{document}` means start the main concepts of you tex file.
5. Structures
`\tableofcontents%目录`
`\chapter{}`
`\section{}`
`\subsection`
`\subsubsection{}`
`\paragraph{}`
`\subparagraph{}`

#### Text style

Between `\begin{document}` and `\end{document}`, we could arbitrarily pend lines and texts.
1. Change paragraph
`\\` or
> a
> 
> b

2. Bold

> `\textbf{}`

3. Italic type
> `\textit{}`
4. Underline
> `\underline{}`

5. Just text environment

> `\text{}`

7. Space

> `\`

8. 对齐

> `&` 

9.  Equation environment
> `$ $` or `$$  $$`

#### Notations
In the equation environment.

1. Special characters
`\alpha \beta \gamma \phi \psi \xi \zeta \delta \epsilon \sigma \theta \lambda \pi`
`\Alpha etc.`
`\le \ge \ll \gg \lll \ggg \neq \equiv \forall \exist \in \otimes \times \cdot \codts \vdots`
`\left(   \right) etc.`
`\{ \}`
`\sum \bigotimes \bigoplus \int \lim`
`\partial \dd`
2. mathbb


#### Equations
>`\begin{equation}`
>
>`\end{equation}`
1. fraction
> `\frac{numerator}{denominator}`
2. sub
> `a_n a_{nmj} a_{\text{initial}}`
3. aligned
>`\begin{equation}`
>`\begin{aligned}`
>
>`\end{aligned}`
>`\end{equation}`
4. matrix

>`\mqty[a & b & c\\ d & e & f \\ g & h &i ]`
5. equation set
>`\begin{equation}`
>`\begin{case}`
>   `1 \\`
>   `2 \\ `
>   `3 `
>`\end{case}`
>`\end{equation}`
#### Tables

> via tex demo

>`\begin{table}`
>`\begin{tabular}`
>
>`\end{tabular}`
>`\end{table}`

#### Figures

> via tex demo

#### Citations

Using bibtex. You need to creative a file with `.bib` extension. And import your references in bibtex form into you `.bib` file.

Usage: `\ref{}`

adding a `% \printbibliography`
`\bibliographystyle{IEEEtran}%style`
`\bibliography{references}`

#### Advanced functions

1. data processing, plot

2. flow chart


#### Resources

overleaf



### MATLAB

#### Syntaxes
Basically, you can use C or Cpp language.



#### Terminal



#### Tools



#### Resources



