---
# Front matter
title: "Лабораторная работа №4"
subtitle: "Модель гармонических колебаний"
author: "Монастырская Кристина Владимировна"
# Generic options
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

Постройте фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора для трех случаев.

# Задание

## Вариант 23

Постройте фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора для следующих случаев 

1. Колебания гармонического осциллятора без затуханий и без действий внешней
силы $\int \int x+1,5x=0$

2. Колебания гармонического осциллятора c затуханием и без действий внешней
силы $\int \int x+0,8\int x+3x=0$

3. Колебания гармонического осциллятора c затуханием и под действием внешней
силы $\int \int x+3,3\int x+0,1x=0,1sin(3t)$

На интервале t$\in$[0;46] (шаг 0.05) с начальными условиями x~0~=0.1,y~0~=-1.1

# Теоретическое введение

Движение грузика на пружинке, маятника, заряда в электрическом контуре, а
также эволюция во времени многих систем в физике, химии, биологии и других
науках при определенных предположениях можно описать одним и тем же
дифференциальным уравнением, которое в теории колебаний выступает в качестве
основной модели. Эта модель называется линейным гармоническим осциллятором.

Уравнение свободных колебаний гармонического осциллятора имеет
следующий вид:

$\int \int x+2y\int x+w_0^2x=0$ (1) 

где x – переменная, описывающая состояние системы (смещение грузика, заряд
конденсатора и т.д.), y – параметр, характеризующий потери энергии (трение в
механической системе, сопротивление в контуре), w~0~ –- собственная частота
колебаний, t –- время. (Обозначения $\int \int x=\frac{d^2x}{dt^2},\int x=\frac{dx}{dt}$)

Уравнение (1) есть линейное однородное дифференциальное уравнение
второго порядка и оно является примером линейной динамической системы.

При отсутствии потерь в системе (y=0) вместо уравнения (1.1) получаем
уравнение консервативного осциллятора энергия колебания которого сохраняется
во времени.

$\int \int x+w_0^2x=0$ (2)

Для однозначной разрешимости уравнения второго порядка (2) необходимо
задать два начальных условия вида

$\begin{cases}
x(t_0)=x_0\\
\int x(t_0)=y_0
\end{cases}$ (3)

Уравнение второго порядка (2) можно представить в виде системы двух
уравнений первого порядка:

$\begin{cases}
\int x=y\\
\int y=-w_0^2x
\end{cases}$ (4)

Начальные условия (3) для системы (4) примут вид:

$\begin{cases}
x(t_0)=x_0\\
y(t_0)=y_0
\end{cases}$ (5)

Независимые переменные x, y определяют пространство, в котором
«движется» решение. Это фазовое пространство системы, поскольку оно двумерно
будем называть его фазовой плоскостью.

Значение фазовых координат x, y в любой момент времени полностью
определяет состояние системы. Решению уравнения движения как функции
времени отвечает гладкая кривая в фазовой плоскости. Она называется фазовой
траекторией. Если множество различных решений (соответствующих различным начальным условиям) изобразить на одной фазовой плоскости, возникает общая
картина поведения системы. Такую картину, образованную набором фазовых
траекторий, называют фазовым портретом.

# Выполнение лабораторной работы

## Написание программного кода в OpenModelica для создание модели:
![Код программы для гармонического осциллятора без затуханий и без действий внешней
силы](images/img1.jpg){#fig:001 width=80%}

## Написание программного кода в OpenModelica для создание модели:
![Код программы для гармонического осциллятора c затуханием и без действий внешней
силы](images/img3.jpg){#fig:002 width=80%}

## Написание программного кода в OpenModelica для создание модели:
![Код программы для гармонического осциллятора c затуханием и с действем внешней
силы](images/img5.jpg){#fig:003 width=80%}

## Построение графиков, моделирование:
![Фазовый портрет гармонического осциллятора без затуханий и без действий внешней
силы](images/img2.jpg){#fig:004 width=80%}

## Построение графиков, моделирование:
![Фазовый портрет гармонического осциллятора с затуханием и без действий внешней
силы](images/img4.jpg){#fig:005 width=80%}

## Построение графиков, моделирование:
![Фазовый портрет гармонического осциллятора c затуханием и с действем внешней
силы](images/img6.jpg){#fig:006 width=80%}

## Вопросы к лабораторной работе:
1. Запишите простейшую модель гармонических колебаний

$\int \int x + \gamma \int x + \omega^2 x=0$

2. Дайте определение осциллятора

Осциллятор  — система, совершающая колебания, то есть показатели которой периодически повторяются во времени.

3. Запишите модель математического маятника

$\int \int x + \omega^2 x=0$

4. Запишите алгоритм перехода от дифференциального уравнения второго порядка 
к двум дифференциальным уравнениям первого порядка

Дифференциальное уравнение вида $\int \int y$ = f(x). Произведём замену переменной: введём новую функцию z(x) и тогда z(x) = $\int y $. Следовательно,  и исходное уравнение превращается в уравнениие первого порядка

5. Что такое фазовый портрет и фазовая траектория?

Фазовый портрет исследуемой системы — это совокупность фазовых траекторий для всевозможных начальных условий. Его можно рассматривать как интегральное многообразие.
Фазовая траектория - кривая в фазовом пространстве, составленная из точек, представляющих состояние динамической системы в последовательности.


# Выводы

Я построила фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора для трех случаев.
