# You’re a Parselmouth, Harry! Speaking python inside of R workflows

![](https://i.pinimg.com/originals/f3/b4/23/f3b4238175fc8c88229595b50f514d09.gif)

## Abstract

Sometimes you need to speak snake. Becoming proficient in both Python and R has
become a necessary skill in today’s data analytical landscape, to maximize
productivity among communities of analysts working in either or both platforms,
and to take full advantage of the unique capabilities each language offers.
Rstudio has written a package for the R language that unifies operation of both
languages within the R session: {reticulate}. I will demonstrate an ETL
procedure used in my daily work that uses python functions sourced from a
package of my own design to extract data from a Microsoft OLAP cube, and embeds
these functions into an R script, seamlessly integrating into a {dplyr} pipe
chain. From this demonstration, R users will learn a) the basics of calling
python from within R, b) how to structure the python functions to work with
{dplyr} verbs, and c) common strategies for maintaining reproducibility when
using both languages.

# Objectives

* Showcase interoperability of dplyr and python.
* Dissect anatomy of the python module and ETL script.
  * What made it work?
  * Why this decision to use both?
* Reticulate -- makes it feel like you aren't speaking python at all


# Introduction

## Humor 0

* Any sufficiently advanced tech is indistinguishable from magic
* For these 15 minutes, `{reticulate}` will be indistinguishable from magic. (Arthur C. Clarke).
* We enter the wizarding world of R programming.

## Humor 1

![](https://i.redd.it/vnoncsyyw1ly.png)

* Wife and I are reading through Harry Potter
* The theme is appropriate, if unoriginal.
* Here R is the default language of the wizarding world.
* *reticulate feels like magic*

## Reticulate -- the basics

* R package maintained by Rstudio which brings utilities to run python inside of your R session.
* Use the REPL.
* Convert python data frames and other objects into R native R objects.
* View environment right from within Rstudio.
* All using familiar R syntax!

### Humor 2

![](https://c.tenor.com/X1IRBLDO5PEAAAAC/harry-potter-snake.gif)

* For those of you who haven't used python before, reticulate is a good way to test it out while staying in an environment you're familiar with.
* Don't have to learn a new IDE while you're learning a new language.


### Demo

![](https://scontent-iad3-2.xx.fbcdn.net/v/t1.18169-9/404164_452171128147964_431862419_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=HwTpGWhswXAAX-h4M1y&_nc_ht=scontent-iad3-2.xx&oh=786a13442e7643aae66cd4fd01d63fc6&oe=61735766)

### Humor 3

![](https://i.pinimg.com/originals/d5/1c/d2/d51cd27e27aaca79c3066dfa80a5b42b.gif)

* In the book, Harry didn't even realize he was speaking snake at all.
* Using it with dplyr, sometimes you won't notice you're using python.

### The basics

* Python functions used as they are in R.
  *

# The python module

* Needed python because I could find a package there that could send MDX queries to a Microsoft OLAP database.
* Made a module that wraps `pyadomd` to pull forecast data from another team.

## Basic functions

* Formats a parameterized query, performs some cleaning, returns a data frame, or processes further into specialized excel sheet for other team processes. Runs daily.
* Functions devised in python to operate on the latter part.

## Use with DBI to write to a SQL table

* I only needed the data frame returned but some cleaning was to be done.
* Why rewrite the python code I'd already written into R to transform? Could I just re-use the python code somehow?

## Function examples

* These functions a) took a vector (or list, in python) and b) returned a vector (list).
* Surprisingly (or unsurprisingly to Rstudio folks) this works *super smoothly*.



## Caveats and considerations

![](https://64.media.tumblr.com/6ca283359a1f41c41e4788937df4b105/tumblr_p8nc9dNYJn1u5i578o3_r1_540.gifv)

![](https://static.wikia.nocookie.net/harrypotter/images/d/d8/Obliviate_backfire.gif/revision/latest?cb=20170809232738)