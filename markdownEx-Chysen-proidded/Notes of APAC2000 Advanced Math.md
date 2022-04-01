# Notes of APAC2000 ***Advanced Math***

$$\require{cancel}$$

[TOC]

# Chapter 8 Matrices and vector spaces

## Review: Vector algebra

* **Def:** Hilbert Space $\left<f|f\right>$

* **Def:** Linear dependant: Suppose vectors: $v_1, v_2...$ If $\exists$ NOT ALL ZEROS $a_1, a_2...$, that $a_1v_1+a_1v_1+...=0$ 
* Linear independant: $...\neq 0$

> $$
> \left( \begin{array}&{ 0 } & { 0 } & { 1 } \\ { 0 } & { 1 } & { 0 } \\ { 1 } & { 0 } & { 1 } \end{array}\right) 
> \text{independant}
> \left( \begin{array}&{ 0 } & { 1 } & { 1 } \\ { 0 } & { 1 } & { 0 } \\ { 1 } & { 0 } & { 0 } \end{array}\right) 
> \text{dependant}
> $$

## Inner Product

$$
\left<a|b\right> \equiv (a,b)= \sum _ { i = 1 } ^ { N } \sum _ { j = 1 } ^ { N } a _ { i } ^ { * } b _ { j } \langle e _ { i } | e _ { j } \rangle
$$



* **Properties: ** 
  $$
  \left\{\begin{array}
      &i.<a|b>=<b|a>^* \\
      ii.<a|\lambda b+\mu c>=\lambda <a|b>+\mu<a|c> 
  \end{array}\right.
  $$

* **Def:** norm: $||a||=<a|a>^{\frac{1}{2}}$ 

* Orthogonal: $<a|b>=0$

* Kronecker delta symbol: 
  $$
  \delta_{ij}=\left\{\begin{array}
  &0 &i=j\\
  1 &i\neq j
  \end{array}\right.
  $$
  

## some useful inequalities

* **Schwarz’s inequality: **
  $$
  | \langle a | b \rangle | \leq \| a \| \| b \|
  $$
  where the equality holds when a is a scalar multiple of b, i.e. when $a=\lambda b$ .

  Proof: (p. 246)

  Hint: suqare the equivelant

* **The triangle inequality:**
  $$
  \| a + b \| \leq \| a \| + \| b \|
  $$
  Hint: same as Schwarz’s inequality

* **Bessel’s inequality: **
  $$
  \| a \| ^ { 2 } \geq \sum _ { i } | \langle \hat { e } _ { i } | a \rangle | ^ { 2 }\\
  \text{or}\\
  \langle a | a \rangle \geq \sum _ { i } | a _ { i } | ^ { 2 }
  $$
  equality hold when $a \in \mathbb{R}$

  Proof: (p.247)

  Hint: measure $\| a - \sum _ { i } \langle \hat { e } _ { i } | a \rangle \hat { e } _ { i } \| ^ { 2 }$

* **the parallelogram equality:**
  $$
  \| a + b \| ^ { 2 } + \| a - b \| ^ { 2 } = 2 ( \| a \| ^ { 2 } + \| b \| ^ { 2 } )
  $$
  Proof: by defiantion

## Basic matrix algebra

* **Def:** from linear transform 

$$
\left\{\begin{array}
	&A_{ij}+B_{ij}=(A+B)_{ij}\\
	(\lambda A)_{ij}=\lambda A_{ij}\\
	(AB)_{ij}=\sum_k A_{ik}B_{kj}
\end{array}\right.
$$

> Example: -

* **Def:**  Null matrix

* **Def:**  identity matrix

* **Def:**  Function of matrix: $B=f(a)$

  > Example: Taylor expansion 
  > $$
  > \exp A=\sum_{n=0}^\infty \frac{A^n}{n!}
  > $$

* **Def:**  Transpose of matrix: $A^T$

  $(AB)^T=B^TA^T$

  $(AB)_{ij}^T=(AB)_{ji}$

* **Def:**  Complex conjugate: $A^*$

For $A$ is a $n\times n$ square matrix: 

* **Def:**  Hermitian conjugate: $A^\dagger$ 

* **Def:**  Trace: $Tr(A)=\sum A_{ii}$ 

  **Properties:** $Tr(A+B)=Tr(A)+Tr(B), Tr(AB)=Tr(BA), Tr(A)=Tr(A^*)=Tr(A^\dagger)$

## Dererminant

* **Def:**  $|A|$ (remove minor)

  **Properties:**  
  $$
  |A^\dagger|=|A^*|=|A|^*
  $$
  
## the inverse of matrix:

Determinant is used to be feed inverse

* **Def:**  For square matrix A, if $\det A \neq 0$, we say A is **singular**

If A, B is non-singular, then $AB=P$, $\Rightarrow$ $B=A^{-1}P, A=B^{-1}$

* **Def:**  $A^{-1}$ : $AA^{-1}=A^{-1}A=I$

Find $A^{-1}$: 

use cofactor $A_{ik}$:
$$
( A ^ { - 1 } ) _ { i k } = \frac { ( C ) _ { i k } ^ { T } } { | A | } = \frac { C _ { k i } } { | A | }\\
$$

>  Example: Find $A^{-1}$ if  $A = \left( \begin{array} { c c c } { 2 } & { 4 } & { 3 } \\ { 1 } & { - 2 } & { - 2 } \\ { - 3 } & { 3 } & { 2 } \end{array} \right)$
>
> 1. $|A|=11$
> 2. $C = \left( \begin{array} { c c c } { 2 } & { 4 } & { - 3 } \\ { 1 } & { 13 } & { - 18 } \\ { - 2 } & { 7 } & { - 8 } \end{array} \right) \quad \text { and } \quad C ^ { T } = \left( \begin{array} { c c c } { 2 } & { 1 } & { - 2 } \\ { 4 } & { 13 } & { 7 } \\ { - 3 } & { - 18 } & { - 8 } \end{array} \right)$
> 3. $A ^ { - 1 } = \frac { C ^ { T } } { | A | } = \frac { 1 } { 11 } \left( \begin{array} { c c c } { 2 } & { 1 } & { - 2 } \\ { 4 } & { 13 } & { 7 } \\ { - 3 } & { - 18 } & { - 8 } \end{array} \right)$

for $2\times 2$ matrix: 
$$
A ^ { - 1 } = \frac { C ^ { T } } { | A | } = \frac { 1 } { A _ { 11 } A _ { 22 } - A _ { 12 } A _ { 21 } } \left( \begin{array} { c c } { A _ { 22 } } & { - A _ { 12 } } \\ { - A _ { 21 } } & { A _ { 11 } } \end{array} \right)
$$


**Properties:**  
$$
\begin{array}
	&(A^{-1})^{-1}=A\\
	(A^{T})^{-1}=(A^{-1})^{T}\\
	(A^{\dagger})^{-1}=(A^{-1})^{\dagger}\\
	(AB)^{-1}=B^{-1}A^{-1}\\
	|A^{-1}|=|A|^{-1}
\end{array}
$$

## Rank of matrix

* **Def:**  R(A): the number of A, or R(A), is the number of independant vectors in set $\{V_1, V_2, \dots, V_n\}$

  **Remark: ** If we write A by $A^T$, we have same defination. 

* **Def:**  submatrix: any matrix from $A$ by ignoring 1 or more Column or Row

* **Def:**  Rank(A): the size of the largest submatrix of A whose determinant is not zero. 

## Orthogonal matrix 

* **Def:**  $A^T=A^{-1}$ or $A^TA=I$ 
* **Properties:** 
  1. A is orth. $\Rightarrow$ $A^-1$ is orth. 
  2. $A^TA = I \Rightarrow |A^T||A|=|A|^2=1$ 
  3. $A^TA = I \Rightarrow \vec { y } = A \vec { x } \Rightarrow \left<y|y\right> = \left<Ax|Ax\right> = (Ax)^TAx = x^Tx = \left<x|x\right>$

* **Def:**  Hermitian: $A=A^\dagger$

  Skew(anti)-hermitian: $-A=A^\dagger$ 

* **Def:**  Unitary: $AA^\dagger=I$ 

* **Def:**  Normal: $AA^\dagger = A^\dagger A$ 

## Eigenvalue problem

* **Def:** For $A(n*n)$ if we have $Ax=\lambda x$, then for any non-zero vector $x$ satisfies $Ax=\lambda(x)$ for some value $\lambda$ is called eigenvalue. 

  $(\lambda, x)$ is called eigenpair of A. 

  or $(A-\lambda I)x=0$ 

  **Remark:** if $(\lambda, x)$ is eigenpair, then $(\lambda, \mu x)$ for $\mu \in \mathbb{R}$ is also eigenpair. 

> For $A$, $Ax=\lambda x$, then what is the eigenpair for $A^{-1}$? 
> $$
> \begin{array}
> 	&Ax =\lambda x &\Rightarrow A^{-1}Ax=A^{-1}\lambda x\\
> 	&\Rightarrow x= \lambda A^{-1}x\\
> 	&\Rightarrow \frac{1}{\lambda}x=A^{-1}x\\
> 	&\Rightarrow (\frac{1}{\lambda}, x)
> \end{array}
> $$


for **normal** matrix, $\lambda(A^\dagger)=\lambda(A^*)$ 

If $\lambda_i \neq \lambda_j$,  then $x^i, x^j$ are orthogonal

> Given $A$, find $(\lambda, x)$ for A
>
> 1. $$
>    \begin{array}
>    	&Ax =\lambda x \Rightarrow |A-\lambda I|=0
>    \end{array}
>    $$
>
>    **Def:** Characteristic equation: $|A-\lambda I|=0$
>
> 2. By plugging $\lambda$ in $(A-\lambda I)_x=0$, to solve $x$ 

$$
\sum \lambda=Tr(A)
$$



## Similarity transformation

>  If we have relation $y=Ax$ under a given basis set, What is the relation under another basisi set? 
>
> $y=Ax$, $y'=A'x'$, 
>
> By: $y=Cy' \Rightarrow C^{-1}Cy'=C^{-1}ACx' \Rightarrow y'=C^{-1}ACx'$, where $A'=C^{-1}AC$ 

**Def:**  the above transformation is called **similarity transformation**. 

**Properties:**  

1. If $A=I$, $A'=I$
2. $|A|=|A'|$
3. $\lambda(A)=\lambda(A')$
4. $Tr(A)=Tr(A')$
5. If $C$ is a **Unitary matrix**, then $A'=C^\dagger AC$ 
6. If $A$ is Hermitian/Unitary, $A'$ is also Hermitian/Unitary  

C: Transfer an orthogonal to another orthogonal

## Diaonalitation of Matrix

Given a matrix A, If we construct the matrix C that has the eigenvectors of A as its column, then the matrix $A'=C^{-1}AC$ is diagonal and hasn the eigenvalues of A as its diagonal elements. 

**Remark:** 

1. Any matrix with distinct eigen value can be diagonalized
2. If $A'=C^{-1}AC$, then $Tr(A)=Tr(A')$ 

> Diagonalise the matrix: 
> $$
> A = \left( \begin{array} { c c c } { 1 } & { 0 } & { 3 } \\ { 0 } & { - 2 } & { 0 } \\ { 3 } & { 0 } & { 1 } \end{array} \right)
> $$
> This matrix is symmetric so may be diagonalised by the form $C^\dagger AC$, where
> $$
> C=(x^1, x^2, x^3)=\frac{1}{\sqrt{2}}
> \left(\begin{array}
> 	&1 &0&-1\\
> 	0&\sqrt{2}&0\\
> 	1&0&1
> \end{array}\right)
> $$
>
> $$
> \left. \begin{array}{l}{ \operatorname { C } ^ { \dagger } A C = \frac { 1 } { 2 } \left( \begin{array} { c c c } { 1 } & { 0 } & { 1 } \\ { 0 } & { \sqrt { 2 } } & { 0 } \\ { - 1 } & { 0 } & { 1 } \end{array} \right) \left( \begin{array} { c c c } { 1 } & { 0 } & { 3 } \\ { 0 } & { - 2 } & { 0 } \\ { 3 } & { 0 } & { 1 } \end{array} \right) \left( \begin{array} { c c c } { 1 } & { 0 } & { - 1 } \\ { 0 } & { \sqrt { 2 } } & { 0 } \\ { 1 } & { 0 } & { 1 } \end{array} \right) }{ = \left( \begin{array} { c c c } { 4 } & { 0 } & { 0 } \\ { 0 } & { - 2 } & { 0 } \\ { 0 } & { 0 } & { - 2 } \end{array} \right) }\end{array} \right.
> $$

$$
|\exp A|=\exp Tr(A)
$$

## Quadric and Hermitian forms

* **Def:**  A **quadratic form** $Q$ is a scalar function of a real vector $x$ given by $Q(x)= \left<x|Ax\right> =x^TAx = \sum A_{ij}x_ix_j$ for linear operator $A$. 

  **Remark:** We only care about the symmetric A

* **Def:**  **Hermitian form**: $H(x) = x^\dagger Ax$, where $A$ is hermitian, $x$ may be complex

  **Remark:** $H^*=H \Rightarrow $H is real 

* **Def:**  **Positive definate**: If Quadratic/Hermitian form $Q \text{ or } H >0$ 

If $x$ is eigenvector, $Q=x^TAx=x^T\lambda x=\lambda$ since $Ax=\lambda x$ 

However if $x$ and $y$ are eigenvectors corresponding to different eigenvalues then they are orthogonal, so 
$$
y^TAx=0
$$
**Quadratic surface**: 
$$
x^TAx=\text{comstant}=1\text{(say)}
$$
is a surface has stationary values of its radius 

## Simultaneous Lineart equation

In application, we have
$$
M: \left\{ \begin{array} { c c c c c } { A _ { 11 }x_1 } & { A _ { 12 }x_2 } & { \ldots } & { A _ { 1 N }x_n } & { =b _ { 1 } } \\ { A _ { 21 }x_1 } & { A _ { 22 }x_2 } & { \ldots } & { A _ { 2 N }x_n } & { =b _ { 2 } } \\ { \vdots } & { } & { \ddots } &  { \vdots }&  { \vdots } \\ { A _ { M 1 }x_1 } & { A _ { M 2 }x_2 } & { \ldots } & { A _ { M N }x_n } & { =b _ { M } } \end{array} \right.
$$

1. If

   all $b_i=0$, the system is **homosenous**

   otherwise, **inhomogenerous** 

2. If

   M>N	**Overditermined system**

   M=N	**Determined system**

   M<N	**Underdetermined system**

3. $Ax=b$

The range and nulll space of Matrix

1. $Ax=b, y=Ax \Rightarrow Ax=b$ 

2. $Ax=b$, A maps a value $x\in V$ to a value $b\in W$, this W called the range of A. $Rank(A)=Rank(W)$

3. If A is singular, then $\exists x\in V_{null}\text{(subspace of V)}$, the maps onto zero vector in $W$. This subspace is called null space of A, $Rank(A)$ is called nullity of $A$. 

4. $Rank(A)+Nullity(A)=N\text{(number of unknowns)}$ 

   * **Def:**  for $A: N\times N$, if 

     $|A|=0$, A is calld **Singular** 

     $|A|\neq 0$, A is calld **Non-singular** 

     **Remark:** If $Ax=b$ with $|A|\neq 0$, then x is unique

## The way to solve linear equation

> Computational Complexity ($O(N)$)
>
> Problem size: $N$ 
>
> Vector multiplication					$aa^T$			$O(N)$
>
> Matrix vector multiplication		$y=Ax$	$O(N^2)$
>
> Matrix matrix multiplication	$C=AB$ 	$O(N^3)$

> Algebraic Multigrid Method: an algorithm first introduced by CCCP

1. **Gauss Elimination** (complex: $O(N^3)$)

2. **Direct inversion** ($A^{-1}$)

   $Ax=b \Rightarrow A^{-1}Ax=A^{-1}b \Rightarrow x=A^{-1}b$ 

3. **LU decomposition** ($A=LU$)

   L: Lower triangle

   U: Upper triangle

   $Ax=b \Rightarrow LUx=b \Rightarrow y=Ux, Ly=b \Rightarrow Ux=y$ 

   If A is SPD (Symmetric positive define), then $A=LL^\dagger$(cholesky decomposition)

4. **Cramer's rule** 

   If $Ax=b$: 
   $$
   \left[\begin{array}
      	&A_{11} &A_{12} &A_{13}\\
      	A_{11} &A_{12} &A_{13}\\
      	A_{11} &A_{12} &A_{13}\\
      \end{array}\right]
      \left[\begin{array}
      	&x_1\\x_2\\x_3
      \end{array}\right]=
      \left[\begin{array}
      	&b_1\\b_2\\b_3
      \end{array}\right]
   $$

   $$
   x_1=\frac{
          \left|\begin{array}
              &b_1 &A_{12} &A_{13}\\
              b_2 &A_{12} &A_{13}\\
              b_3 &A_{12} &A_{13}\\
          \end{array}\right|=\Delta 1
      }{|A|}
   $$

   If $|A|\neq 0$, the unique solution of $Ax=b$ is given by $x_i=\frac{\Delta i}{|A|}$.

5. **Singular Value Decomposition**

   For wheather M and N, 

   1. $A$ is $M\times N$ matrix (can be complex). Suppose that $A=USV^\dagger$, where , ,  

      1. $U: M\times M$ Unitary matrix

      2. $S: M \times N$ and is diagonal ($S_{ij}=0, i\neq j$)

         $s_{ii}=s_i$ is called **singular value**, $i<\min M,N$ 

      3. $V: N\times N$ Unitary matrix

   2. Find $USV^\dagger$ 

      1. $s_i = \sqrt{\lambda_i}$ 

      2. $$
         U=\left[\begin{array}
         	&u^1\\
         	u^2\\
         	u^3
         \end{array}\right]
         $$

         where $u^i$ is the eigenvectors of $AA^\dagger$ 

      3. $$
         V=\left[\begin{array}
         	&v^1\\
         	v^2\\
         	v^3\\
         	v^4
         \end{array}\right]
         $$

         where $v^i$ is the eigenvectors of $A^\dagger A$ 
   
6. **Rayleigh-Ritz method** 

   

# Chaptaer 10 Vector calculus

## Differentiation of vectors

**Def:**  vector $\bold{a}$ that is a function of a scalar $\bold{a}(u)$, 
$$
\frac{d\bold{a}}{du} = \lim_{\Delta u\rightarrow 0}\frac{\bold{a}(u+\Delta u)-\bold{a}(u)}{\Delta u}\\
\Updownarrow\\
\frac{d\bold{a}}{du} = \frac{da_x}{du}\bold{i} +\frac{da_y}{du}\bold{j} + \frac{da_z}{du}\bold{k}
$$

### Differentiation of compose vector expression

Let $\bold{a}, \bold{b}$ be vector function of $\bold{u}$, $\phi$ be scalar function of $\bold{u}$

Then, 
$$
\frac{d}{du}(\phi \bold{a}) = \phi \frac{d\bold{a}}{du} + \frac{d\phi}{du}\bold{a} \\
\frac{d}{du}(\bold{a} \cdot \bold{b}) = \bold{b}\cdot\frac{d\bold{a}}{du} + \frac{d\bold{b}}{du}\cdot\bold{a} \\
\frac{d}{du}(\bold{a} \times \bold{b}) = \bold{a}\times\frac{d\bold{b}}{du} + \frac{d\bold{a}}{du}\times\bold{b} = \frac{d}{du}
\left|\begin{array}
	&i &j &k\\
	a_x &a_y &a_z\\
	b_x &b_y &b_z
\end{array}\right| 
\text{ *attention the sequence}
$$

### Differentiation of a vector

We use a small change $\Delta \bold{a}$ in a vector function $a(u)$ resulting from a small change $\Delta u$ in its argument. When $\Delta u \rightarrow 0$, 
$$
d\bold{a}=\frac{d\bold{a}}{du}du
$$

> For example, for velocity $\bold{v}$, 
> $$
> d\bold{r}=\frac{d\bold{r}}{dt}dt=\bold{v}dt
> $$

### Intergration of a vector

1. If $\bold{a}(u)= \frac{d \bold{A}u}{du}$, then $\int \bold{a}(u) du = \bold{A}(u) +\bold{ b}$ 
2. $\int_{u_1}^{u_2} \bold{a}(u)du = \bold{A}(u_2) -\bold{A}(u_1) $

### Vector fuctions of several argument

1. Chain rule: If $\bold{a}=\bold{a}(u_1, u_2, \dots), u_i=u_i(v_1, v_2, \dots)$, then
   $$
   \frac{\partial \bold{a}}{\partial v_i} = \sum_{j=1} \frac{\partial \bold{a}}{\partial u_j} \cdot \frac{\partial u_j}{\partial v_i}
   $$

2. Special case: $\bold{a}=\bold{a}(v, u_1, u_2, \dots), u_i=u_i(v)$ 
   $$
   \frac{d \bold{a}}{d v} = \frac{\partial \bold{a}}{\partial v} + \sum_{j=1} \frac{\partial \bold{a}}{\partial u_j} \cdot \frac{\partial u_j}{\partial v}
   $$

3. Differential: 
   $$
   d\bold{a}= \sum_i \frac{\partial \bold{a}}{\partial u_i}du_i
   $$

### Scalar and vector field 

Focus on

1. Some region $\Omega \subset \mathbb{R}^3$ 
2. 3-dimension only
3. $\phi, \bold{a}$ continous and diffentiable
4. line, surface, volume

## Vector Operators

### Gradient

**Def:**  $\nabla = \bold{i}\frac{\partial}{\partial x} + \bold{j}\frac{\partial}{\partial y} + \bold{k}\frac{\partial}{\partial z}$ 

**Def:**  $\text{grad. } \phi =\nabla \phi$ 

**Remark:** 

1. Infinitesimal change in $\phi $ from $\bold{r}$ to $\bold{}r+d \bold{r}$ is
   $$
   d \phi = \frac{\partial \phi}{\partial x}dx + \frac{\partial \phi}{\partial y}dy + \frac{\partial \phi}{\partial z}dz = \dots = \nabla \phi \cdot d\bold{r}
   $$
   where $\bold{r}$ is the position in the field. 

2. If $\bold{r}(u)$ represents **a curve in space**, then total deraviative of $\phi (\bold{r})$ respected to $u$ along the curve is
   $$
   \frac{d\phi}{du}=\nabla \phi \cdot \frac{d\bold{r}}{du}
   $$

3. The change rate of $\phi$ w.r.t (was respected to) distance $s$ along $\bold{a}$ is given by 
   $$
   \frac{d\phi}{ds} = \nabla \phi \cdot \hat{\bold{a}} ( = |\nabla\phi| \cos \theta)
   $$
   
   is called directional dedrivative
   
4. $\nabla \phi$ lies on the direction of the fast **icrease** in $\phi$. 

Chain rule: 
$$
\nabla(\phi(\psi))=\frac{\partial \phi}{\partial \psi}\nabla \psi
$$

### Divergence

**Def:**  
$$
\text{div. } \bold{a} = \nabla \cdot \bold{a} = \frac{\partial a_x}{\partial x} + \frac{\partial a_y}{\partial y} + \frac{\partial a_z}{\partial z}
$$
**Remark:** $\nabla \cdot \bold{a} =0 \Leftrightarrow \text{solenodial}$ 

**Def:**  Laplacian operator
$$
\nabla ^2 \equiv \frac{\partial^2}{\partial x^2} + \frac{\partial^2}{\partial y^2} + \frac{\partial^2}{\partial z^2}
$$
for a scalar field$\phi$, $\nabla^2 \phi = \nabla\cdot(\nabla\phi)$ 

### Curl

**Def:**  
$$
\text{curl } \bold{a} = \nabla \times a = ( \frac { \partial a _ { z } } { \partial y } - \frac { \partial a _ { y } } { \partial z } ) i + ( \frac { \partial a _ { x } } { \partial z } - \frac { \partial a _ { z } } { \partial x } ) j + ( \frac { \partial a _ { y } } { \partial x } - \frac { \partial a _ { x } } { \partial y } ) k = \left| \begin{array}  { l l l } { i } & { j } & { k } \\ { \frac { \partial } { \partial x } } & { \frac { \partial } { \partial y } } & { \frac { \partial } { \partial z } } \\ { a _ { x } } & { a _ { y } } & { a _ { z } } \end{array} \right|
$$
**Remark:** $\nabla \times \bold{a}=0 \Leftrightarrow \text{irrotional}$ 

**Remark:** Vector operator formaula: $\phi, \psi$ scalar, $a, b$ vector

### Combination of grad. div. curl

All posibilities: 
$$
\begin{array}
	&\xcancel{grad(grad)} &\fbox{grad(div)} &\xcancel{grad(curl)}\\
	\fbox{div(grad)} &\xcancel{div(div)} &\cancel{div(curl)}\\
	\cancel{curl(grad)} &\xcancel{curl(div)} &\fbox{curl(curl)}\\
\end{array}
$$
**Remark:** 
$$
\nabla\times\nabla\phi = 0\\
\nabla\cdot(\nabla\times\bold{a})=0\\
$$

## Cylindrical and spherical polar coordiates

### Cylindrical polar coordinates

**Def:**  
$$
x=\rho \cos \phi, y = \rho \cos \phi, z=z\\
$$
The position vector: 
$$
P: \bold{r}=\rho \cos \phi \bold{i} + \rho \cos \phi \bold{j} + z \bold{k}
$$
The basis vectors: 
$$
\bold{\hat{e}_\rho} = \cos\phi \bold{i} + \sin \phi \bold{j}\\
\bold{\hat{e}_\phi} = \frac 1 \rho \bold{e_\phi} = - \sin \phi \bold{i} + \cos \phi \bold{j}\\
\bold{\hat{e}_z} = \bold{k}
$$
where $\bold{\hat{e}_u}=\frac{\bold{\hat{e}_u}}{|\bold{\hat{e}_u}|}$, $\bold{e_u}=\frac{\partial \bold{r}}{\partial u}$ 

therefore, 
$$
d\bold{r} = d\rho \bold e_\rho +d\phi \bold e_\phi + dz\bold e_z =\frac{\partial \bold{r}}{\partial \rho}d \rho + \frac{\partial \bold{r}}{\partial \phi}d \phi + \frac{\partial \bold{r}}{\partial z}d z = d\rho \bold{\hat{e}_\rho} + \rho d\phi \bold{\hat{e}_\phi} + dz \bold{\hat{e}_z}
$$
The vector operators: 
$$
\begin{array}& 
	\nabla \Phi &=& \frac { \partial \Phi } { \partial \rho } \hat e _ { \rho } + \frac { 1 } { \rho } \frac { \partial \Phi } { \partial \phi } \hat e _ { \Phi } + \frac { \partial \phi } { \partial z } \hat e _ { z }\\
	\nabla \cdot a &=& \frac { 1 } { \rho } \frac { \partial } { \partial \rho } ( \rho a _ { \rho } ) + \frac { 1 } { \rho } \frac { \partial a _ { \phi } } { \partial \phi } + \frac { \partial a _ { z } } { \partial z }\\
	\nabla \times a &=&  \left| \begin{array} { c c c } { \hat { e } _ { \rho } } & { \hat { e } _ { \phi } } & { \hat { e } _ { z } } \\ { \frac { \partial } { \partial \rho } } & { \frac 1 \rho \frac { \partial } { \partial \phi } } & { \frac { \partial } { \partial z } } \\ { a _ { \rho } } & { a _ { \phi } } & { a _ { z } } \end{array} \right|\\
	\nabla ^ { 2 } \Phi &=& \frac { 1 } { \rho } \frac { \partial } { \partial \rho } ( \rho \frac { \partial \Phi } { \partial \rho } ) + \frac { 1 } { \rho ^ { 2 } } \frac { \partial ^ { 2 } \Phi } { \partial \phi ^ { 2 } } + \frac { \partial ^ { 2 } \Phi } { \partial z ^ { 2 } }
\end{array}
$$

the volume $dV$ of the parallelpiped: 
$$
dV = \rho d\rho d\phi dz
$$

### Spherical polar coordinates

**Def:**  
$$
x=r\sin \theta \cos \phi, y= \sin\theta\sin\phi, z=r\cos\theta
$$
the basis vector: 
$$
\begin{array} { l } { \hat { e } _ { r } = \sin \theta \cos \phi i + \sin \theta \sin \phi j + \cos \theta k } \\ { \hat { e } _ { \theta } = \cos \theta \cos \phi i + \cos \theta \sin \phi j - \sin \theta k } \\ { \hat { e } _ { \phi } = - \sin \phi i + \cos \phi j } \end{array}
$$
General displacement vector
$$
d\bold{r} = dr \hat{\bold e}_r + rd\theta \hat{\bold e}_\theta + r\sin\theta d\phi \hat{\bold e}_\phi
$$
the volume of infinitesimal parallelpiped
$$
dV = r^2 \sin\theta dr d\theta d\phi
$$
The vector operators: 
$$
\begin{array}&
	\nabla \Phi &= \frac { \partial \Phi } { \partial r } \hat { e } _ { r } + \frac { 1 } { r } \frac { \partial \Phi } { \partial \theta } \hat { e } _ { \theta } + \frac { 1 } { r \sin \theta } \frac { \partial \Phi } { \partial \phi } \hat { e } _ { \phi } \\
	\nabla \cdot a &= \frac { 1 } { r ^ { 2 } } \frac { \partial } { \partial r } ( r ^ { 2 } a _ { r } ) + \frac { 1 } { r \sin \theta } \frac { \partial } { \partial \theta } ( \sin \theta a _ { \theta } ) + \frac { 1 } { r \sin \theta } \frac { \partial a _ { \phi } } { \partial \phi } \\
	\nabla \times a &= \left| \begin{array} { c c c } { \hat { e } _ { r } } & { \hat { e } _ { \theta } } & { \hat { e } _ { \phi } } \\{ \frac { \partial } { \partial r } } & { \frac 1 r \frac { \partial } { \partial \theta } } & { \frac{1}{r \sin \theta} \frac { \partial } { \partial \phi } } \\{ a _ { r } } & {  a _ { \theta } } & { a _ { \phi } } \end{array} \right| \\ 
	\nabla ^ { 2 } \Phi &= \frac { 1 } { r ^ { 2 } } \frac { \partial } { \partial r } ( r ^ { 2 } \frac { \partial \Phi } { \partial r } ) + \frac { 1 } { r ^ { 2 } \sin \theta } \frac { \partial } { \partial \theta } ( \sin \theta \frac { \partial \Phi } { \partial \theta } ) + \frac { 1 } { r ^ { 2 } \sin ^ { 2 } \theta } \frac { \partial ^ { 2 } \Phi } { \partial \phi ^ { 2 } } 
\end{array}
$$
**Remark:** for simplify the calculation, 
$$
\frac { 1 } { r ^ { 2 } } \frac { \partial } { \partial r } ( r ^ { 2 } \frac { \partial \Phi } { \partial r } ) = \frac { 1 } { r } \frac { \partial ^ { 2 } } { \partial r ^ { 2 } } ( r \Phi )
$$

### General curvilinear coordinates

**Def:**  the position of a point P having Cartesian coordinates x,y,z may be expressed in terms of the three curvilinear coordinates u1,u2,u3,where
$$
x=x(u_1, u_2, u_3), y=y(u_1, u_2, u_3), z=z(u_1, u_2, u_3)
$$
and similarly
$$
u_1=u_1(x,y,z), u_2=u_2(x,y,z), u_3=u_3(x,y,z)
$$
If $\bold{r}(u_1, u_2, i_3)$ be the position vector $P$ then $\bold e_i =\frac{\partial \bold r}{\partial u_i}$ be the **vector tangent** to $u_i$ curve at $P$. The **unit** vector
$$
\bold{\hat{e}_u} = \frac{1}{h_i} \frac{\partial \bold{r}}{\partial u} = \frac{\bold{\hat{e}_u}}{|\bold{\hat{e}_u}|}
$$
where $h_i$ is the length (scale factors) 

infinitesimal vector displacement: 
$$
d \bold r = \frac { \partial \bold r } { \partial u _ { 1 } } d u _ { 1 } + \frac { \partial \bold r } { \partial u _ { 2 } } d u _ { 2 } + \frac { \partial \bold r } { \partial u _ { 3 } } d u _ { 3 } = h _ { 1 } d u _ { 1 } \hat {\bold e} _ { 1 } + h _ { 2 } d u _ { 2 } \hat {\bold e} _ { 2 } + h _ { 3 } d u _ { 3 } \hat {\bold e}_3
$$

The linear operators are given by
$$
\begin{array}
	&\nabla \Phi &= \frac{\hat{\bold e}_1}{h_1}\frac{\partial}{\partial u_1} + \frac{\hat{\bold e}_2}{h_2}\frac{\partial}{\partial u_2} + \frac{\hat{\bold e}_3}{h_3}\frac{\partial}{\partial u_3}\\
	\nabla\cdot\Phi &= \frac{1}{h_1h_2h_3} \left[ \frac{\partial}{\partial u_1}(h_2h_3a_1) + \frac{\partial}{\partial u_2}(h_1h_3a_2) + \frac{\partial}{\partial u_3}(h_1h_2a_3) \right]\\
	\nabla \times \Phi &=
	\left|\begin{array}
		&\hat{\bold e}_1 &\hat{\bold e}_2 &\hat{\bold e}_3\\
		\frac{1}{h_1}\frac{\partial}{\partial u_1} &\frac{1}{h_2}\frac{\partial}{\partial u_2} &\frac{1}{h_3}\frac{\partial}{\partial u_3}\\
		a_1 &a_2 &a_3\\
	\end{array}\right|\\
\end{array}
$$

# Line, surface and volume integrals

## Line integral

> Recall: Riemann integral
> $$
> f(x): [a,b]\rightarrow\mathbb{R}, \int_a^b f(x)dx
> $$

**Notation:** 
$$
\int_C \phi dr, \int_C \bold{a}\cdot d\bold{r}, \int_C \bold{a}\times d\bold{r}
$$

**Def:**  Line integral: We denote path $C$ joining A and B into N small line element $\Delta \bold r_p = 1, 2, \dots N$, If a field $\bold a(x_p, y_p, z_p)$ is any point on the line element $\Delta r_p$, then
$$
\int_C \bold{a}\cdot d\bold{r} = \lim_{N\rightarrow\infty} \sum_{p=1}^N \bold a \cdot \Delta\bold r_p, \Delta\bold r_p\rightarrow 0
$$
**Remark:** If $C$ is closed, then
$$
\int_C \bold{a}\cdot d\bold{r} \equiv \oint \bold{a}\cdot d\bold{r} 
$$
where $C$ is anticlockwise

**Properties:** 

1. $$
   \int_A^B \bold{a}\cdot d\bold{r} = - \int_B^A \bold{a}\cdot d\bold{r}
   $$

2. $$
   \int_A^B \bold{a}\cdot d\bold{r} = \int_A^P \bold{a}\cdot d\bold{r} + \int_P^B \bold{a}\cdot d\bold{r}
   $$

3. (could be) path independent

**How to evaluate: ** 
$$
\int_C \phi d\bold r = \bold i \int_C \phi dx + \bold j \int_C \phi dy + \bold k \int_C \phi dz\\
\int_C \bold a \cdot d\bold r = \int_C a_xdx + \int_C a_ydy + \int_C a_zdz
$$


> Example: 
>
> evaluate $I=\int_C \bold a \cdot d\bold r$, where $\bold a = \left[\begin{array}&x+y\\y-x\end{array}\right]$, along the curve $\left\{\begin{array}& x=2u^2+u+1\\ y=1+u^2 \end{array}\right.$ from $(1,1)$ to $(4.2)$.  
> $$
> \begin{aligned}
> 	dx &= 4u^2+1\\
> 	dy&= 2u\\
> 	I &= \int_{(1,1)}^{(4,2)} [(x+y)dx+(y-x)dy]\\
> 	&= \int_0^1 [(3u^2+u+2)(4u+1)du+(-u^2-u)2udu]\\
> 	&= 10\frac 2 3
> \end{aligned}
> $$

> Physics example: 
> $$
> \bold F = I\oint d\bold r \times \bold B
> $$

### Line integrals with respect to a scalar

**Notion:** 
$$
\int_C \phi ds, \int \bold a ds
$$
where $ds$ is arc length along the curve $C$ 
$$
ds^2 = \sum du_i^2
$$
How to solve: 
$$
ds= \sqrt{\frac{d\bold r}{du} \cdot \frac{d\bold r}{du}} du
$$
where $u$ is the parameter of $C$ that can be represented by $C: \bold r (u)$ 

> Example: 
>
> evaluate $I = \int_C (x-y)^2 ds$, where $C$ is the semicircle from $A(a,0)$ to $B(-a,0)$ for $y\geq 0$. 
> $$
> \bold r(\phi) = a\cos\phi \bold i + a\sin \phi \bold j \\
> ds=\sqrt{\frac{d\bold r}{d\phi} \cdot \frac{d\bold r}{d\phi}} d\phi = ad\phi\\
> I= \int_C (x-y)^2ds = \int_0^\pi a^2(1-\sin 2\phi) ad\phi = \pi a^3
> $$

## Green theorem in a plane

**Green theorem:** 
$$
\oint_C (Pdx+Qdy) = \iint_R \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right)dxdy
$$
where 
$$
\oint_C Pdx = \iint_R - \frac{\partial P}{\partial y} dxdy, \oint_C Qdy = \iint_R \frac{\partial Q}{\partial x} dxdy
$$

## Conservative fields and potentials

**Def:**  Region $R$ is **conservative** if and only if

1. $\int_A^B \bold a \cdot d \bold r$ is path independent $\Rightarrow$ $\oint_C \bold a \cdot d\bold r = 0$ 
2. $\bold a = \nabla \phi$ where $\phi$ is a single valued function
3. $\nabla \times \bold a=0$ 
4. $\bold a \cdot d\bold r$ is exact differential

> Example: 
>
> Find $\phi$ if $\bold a = \nabla \phi = (xy^2+z)\bold i + (x^2y+2)\bold y + x\bold k$ 
>
> $\phi$ must satisfy
> $$
> \begin{aligned}
> 	\frac{\partial \phi}{\partial x} &= xy^2+z\\
> 	\phi &= \frac 1 2 x^2y^2 + zx + f(y,z)\\
> 	\frac{\partial \phi}{\partial y} &= x^2y + \frac{\partial f}{\partial y} = x^2y+2\\
> 	\phi &= \frac 1 2 x^2y^2 + zx + 2y + g(z)\\
> 	\frac{\partial \phi}{\partial z} &= x + \frac{\partial g}{\partial z} = x\\
> 	\phi &= \frac 1 2 x^2y^2 + zx + 2y + C\\
> \end{aligned}
> $$

## Surface integrals

**Notion:** 
$$
\int_S \phi d\bold S, \int_S \bold a \cdot d\bold S, \int_S \bold a \times d\bold S
$$
where the direction of $\bold S$ is parpendicular to the surface

**Def:**  
$$
\int _ { S } \bold a \cdot d \bold S = \lim _ { N \rightarrow \infty } \sum _ { p = 1 } ^ { N } \bold a ( x _ { p } , y _ { p } , z _ { p } ) \cdot \hat { \bold n } _ { p } \Delta S _ { p }
$$
How to evaluate: 
$$
d\bold S = \bold{\hat r} dS \\
dS= \frac{1}{\cos \alpha} dA = \frac { 1 } { | \bold n \cdot \bold k | } dA = \frac { | \nabla f | } { \nabla f \cdot \bold k } dA = \frac { | \nabla f | } { \frac{\partial f }{ \partial z }} dA
$$

> find $I= \int_S \bold a \cdot d\bold S$, where $\bold a = x\bold i$, $S: x^2+y^2+z^2=a^2, z\leq 0$. 
>
> Using spherical coordinate 
> $$
> \bold a \cdot d\bold S = x(\bold i \cdot \hat{\bold r}) dS = (a \sin \theta\cos \phi)(\sin\theta\cos\phi)(a^2\sin\theta d\theta d\phi) = a^3\sin^3\theta\cos^2\phi d\theta d\phi\\
> I= \int_S \bold a \cdot d\bold S = a^3 \int_0^{\frac \pi 2} \sin^3\theta \int_0^{2\pi} \cos^2\phi d\phi = \frac{2\pi a^3}{3}
> $$
> Also, more generally, 
> $$
> I= \int_S \bold a \cdot d\bold S = \int_C x(\bold i \cdot \hat{\bold r}) \frac { | \nabla f | } { \frac{\partial f }{ \partial z }} dA = \iint_R x \frac x a \frac{2a}{2z} dxdy = \iint_R \frac{x^2}{\sqrt{a^2-x^2-y^2}} dxdy\\
> $$
> convert to polar coordinate: 
> $$
> I = \iint _ { R } \frac { \rho ^ { 2 } \cos ^ { 2 } \phi } { \sqrt { a ^ { 2 } - \rho ^ { 2 } } } \rho d \rho d \phi = \int_0^{2\pi} \cos^2\phi d\phi \int_0^a \frac { \rho ^ { 2 } } { \sqrt { a ^ { 2 } - \rho ^ { 2 } } } d\rho = \int_0^{2\pi} \cos^2\phi d\phi \int_0^{\frac \pi 2} a^3\sin^3udu = \frac{2\pi a^3}{3}
> $$
> where $\rho = a\sin u$ 

### Vector areas of surfaces

**Def:**  
$$
\bold S = \int_S d\bold S
$$
**Remark:** for a closed surface, $\bold S =0$ 

$\bold S$ is only depend on its boundary curve: 
$$
\bold S = \frac 1 2 \oint_C \bold r\times d\bold r
$$

## Volume integrals

**Notion:** 
$$
\int_V \phi dV, \int_V \bold a dV
$$

### Volumes of three-dimensional regions

$$
V = \frac 1 3 \oint_S \bold r \cdot d\bold S
$$

## Integral forms for grad., div. and curl

$$
\begin{aligned}
	\nabla \phi &= \lim _ { V \rightarrow 0 } ( \frac { 1 } { V } \oint _ { S } \phi d \bold S )  \\  
	\nabla \cdot \bold a &= \lim _ { V \rightarrow 0 } ( \frac { 1 } { V } \oint _ { S } \bold a \cdot d \bold S )  \\  
	\nabla \times \bold a &= \lim _ { V \rightarrow 0 } ( \frac { 1 } { V } \oint _ { S } d \bold S \times \bold a ) 
\end{aligned}
$$

where V is a small volume enclosing P and S is its bounding surface. 

it can be shown in Cartisian, Cylindrical and Spherical Coordinates. 

## Divergence theorem and related theorem

1. $\bold a$ is a vector field which is continous and diffentiable in $V \subset \mathbb{R^3}$ 

2. $V$ is divided into a large number of small volumes $V_i$ 

3. By defination of div. 
   $$
   (\nabla\cdot\bold a) V_i \approx \oint_{S_i}\bold a \cdot d\bold S
   $$
   

   $S_i$ is surface of $V_i$ 

4. By summing over $i$, we have 
   $$
   \int_V \nabla\cdot \bold a dV = \oint_S \bold a\cdot d\bold S 
   $$

5. Divergence theorem holds for simply and multiply connected regions

> example: 
>
> evaluate $I=\int_S \bold a \cdot d\bold S$, where $\bold a = (y-x, xz, z-x^2)$ and $S$ is a open surface $x^2+y^2+z^2=z^2, z\leq 0$. 
>
> 
>
> 

### Green theorems

$$
\oint_S \phi \nabla\psi d\bold S = \int_V \nabla\cdot(\phi\nabla\psi)dV = \int_V [\phi\nabla^2\psi + (\nabla\phi)\cdot(\nabla\psi)dV\\
\oint_S (\phi\nabla\psi-\psi\nabla\phi) \cdot d\bold S = \int_V (\phi\nabla^2\psi-\psi\nabla^2\phi)dV
$$

 ### Other related integral transforms
$$
\int_V \nabla \phi dV = \oint_S \phi d\bold S\\
\int_V \nabla \times \bold b dV = \oint_S d\bold S\times \bold b
$$

## Stokes' theorem and related theorems

$$
\int_S (\nabla\times\bold a) \cdot d\bold S = \oint_C \bold a \cdot d\bold r
$$

### related integral theorems

$$
\int_S d\bold S \times \nabla \phi = \oint_C \phi d\bold r\\
\int_S (d\bold S\times \nabla) \times \bold b = \oint_C d\bold r\times \bold b
$$

# Fourier Series

* idea: to express complicated functions by using simple functions

for example: 

> power series : 
> $$
> f(x) = \sum_{1=0}^{\infty}a_ix^i
> $$

* Besides power series, we do have other ways, such as **Fourier series**

Advantages: 

1. easy to differentiate and integrate
2. each term contain only one **characteristic frequency** 
3. To solve PDE and ODE (forbid some numerical methods)
4. can be used to describe non continuous (non differetiable) functions

* A very famous algorithm, FFT [Math7270 十大算法](http://pi.math.cornell.edu/~web6140)

Q: Under what kind of conditions $f(x)$ will have fourier series expansion? 
A: **Dirichlet conditions** 

1. the function must be periodic: $f(x+p)=f(x)$
2. must be **single-valued**  and **continuous** except possibly at a finite number of finite discontinuities 
3. must have only a limit number of maximum and minimum within 1 period
4. the integrated over 1 period of  $|f(x)|$ must converge

* If Dirichlet conditions are satisfied, the fourier series converge to $f(x)$ at all point where f(x) is continuous. 
* roughly, why $f(x)$ can be expressed by sine and cosine? 





> For a general function $f(x)$, 
> $$
> f(x) = \underset{even \rightarrow cosine}{\frac{1}{2}(f(x)+f(-x))}+ 
> \underset{odd \rightarrow sine}{\frac{1}{2}(f(x)-f(-x))}
> $$

## fourier series of $f(x)$

$$
f(x) = \frac{a_0}{2} + \sum_{r=1}^{\infty}\left[ a_r \cos (\frac{2\pi rx}{L}) +b_r \sin (\frac{2\pi rx}{L})\right]
$$

where $a_r$, $a_0$, $b_r$ are constants called **Fourier coefficients**

L: period of $f(x)$

* **MAIN TASK**: to determine the **Fourier coefficients** of $f(x)$ when its fourier series exists. 

* **remark**: All the terms of a Fourier series are mutually orthogonal. (Trigonometric Identities)

$$
\begin{align*}
\int_{x_0}^{x_0+L}a_r \cos (\frac{2\pi rx}{L}) +b_r \sin (\frac{2\pi rx}{L}) dx&=0, 
\forall r, p
\\
\int_{x_0}^{x_0+L}a_r \cos (\frac{2\pi rx}{L}) +b_r \cos (\frac{2\pi rx}{L}) dx&=
\left\{
    \begin{array}{lr}
        L, r=p=0\\
        \frac{1}{2}L, r=p>0\\
        0, L\neq p
    \end{array}
\right.
\\
\int_{x_0}^{x_0+L}a_r \sin (\frac{2\pi rx}{L}) +b_r \sin (\frac{2\pi rx}{L}) dx&=
\left\{
    \begin{array}{lr}
        L, r=p=0\\
        \frac{1}{2}L, r=p>0\\
        0, L\neq p
    \end{array}
\right.
\end{align*}
$$

 Q: If Fourier Series of $f(x)$ exists, What are coefficients? 
A: with period L, 

$$
\left\{ \begin{array} { l } { a _ { r } = \frac { 2 } { L } \int _ { x _ { 0 } } ^ { x _ { 0 } + L } f ( x ) \cos ( \frac { 2 \pi r x } { 2 } ) d x } \\ { b _ { r } = \frac { 2 } { L } \int _ { x _ { 0 } } ^ { x _ { 0 } + L } f ( x ) \sin ( \frac { 2 \pi r x } { 2 } ) d x } \end{array} \right.
$$

$x_0$ can be arbitrary input on $\mathbb{R}$. 

Why? 

1. $$
   f ( x ) = \frac { a _ { 0 } } { 2 } + \sum _ { r = 1 } ^ { \infty } [ a _ { r } \cos ( \frac { 2 \pi x } { L } ) + b _ { r } \sin ( \frac { 2 \pi r x } { L } ) ]
   $$

2. $$
   \begin{align*}    &\int_{  { x  }_{ 0  }    }^{  { x  }_{ 0  }  +L  } fx \cos (   \frac{ 2 \pi  px  }{ L  }     )    d x    \\    =&\int _ { x _ { 0 } } ^ { x _ { 0 } + L } \left[ \frac { a _ { 0 } } { 2 } + \sum _ { p = 1 } ^ { \infty } \left[ a _ { r } \cos ( \frac { 2 \pi p x } { L } ) + b _ { r } \sin ( \frac { 2 \pi p x } { L } ) \right] \right] \cos ( \frac { 2 \pi p x } { L } ) d x    \\    =&\int _ { x _ { 0 } } ^ { x _ { 0 } + L } \frac { a _ { 0 } } { 2 } \cos ( \frac { 2 \pi p x } { L } ) d x + \int _ { x _ { 0 } } ^ { \pi _ { 0 } + L } \left[ \sum _ { r = 1 } ^ { \infty } a _ { r } \cos ( \frac { 2 \pi r x } { L } ) \right] \cos ( \frac { 2 \pi p x } { L } ) d x    \\    +& \xcancel{ \int _ { x _ { 0 } } ^ { \pi _ { 0 } + L } \left[ \sum _ { r = 1 } ^ { \infty } b _ { r } \sin ( \frac { 2 \pi r x } { L } ) \right] \cos ( \frac { 2 \pi p x } { L } ) d x }    \end{align*}
   $$

3. when $p=0$: 
   $$
   \int _ { x _ { 0 } } ^ { x _ { 0 } + L } f ( x ) d x = \frac { a _ { 0 } } { 2 } L
   $$
   when $p\neq 0$: 
   $$
   \begin{aligned}&\int _ { x _ { 0 } } ^ { x _ { 0 } + L } f ( x ) \cos ( \frac { 2 \pi p x } { L } ) d x    \\    =&\cos ( \frac { 2 \pi r x } { L } ) d x (r=p)    \\    =&\frac { a _ { 0 } } { 2 } L \end{aligned}
   $$

   $$
   \Rightarrow a _ { r } = \frac { 2 } { L } \int _ { x _ { 0 } } ^ { x_0 + L } f ( x ) \cos ( \frac { 2 \pi r x } { L } ) d 
   x
   $$

4. $$
   b _ { r } = \left\{ \begin{aligned}&0 , &r \text { even } \\  &\frac { 4 } { \pi r } , &r \text { odd } \end{aligned} \right.
   $$

   Hence, 
   $$
   f ( t ) = \frac { 4 } { \pi } \left( ( \sin \frac { 2 \pi } { T } t ) + \frac { 1 } { 3 } \sin ( \frac { 3\times 2 \pi } { T } t ) + \frac { 1 } { 5 } \cdots \right)
   $$
   Let $\omega=\frac{2\pi}{T}$ be **angular frequency**

> Example: square-wave function 
> $$
> f ( t ) = \left\{ \begin{array} { l } { - 1 , \frac { 1 } { 2 } T \leq t < 0 } \\ { + 1,0 < t < \frac { 1 } { 2 } T } \end{array} \right.
> $$
>
> 1. First of all, $f(t)$ is a odd function so we only need to solve the sine part in F.S. 
>
> 2. $$
>    f ( t ) = \frac { a _ { 0 } } { 2 } + \sum _ { r = 1 } ^ { \infty } b _ { r } \sin ( \frac { 2 \pi r t } { T } )
>    $$
>
> 3. $$
>    \left. \begin{array}{l}{ b _ { r } = \frac { 2 } { T } \int _ { - \frac { 1 } { 2 } T } ^ { \frac { 1 } { 2 } T } f ( t ) \sin ( \frac { 2 \pi r t } { T } ) d t }\\{ = \frac { 4 } { T } \int _ { 0 } ^ { \frac { 1 } { 2 } T } \sin ( \frac { 2 \pi r t } { T } ) d t }\\{ = \frac { 2 } { \pi r } ( 1 - ( - 1 ) ^ { r } ) }\end{array} \right.
>    $$

## Symmetric properties

1. Odd functions has no cosine terms (all $a_r=0$)
2. Even functions has no cosine terms (all $b_r=0$)

## Discontinuous Function 

If $f(x)$ is discontinuous, at $x_d$, then Fourier Series converges to 
$$
\frac { 1 } { 2 } \lim _ { \varepsilon \rightarrow 0 } [ f ( x _ { d } + \varepsilon ) + f ( x _ { d } + \varepsilon ) ]
$$


However, Fourier Series will overshoot its value although more terms would reduce the overshoot, it never disappear even in the limit. (**Gibbs’ Phenomenon**)

Size of overshoot his proportioned to the magnitude of the discontinuity. 


> Example: square wave

<style type="text/css" rel="stylesheet">
iframe { 
    border: 1px solid black;
    width:60%;
    display: flex;
    margin: auto;
}</style>
<iframe id=""
    height=300px
    scrolling="no"
    src="http://graph.tk/#y=(sin(3.14x)+sin(3*3.14x)/3+sin(5*3.14x)/5)*4/3.14">
</iframe>



## Non-periodic function

to expand(延拓为奇函数或偶函数)

> Example: Find F.S. for $f(x)=x^2, 0<x<2$
>
> 1. L=4
>
> 2. $$
>    \left. \begin{array}{l}{ a _ { r } = \frac { 2 } { L } \int _ { - 2 } ^ { 2 } x ^ { 2 } \cos ( \frac { 2 \pi r x } { 4 } ) d x }\\{ = \frac { 4 } { 4 } \int _ { 0 } ^ { 2 } x ^ { 2 } \cos ( \frac { \pi r x } { 2 } ) d x }\\{ = \frac { 16 } { \pi ^ { 2 } r ^ { 2 } } \cos \pi r }\\{ = \frac { 16 } { \pi ^ { 2 } r ^ { 2 } } ( - 1 ) ^ { r } }\end{array} \right.
>    $$
>
> 3. For $a_0$, by formula 
>    $$
>    a_0=\int_{-2}^2f(x)dx=\frac{8}{3}
>    $$
>
> 4. So 
>    $$
>    x ^ { 2 } = \frac { 4 } { 3 } + 16 \sum _ { r = 1 } ^ { \infty } \frac { ( - 1 ) ^ { r } } { \pi ^ { 2 } r ^ { 2 } } \cos ( \frac { 2 \pi r x } { 4 } )
>    $$
>
> * **Remark:** $\int u d v = u v - \int v d u$

## Integration and differentiation 

Fourier Series of a function id obtained by integration and differentiation of another one

> Example: $f(x)=x^3, 0\leq x\leq 2$. 
>
> <iframe id=""
> height=300px
> scrolling="no"
> src="http://graph.tk/#y=x^3">
> </iframe>
>
> 
>
> 1. By integration, 
>    $$
>    \int x ^ { 2 } d x = \int \frac { 4 } { 3 } + \sum _ { r = 1 } ^ { \infty } \frac { ( - 1 ) ^ { n } } { \pi ^ { 2 } r ^ { 2 } } \cos ( \frac { \pi r x } { 2 } ) d x\\    = \frac { 3 } { 4 } x + 16 \sum _ { r = 1 } ^ { \infty } \frac { ( - 1 ) ^ { r } } { \pi ^ { 2 } r ^ { 2 } } \frac { 2 } { \pi r } \int \cos ( \frac { \pi r x } { 2 } ) d ( \frac { \pi r x } { 2 } )
>    $$
>    and we have
>    $$
>    x ^ { 3 } = \boxed{4 x }+ 48 \sum _ { r = 1 } ^ { \infty } \frac { 2 \cdot ( - 1 ) ^ { r } } { \pi ^ { 2 } r ^ { 3 } } \sin ( \frac { \pi r x } { 2 } ) + C
>    $$
>    **F.S. don’t have $4x$!**
>
> 2. to deal with $4x$, by differentiation, 
>    $$
>    ( x ^ { 2 } ) ^ { \prime } = ( \cdots ) ^ { \prime }\\    x = 8 \sum _ { r = 1 } ^ { \infty } \frac { ( - 1 ) ^ { r } \pi r } { \pi ^ { 2 } r ^ { 2 } } \frac { \pi r} { 2 } \sin ( \frac { \pi r x } { 2 } )
>    $$
>
> 3. $$
>    x^3=4(\dots)+16(\sum\dots)+C
>    $$

## Complex Fourier Series

$$
e ^ { i r x } = \cos ( r x ) + i \sin ( r x )
$$

So we have

$$
f ( x ) = \sum _ { r = - \infty } ^ { \infty } C _ { r } \exp ( \frac { 2 \pi i r x } { L } )\\
$$

with coefficient 

$$C _ { r } = \frac { 1 } { L } \int _ { x _ { 0 } } ^ { x _ { 0 } + L } f ( x ) \exp ( - \frac { 2 \pi i x } { L } ) d x$$

Q: Why we have $C_r$ like? 

1. orthogonallity: 

$$
   \begin{aligned}&\int_If(x)g(x)dx\\
   =& \int _ { x _ { 0 } } ^ { x _ { 0 } + L } \exp ( - \frac { 2 \pi i r x } { L } ) \overline { \exp ( - \frac { 2 \pi i p x } { L } ) }d x \\
   =&\int _ { x _ { 0 } } ^ { x _ { 0 } + L } \exp ( - \frac { 2 \pi i ( r - p ) x } { L } ) d x\\
   =&\left\{ \begin{array} { l } { 0 , r \neq p } \\ { L _ { 1 } r = p } \end{array} \right.
   \end{aligned}
$$

2. prove $C_r$

$$
   \begin{aligned}
   C_rL=&\int _ { x _ { 0 } } ^ { x _ { 0 } + L } f ( x ) \exp ( - \frac { 2 \pi i r x } { L } ) d x\\
   =&\int _ { x _ { 0 } } ^ { x _ { 0 } + L } \sum _ { r = - \infty } ^ { \infty } C _ { r } \exp ( \frac { 2 \pi i r x } { L } ) \exp ( - \frac { 2 \pi i r x } { L } ) d x\\
   =&\sum _ { r = - \infty } ^ { \infty } \int _ { x _ { 0 } } ^ { x _ { 0 } + L } C _ { r } \exp ( \frac { 2 \pi i r x } { L } ) \exp ( - \frac { 2 \pi i r x } { L } ) d x\\
   &= C_rL
\end{aligned}
$$

* The relation between $C_r$ and $a_r$ and $b_r$: 

$$
  \left. \begin{array} { l } { C _ { r } = \frac { 1 } { 2 } ( a _ { r } - i b _ { r } ) } \\ { C _ { - r } = \frac { 1 } { 2 } ( a _ { r } + i b _ { r } ) } \end{array} \right.
$$

  Why? 
$$
  \cos ( r x ) = \frac { e ^ { i r x } + e ^ { - i r x } } { 2 }
$$

> Example: $f(x)=x, -2<x<2$
>
> 1. when $r\neq 0$: 
>    $$
>    C _ { r } = \frac { 1 } { L } \int _ { - 2 } ^ { 2 } x \exp ( \frac { - 2 \pi i r x } { 4 } ) d x\\    =\frac { 2 i } { \pi r } ( - 1 ) ^ { r }
>    $$
>    **Hint:** 
>    $$
>    \int uv du=\int uv\frac{du}{dv}dv, \sin\pi (rx) =0  \text{ if }  r\in\mathbb{Z}
>    $$
>
> 2. when $r=0$: 
>    $$
>    C _ { 0 } = \frac { 1 } { 4 } \int _ { - 2 } ^ { 2 } x d x=0
>    $$
>
> 3. $$
>    x = \sum _ { r = - \infty } ^ { \infty } \frac { 2 i } { \pi r } ( - 1 ) ^ { r } \exp ( \frac { \pi i r x } { 2 } )
>    $$
>
> <iframe id=""
>   height=300px
>   scrolling="no"
>   src="http://graph.tk/#y=4/3.14*sin(3.14*x/2) -4/3.14/2*sin(3.14*2*x/2) +4/3.14/3*sin(3.14*3*x/2)-4/3.14/4*sin(3.14*4*x/2) +4/3.14/5*sin(3.14*5*x/2)">
> </iframe>

## Parsval’s thm. 

$$
\frac { 1 } { L } \int _ { x _ { 0 } } ^ { x _ { 0 } + L } | f ( x _ { 0 } ) | ^ { 2 } d x = \sum _ { r = - \infty } ^ { + \infty } | C _ { r } ^ { 2 } |\text{for complex}\\    = ( \frac { 1 } { 2 } a _ { 0 } ) ^ { 2 } + \frac { 1 } { 2 } \sum _ { r = 1 } ^ { \infty } ( a _ { r } ^ { 2 } + b _ { r } ^ { 2 } )\text{for real}
$$

Remark: $\left|f(x)\right|^2=\left<f(x)|f(x)\right>=\int f(x) g(x) dx$

* **P:**

1. Consider $f(x)$ and $g(x)$ with period $L$; 

$$
f(x)=\sum_{r=-\infty}^{\infty}C_r\exp{\frac{2\pi irx}{L}}
$$

$$
f(x)=\sum_{r=-\infty}^{\infty}\gamma _r\exp{\frac{2\pi irx}{L}}
$$

2. $$
   f(x)g^*(x)=g^*(x)\sum_{r=-\infty}^{\infty}C_r\exp{\frac{2\pi irx}{L}}\\
   =\sum_{r=-\infty}^{\infty}C_r g^*(x)\exp{\frac{2\pi irx}{L}}
   $$

3. $$
   \frac{1}{L}\int_{x_0}^{x_0+L}\left|f(x)\right|^2dx
      =\frac{1}{L}\int_{x_0}^{x_0+L}\sum_{r=-\infty}^{+\infty}C_rg^(x)\exp{\frac{2\pi irx}{L}}dx\\
      =\sum_{r=-\infty}^{+\infty}C_r \left(\frac{1}{L}\left[\int_{x_0}^{x_0+L}g(x)\exp{\frac{2\pi irx}{L}}dx\right]^*\right)\\
      =\sum_{r=-\infty}^{+\infty}|C_r|^2
   $$

# Integral transforms

## Fourier series & Transform

> Example: $\sum_{r=1}^{\infty}r^{-4}$
>
> 1. for $f(x)=x^2$, in $-2\leq x<2$
>
> $$
> x ^ { 2 } = \frac { 4 } { 3 } + 16 \sum _ { r = 1 } ^ { \infty } \frac { ( - 1 ) ^ { r } } { \pi ^ { 2 } r ^ { 2 } } \cos ( \frac { \pi r x } { 2 } )
> $$
>
> 2. Then, 
>
> $$
> \frac { 1 } { 4 } \int _ { - 2 } ^ { 2 } ( x ^ { 2 } ) ^ { 2 } d x = \frac { 1 } { 4 } \int _ { - 2 } ^ { 2 } x ^ { 4 } d x = \frac { 16 } { 5 }
> $$
>
> 3. Parseval’s theorem: 
>    $$
>    \left. { \frac { 16 } { 5 } = ( \frac { 1 } { 2 } a _ { r } ) ^ { 2 } + \frac { 1 } { 2 } \sum _ { r = 1 } ^ { \infty } a _ { r } ^ { 2 } + \frac { 1 } { 2 } \sum _ { r = 1 } ^ { \infty } b _ { r } ^ { 2 } }\\{ = ( \frac { 4 } { 3 } ) ^ { 2 } + \frac { 1 } { 2 } \sum _ { r = 1 } ^ { \infty } ( \frac { 16 } { \pi ^ { 2 } r ^ { 2 } } ) ^ { 2 } } \right.
>    $$
>
> 4. $$
>    \left. \begin{array} { l } { \frac { 1 } { 2 } \sum _ { r = 1 } ^ { \infty } \frac { 16 ^ { 2 } } { \pi ^ { 4 } r ^ { 4 } } = \frac { 16 } { 5 } - \frac { 16 } { 9 } } \\ { \Rightarrow \sum _ { r = 1 } ^ { \infty } \frac { 1 } { r ^ { 4 } } = \frac { \pi ^ { 4 } } { 90 } } \end{array} \right.
>    $$

## Fourier transform 

* f(x) satisfied **dirichlet Condition**
* f(x) must be periodic, with fundamental period $L<\infty$

Q: Can we find F.S, for $f(x): \mathbb{R}\rightarrow\mathbb{R}$ with no periodic? 
A: Yes! F.T. which is one of the **integral transform**

Arrangement: 

1. introduction of F.T.
2. Laplace transform (other integral transform

Suppose that $f(x)$ is periodic, which fundamental period is $T$, 

$$
f ( t ) = \sum _ { r = - \infty } ^ { + \infty } C _ { r } \exp ( \frac { 2 \pi i r t } { T } ) = \sum _ { r = - \infty } ^ { + \infty } C _ { r } \exp ( i \omega r t )
$$

by formula, 

$$
\left. \begin{array}{l}{ C _ { r } = \frac { 1 } { T } \int _ { - \frac { I } { 2 } } ^ { \frac { T } { 2 } } f ( t ) \exp ( - \frac { 2 \pi i r t } { T } ) d t }\\{ = \frac { 1 } { 2 \pi } \frac { 2 \pi } { T } \int _ { - \frac { I } { 2 } } ^ { T } f ( t ) \exp ( - i \omega t ) d t }\\{ = \frac { \Delta \omega } { 2 \pi } \int }\end{array} \right.
$$

(we define $\omega , \Delta \omega$)

$$
\left. \begin{array}{l}{ f ( t ) = \sum _ { r = - \infty } ^ { + \infty } C _ { r } \exp ( i \omega t ) }\\{ = \sum _ { r = \infty } ^ { + \infty } \frac { \Delta \omega } { 2 \pi } \int _ { - \frac { I } { 2 } } ^ { \frac { T } { 2 } } f ( u ) e ^ { - i \omega u } d e ^ { i \omega t } }\\{= \frac { 1 } { 2 \pi } \sum _ { r = - \infty } ^ { + \infty } \Delta \omega ( \int _ { - \frac { T } { 2 } } ^ { \frac { T } { 2 } } f ( u ) e ^ { - i \omega u } d u ) e ^ { i \omega t }}\end{array} \right.
$$

Q: What happens to the above formula when $T\rightarrow +\infty$? 

AKA$\Delta\omega\rightarrow 0, \int_{-\frac{T}{2}}^{\frac{T}{2}}\rightarrow\int_{-\infty}^{+\infty}$

Let $g ( w _ { r } ) = \int _ { - \frac { I } { 2 } } ^ { \frac { T } { 2 } } f ( u ) e ^ { - i \omega _ { r } u } d u$

$$
\sum_{r=-\infty}^{+\infty}\Delta\omega g(\omega_r)\exp{i\omega_rt}\\
\Rightarrow \int_{-\infty}^{\infty}g(\omega)e^{i\omega t}d\omega, \text{as }T\rightarrow\infty, \Delta\omega\rightarrow0
$$

$$
f(t)=\sum
$$

The above formula is from the **Fourier inversion theorem 逆傅立叶变换**

* **Def:** 
* F.T. of $f(t)$: 
  $$\tilde{f} ( w ) = \frac { 1 } { \sqrt { 2 \pi } } \int _ { - \infty } ^ { + \infty } f ( t ) \exp ( - i \omega t ) d t$$
* I.F.T.:
  $$f ( t ) = \frac { 1 } { \sqrt { 2 \pi } } \int _ { - \infty } ^ { \infty } \tilde { f } ( \omega ) \exp ( i \omega t ) d w$$

> Find the F.T. of f(t)
> $$
> f(t)=\left\{\begin{aligned}
> &0&, t=0\\
> &Ae^{-\lambda t}&, t\geq 0, \lambda <0
> \end{aligned}\right.
> $$
>
> **A:**
> $$
> \begin{aligned}
> \tilde{f}(\omega)&= \frac{1}{\sqrt{2\pi}}\int_{-\infty}^{+\infty}f(t)\exp{-i\omega t}dt\\
> &= \frac { 1 } { \sqrt { 2 \pi } } ( \int _ { - \infty } ^ { 0 } 0 \exp ( - i \omega t ) d t + \int _ { 0 } ^ { + \infty } A e ^ { - \lambda t } \exp ( - i \omega t ) d t )\\
> &= \frac { A } { \sqrt { 2 \pi } ( \lambda + i w ) }\\
> \end{aligned}
> $$

> 
>
> 
>
> 


## The Dirac $\delta$ function

* **Def:** The **Dirac $\delta$ function** can be **loosely** thought of as a function on the real line which is zero everywhere except at the origin, which is infinite.
  $$
  \delta (x) = \left\{\begin{aligned}
  &0, &x \neq 0\\
  &+\infty, &x =0\\
  \end{aligned} \right.
  $$
  and is also constrained to satisfy the identity: $\int_{-\infty}^{+\infty}\delta(x)dx=1$. 

* Property: 

  1. $$
     \int _ { - b } ^ { b } f ( t ) \delta ( t - a ) d t = f ( a ), a,b>0\\
     \int \delta (t-a)dt=1, \text{when range of integral include a}\\
     $$

  2. $$
     \delta (-t)=\delta (t), \\
     \boxed{\delta ( a t ) = \frac { 1 } { | a | } \delta ( t )}\\
     t\delta{t}=0
     $$


Proof: 







## $\delta$ function and F.T.







  

  

​    

  

  









