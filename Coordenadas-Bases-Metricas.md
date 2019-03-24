---
documentclass: extarticle
fontsize: 12pt
geometry: margin=2.5cm
header-includes:
    - \usepackage{dsfont}
    - \usepackage{amsmath}
    - \usepackage{amsfonts}
    - \usepackage{unicode-math}
---

# 3

## Coordenadas $\ne$ Bases Vectoriales.

El primer paso para la elaboración de una carta es la adopción de un sistema de coordenadas para decribir los puntos en $\mathds{R}^3$ que serán objeto de la transformación que se construirá.

Al adoptar un sistema de coordenadas, lo que se está haciendo es tomar una parametrización del espacio completo, y para poder analizar el comportamiento de las transformaciones a aplicar, debemos conocer la relación de esta parametrización con respecto al sistema cartesiano.

Adoptaremos el sistema de coordenadas esféricas, que se relaciona con el sistema cartesiano segun las siguientes ecuaciones:

\begin{align*}
x &=& R\, cos\, \varphi cos\, \lambda \\
y &=& R\, cos\, \varphi seno\, \lambda \\
z &=& R\, seno\, \varphi 
\end{align*}

Cada sistema de coordenadas tiene asociado una base vectorial, que es un conjunto de vectores (campos vecoriales), uno por cada coordenada, que en cada punto del espacio toman la dirección de la linea coordenada correspondiente, y cuya magnitud corresponde a la escala con la que se traduce un desplazamiento en dicha coordenada al espacio parametrizado.

Siendo $\symbf{r}$ el vector posición, y $\{x,y,z\}$ las coordenadas del sistema cartesiano, la base vectorial cartesiana queda formada por los vectores $\symbf{i},\, \symbf{j},\, \symbf{k}$ que son:

\begin{align*}
\symbf{e_x} &=& \frac{\partial \symbf{r}}{\partial x} \\
\symbf{e_y} &=& \frac{\partial \symbf{r}}{\partial y} \\
\symbf{e_z} &=& \frac{\partial \symbf{r}}{\partial z}
\end{align*}

## Componentes de un vector

Dado un sistema de coordenadas $\theta$ , si son conocidas las derivadas parciales de las coordenadas cartesianas con respecto al nuevo sistema, es posible hallar las componentes de la base vectorial de $\theta$ como:

$$\symbf{\theta_i} = \sum_{j=x,y,z} \frac{\partial j}{\partial \theta_i} \symbf{e_j}$$
