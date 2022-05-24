---
# Front matter
title: "Лабораторная работа №7"
subtitle: "Эффективность рекламы"
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

Построить графики распространения рекламы, используя средства OpenModelica

# Задание

## Вариант 23

Постройте график распространения рекламы, математическая модель которой описывается
следующим уравнением:

1. $\frac{dn}{dt}=(0.51+0.000099n(t))(N-n(t))$
2. $\frac{dn}{dt}=(0.000019+0.99n(t))(N-n(t))$
3. $\frac{dn}{dt}=(0.99t + 0.3cos(4t)n(t))(N-n(t))$

При этом объем аудитории N=945, в начальный момент о товаре знает 13 человек. 

Для случая 2 определите в какой момент времени скорость распространения рекламы будет
иметь максимальное значение.

# Теоретическое введение

рганизуется рекламная кампания нового товара или услуги. Необходимо,
чтобы прибыль будущих продаж с избытком покрывала издержки на рекламу.
Вначале расходы могут превышать прибыль, поскольку лишь малая часть
потенциальных покупателей будет информирована о новинке. Затем, при
увеличении числа продаж, возрастает и прибыль, и, наконец, наступит момент,
когда рынок насытиться, и рекламировать товар станет бесполезным.

Предположим, что торговыми учреждениями реализуется некоторая
продукция, о которой в момент времени t из числа потенциальных покупателей N
знает лишь n покупателей. Для ускорения сбыта продукции запускается реклама
по радио, телевидению и других средств массовой информации. После запуска
рекламной кампании информация о продукции начнет распространяться среди
потенциальных покупателей путем общения друг с другом. Таким образом, после
запуска рекламных объявлений скорость изменения числа знающих о продукции
людей пропорциональна как числу знающих о товаре покупателей, так и числу
покупателей о нем не знающих

Модель рекламной кампании описывается следующими величинами.
Считаем, что $\frac{dn}{dt}$ -- скорость изменения со временем числа потребителей,
узнавших о товаре и готовых его купить, t -- время, прошедшее с начала рекламной
кампании, n(t) -- число уже информированных клиентов. Эта величина
пропорциональна числу покупателей, еще не знающих о нем, это описывается
следующим образом: $a_1(t)(N-n(t))$ , где N -- общее число потенциальных
платежеспособных покупателей, $a_1(t)>0$ -- характеризует интенсивность
рекламной кампании (зависит от затрат на рекламу в данный момент времени).
Помимо этого, узнавшие о товаре потребители также распространяют полученную
информацию среди потенциальных покупателей, не знающих о нем (в этом случае
работает т.н. сарафанное радио). Этот вклад в рекламу описывается величиной
$a_2(t)n(t)(N-n(t))$ , эта величина увеличивается с увеличением потребителей
узнавших о товаре. Математическая модель распространения рекламы описывается
уравнением:

$\frac{dn}{dt}=(a_1(t)+a_2(t)n(t))(N-n(t))$(1)

При $a_1(t)>>a_2(t)$ получается модель типа модели Мальтуса, решение которой
имеет вид

![График решения уравнения модели Мальтуса](images/gr1.png){ #fig:001 width=80% }

В обратном случае, при $a_1(t)<<a_2(t)$ получаем уравнение логистической кривой:

![График логистической кривой](images/gr2.png){ #fig:002 width=80% }

# Выполнение лабораторной работы

## Написание программного кода в OpenModelica для создания модели:

![Программный код](images/img4.jpg){#fig:003 width=100% }


## Построение графиков распространения рекламы:

### 1 Случай: 
![Модель. Случай 1](images/img1.jpg){#fig:004 width=100% }

### 2 Случай:
![Модель. Случай 1](images/img2.jpg){#fig:005 width=100% }

### 3 Случай:
![Модель. Случай 1](images/img3.jpg){#fig:006 width=100% }

## Нахождение максимальной скорости для 2 случая.

Скорость распространения рекламы равна $\frac {dn}{dt}$.
Таким образом, добавив в программу модели дополнительную переменную y(t) = der(n(t)), 
я получила график, наивысшая точка которого и является 
точкой максимальной скорости распространения рекламы.

Максимальной скорости распространения **max(y(t))** реклама достигает в момент времени **t = 0.0046 с.**

![Модифицированный программный код](images/img7.jpg){#fig:007 width=100% }

![График скорости распространения рекламы](images/img5.jpg){#fig:008 width=100% }

![Точка максимальной скорости распространения рекламы](images/img6.jpg){#fig:009 width=100% }

# Выводы
Я научилась строить модель распространения рекламы.