# APAC4002 Assignment 1

<p style="text-align:center"> Yichen Liu DB927739 </p>

$$
\require{physics}
$$

##

> Given that a temperature field $T = e^{-5x}\sin4y\cos3z$, 
>
> **a)** Determine the value of $\curl (\grad T)$. 

The vector field $\grad T$ is a conservative field, so the value of $\curl (\grad T)=0$. 

> **b)** Find the gradient $\grad T$. 

$$
\begin{aligned}
\grad T &= \grad (e^{-5x}\sin4y\cos3z)\\
&=\qty(\pdv x e^{-5x}\sin4y\cos3z, \pdv y e^{-5x}\sin4y\cos3z, \pdv z e^{-5x}\sin4y\cos3z)\\
&= \qty(-5e^{-5x}\sin4y\cos3z, 4e^{-5x}\cos4y\cos3z, -3e^{-5x}\sin4y\sin3z). 
\end{aligned}
$$

> Using suffix notation to prove that
>
> **a)** $\curl(\curl \vb F) = \grad(\div F)-\laplacian \vb F$. 

$$
\begin{aligned}
\curl(\curl \vb F) &= \qty[\curl(\curl \vb F)]_i\\
&= \epsilon_{ijk}\partial_j (\curl \vb F)_k \\
&= \epsilon_{ijk}\partial_j \epsilon_{klm}\partial_l \vb F_m\\
&= \epsilon_{ijk}\epsilon_{lmk}\partial_j \partial_l \vb F_m\\
&= (\delta_{il}\delta_{jm}-\delta_{im}i_{jl})\partial_j \partial_l \vb F_m\\
&= \delta_{il}\delta_{jm}\partial_j \partial_l \vb F_m - \delta_{im}\delta_{jl}\partial_j \partial_l \vb F_m\\
&= \partial_i\partial_m\vb F_m - \partial_l\delta_{im}\partial_l\vb F_m\\
&= \partial_i\div\vb F - \partial_j\grad\vb F_i\\
&= \grad(\div F)-\laplacian \vb F. 
\end{aligned}
$$

> **b)** $\div(\curl \vb F) = 0$.  

$$
\begin{aligned}
\div(\curl \vb F) &= \partial_i(\curl \vb F)_i\\
&= \partial_i\epsilon_{ijk}\partial_j\vb F_k\\
&= \epsilon_{ijk}\partial_i\partial_j\vb F_k. 
\end{aligned}
$$

in which as for the $x_1$ component, 
$$
\begin{aligned}
\qty[\div(\curl \vb F)]_1 &= \epsilon_{ij1}\partial_i\partial_j\vb F_1\\
&= \epsilon_{231}\partial_2\partial_3\vb F_1 + \epsilon_{321}\partial_3\partial_2\vb F_1\\
&= \partial_2\partial_3\vb F_1 - \partial_3\partial_2\vb F_1\\
&= 0. 
\end{aligned}
$$
And because the 3 components are identical, the $x_2$ and $x_3$ components are also equal to 0. 

##  

> Let $S$ denote the parabolic surface $z=x^2+y^2$, bounded by the planes $z=0$ and $z=4$, and $c$ denote the circular path formed by the intersection between the parabolic surface and the plane $z=4$. Consider a vector field $\vb F = xy\vu x + x^3\vu y + xz\vu z$. 
>
> **a)** Calculate the line integral closed by path $C$, $\oint_C \vb F\cdot \dd {\vb r}$. 

We firstly change them to the cylindrical coordinate by 
$$
\vb r  =(\rho\cos\phi, \rho\sin\phi, z)
$$
and obtain
$$
S: z=\rho^2,\\
C: \rho=2, z=4,\\
\vb r = 2\cos\phi\vu x + 2\sin\phi\vu y + 4\vu z\\
\dd {\vb r} = \dv{\vb r}{\phi}\dd\phi = (-2\sin\phi\vu x + 2\cos\phi\vu y + 0\vu z)\dd\phi\\
\vb F = \rho^2\cos\phi\sin\phi\vu x + \rho^3\cos^3\phi\vu y + \rho z\cos\phi\vu z.\\
$$
then the path integral is as below: 
$$
\begin{aligned}
\oint_C \vb F\cdot \dd {\vb r} &= \int_0^{2\pi} \mqty(\rho^2\cos\phi\sin\phi\\ \rho^3\cos^3\phi\\ \rho z\cos\phi)\cdot \mqty(-2\sin\phi\\ 2\cos\phi\\ 0)\dd\phi\\
&= \int_0^{2\pi} \mqty(4\cos\phi\sin\phi\\ 8\cos^3\phi\\ 8\cos\phi)\cdot \mqty(-2\sin\phi\\ 2\cos\phi\\ 0)\dd\phi\\
&= \int_0^{2\pi} \qty(-8\cos\phi\sin^2\phi + 16\cos^4\phi)\dd\phi\\
&= -8\int_0^{2\phi} \sin^2\phi\, \dd \sin\phi+16\int_0^{2\phi}\cos^4\phi\,\dd\phi\\
&= \qty[-\frac83 \sin^3\phi +  \frac{16}{32}\qty(12\phi+8\sin2\phi+\sin4\phi)]_0^{2\pi}\\
&= (-0+12\pi+0+0)-(-0+0+0+0)\\
&= 12\pi
\end{aligned}
$$

> **b)** Verify Stokes's theorem by calculating $\int_S (\curl \vb F)\cdot \dd {\vb a}$. 

Firstly we transform the components into cylindrical coordinate: 
$$
\begin{aligned}
\curl \vb F &= \mqty|\vu x& \vu y& \vu z\\ \pdv x& \pdv y& \pdv z\\ xy& x^3& z|\\
&= (0-0)\vu x + (0-0)\vu y+ (3x^2-x)\vu z \\
&= 0\vu x + 0\vu y+ (3x^2-x)\vu z\\
&= 0\vu x + 0\vu y+ (3\rho^2\cos^2\phi - \rho\cos\phi)\vu z,\\
\vb a &= x\vu x + y\vu y + 4\vu z\\
&= \rho\cos\phi\vu x + \rho\sin\phi\vu y + 4\vu z,\\
\dd {\vb a} &= \qty(\pdv{\vb r}{\rho}\times \pdv{\vb r}{\phi}) \dd\rho\dd\phi\\
&= \mqty|\vu x& \vu y& \vu z\\ \cos\phi& \sin\phi& 0\\ -\rho\sin\phi& \rho\cos\phi& 0| \dd\rho\dd\phi\\
&= \qty[(0-0)\vu x + (0-0)\vu y+ (\rho\cos^2\phi+\rho\sin^2\phi)\vu z]\dd\rho\dd\phi\\
&= 0\vu x + 0\vu y+ \rho\vu z\dd\rho\dd\phi. 
\end{aligned}
$$
Then, we can calculate the surface integral as below: 
$$
\begin{aligned}
\iint_S (\curl \vb F)\cdot \dd {\vb a} &= \iint_S \mqty(0\\0\\3\rho^2\cos^2\phi - \rho\cos\phi)\cdot \mqty(0\\0\\\rho)\dd\rho\dd\phi\\
&= \int_0^2\dd\rho \int_0^{2\pi}\dd\phi \qty(3\rho^3\cos^2\phi - \rho^2\cos\phi)\\
&= 3\int_0^2 \rho^3 \dd\rho \int_0^{2\pi} \cos^2\phi \dd\phi - \int_0^2 \rho^2 \dd\rho \int_0^{2\pi} \cos\phi \dd\phi\\
&= 3\qty[\frac14 \rho^4]_0^2 \qty[\frac12(\phi+\sin\phi\cos\phi)]_0^{2\pi} - \qty[\frac13 \rho^3]_0^2 \qty[\sin \phi]_0^{2\pi}\\
&= 3(4-0)(\pi-0)-\qty(\frac83-0)(0-0)\\
&= 12\pi
\end{aligned}
$$
Above all, we find that
$$
\oint_C \vb F\cdot \dd {\vb r} = \iint_S (\curl \vb F)\cdot \dd {\vb a}
$$
and hence the Stokes's theorem is verified. 



