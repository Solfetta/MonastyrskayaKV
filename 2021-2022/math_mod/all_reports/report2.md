---
# Front matter
title: "Лабораторная работа №2"
subtitle: "Погоня за лодкой"
author: "Монастырская Кристина Владимировна"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: false # List of figures
lot: false # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Научиться строить математическую модель для решения задачи о погоне.


# Задание

## Вариант 23

На море в тумане катер береговой охраны преследует лодку браконьеров.
Через определенный промежуток времени туман рассеивается, и лодка
обнаруживается на расстоянии 9,8 км от катера. Затем лодка снова скрывается в
тумане и уходит прямолинейно в неизвестном направлении. Известно, что скорость
катера в 3,8 раза больше скорости браконьерской лодки.

1. Запишите уравнение, описывающее движение катера, с начальными 
условиями для двух случаев (в зависимости от расположения катера 
относительно лодки в начальный момент времени). 

2. Постройте траекторию движения катера и лодки для двух случаев.

3. Найдите точку пересечения траектории катера и лодки



# Теоретическое введение

1. Принимает за *t~0~ - 0*, *x~л0~ - 0* - место нахождения лодки браконьеров в 
момент обнаружения, *x~к0~ = k = 9,8*- место нахождения катера береговой охраны 
относительно лодки браконьеров в момент обнаружения лодки.

2. Введем полярные координаты. Считаем, что полюс - это точка обнаружения 
лодки браконьеров *x~л0~* (*$\theta$ = x~л0~ = 0*), а полярная ось r проходит через точку 
нахождения катера береговой охраны.
 
3. Траектория катера должна быть такой, чтобы и катер, и лодка все время 
были на одном расстоянии от полюса *$\theta$*, только в этом случае траектория 
катера пересечется с траекторией лодки. 

Поэтому для начала катер береговой охраны должен двигаться некоторое 
время прямолинейно, пока не окажется на том же расстоянии от полюса, что 
и лодка браконьеров. После этого катер береговой охраны должен двигаться 
вокруг полюса удаляясь от него с той же скоростью, что и лодка 
браконьеров.

4. Чтобы найти расстояние x (расстояние после которого катер начнет двигаться вокруг полюса), необходимо составить простое уравнение. 
Пусть через время t катер и лодка окажутся на одном расстоянии x от полюса. 
За это время лодка пройдет *x*, а катер *k - x* (или *k + x*, в зависимости от начального положения катера относительно полюса). 
Время, за которое они пройдут это расстояние, вычисляется как *x / v* или *k - x / 3,8v* (во втором 
случае *k - x / 3,8v*). 
Так как время одно и то же, то эти величины одинаковы. 
Тогда неизвестное расстояние *x* можно найти из следующего уравнения:

$$
\frac {x}{v} = \frac {k - x}{3,8 v}
$$

в первом случае или 

$$
\frac {x}{v} = \frac {x + k}{3,8 v}
$$

во втором.

Отсюда мы найдем два значения *x~1~* = $\frac {k}{4,8}$ ≈ 2 и x~2~ = $\frac {k}{2,8}$ = 3,5, 
задачу будем решать для двух случаев.

5. После того, как катер береговой охраны окажется на одном расстоянии от 
полюса, что и лодка, он должен сменить прямолинейную траекторию и 
начать двигаться вокруг полюса удаляясь от него со скоростью лодки *v*.
Для этого скорость катера раскладываем на две составляющие:  
*v~r~* - радиальная скорость и $v_\tau$ - тангенциальная скорость. 
Радиальная 
скорость - это скорость, с которой катер удаляется от полюса, 
$v_r = \frac {dr}{dt}$.

Нам нужно, чтобы эта скорость была равна скорости лодки, поэтому полагаем $\frac {dr}{dt}$ = *v*.
Тангенциальная скорость – это линейная скорость вращения катера относительно полюса. 
Она равна произведению угловой скорости 
$\frac {d\theta}{dt}$ на радиус *r*, 
${v_{\tau}} = r\frac {d\theta}{dt}$

Так как 
$$
v_{\tau} = \sqrt {(3,8v)^2 - v^2} = \sqrt {13,44v}
$$
(учитывая, что радиальная скорость равна *v*), 
получаем 
$$
r\frac {d\theta}{dt} = \sqrt {13,44v}
$$


6. Решение исходной задачи сводится к решению системы из двух дифференциальных уравнений 
$\begin{cases} \frac {dr}{dt} = v \\ r\frac {d\theta}{dt} = \sqrt {13,44v} \end{cases}$

с начальными условиями 

$\begin{cases} \theta_0 = 0 \\ r_0 = x_1 \end{cases}$ или $\begin{cases} \theta_0 = -\pi \\ r_0 = x_2 \end{cases}$

Исключая из полученной системы производную по t, можно перейти к 
следующему уравнению:
$$
\frac {dr}{d\theta} = \frac {r}{\sqrt{13.44}}
$$

Начальные условия остаются прежними. 

# Выполнение лабораторной работы

## Выполнение вычислений:
С помощью данных начальных значений *x~к0~ = k = 9,8* и *v~к~ = 3,8* нашли значения

- *x~1~* = $\frac {k}{4,8}$ ≈ 2 и x~2~ = $\frac {k}{2,8}$ = 3,5
- $v_{\tau} = \sqrt {(3,8v)^2 - v^2} = \sqrt {13,44v}$

## Написание кода в SciLab:

![Код программы](images/img3.jpg){#fig:003 width=80%}

## Построение графиков:

Для первого варианта, где *x~1~* = $\frac {k}{4,8}$ = 2 и $\theta$ = 0:

![График траектории движения для лодки и катера, 1 вариант](images/img1.jpg){#fig:001 width=80%}

Для второго варианта, где *x~2~* = $\frac {k}{4,8}$ = 3,5 и $\theta$ = -$\pi$:

![График траектории движения для лодки и катера, 2 вариант](images/img2.jpg){#fig:002 width=80%}

## Определение точек пересечения:

Для первого варианта, точка пересечения имеет координаты (6.335, -6.335).

![Точка пересечения лодки и катера, 1 вариант](images/img4.jpg){#fig:004 width=80%}

Для второго варианта, точка пересечения имеет координаты (26.12, -26.12).

![Точка пересечения лодки и катера, 2 вариант](images/img5.jpg){#fig:005 width=80%}


# Выводы

Я научилась строить математическую модель для решения задачи о погоне.

