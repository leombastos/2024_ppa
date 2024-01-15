## 2024 CRSS 4060/6060 - Jan 10 Agenda

# Housekeeping:
## Website (bookmark it!): https://leombastos.github.io/bastoslab/teaching/2024-ppa/2024-ppa.html
## GitHub: material, constantly being updated 
## YouTube: recordings  

# Setting up RStudio:
## Tools > Global Options > General > Workspace > uncheck "Restore ...", select "Never" on dropdown menu  
## Tools > Global Options > R markdown > Show in document outline > Sections and Named Chunks


# Learning objectives ----
# - Become familiarized with using R and RStudio
# - Learn about R terminology and syntax
# - Understand different object types
# - Create a simple data, explore it with numbers and graphics
# - Learn about RStudio projects, create your own, set up proper sub-directories  


# 1) R/Rstudio ----

## Why R? 
### free, 
### runs on multiple platforms, 
### online community and support, 
### continuous development, 
### reproducible research!

## Why RStudio?
### Integrates various components of an analysis
### Colored syntax
### Syntax suggestions

## RStudio panels
### Script  
### Console
### Environment
### Files/Plots/Help

# 2) R terminology ----
# Object
45
45/13

a <- 45/13 
a

b <- c(10, 15, 5)
b


c <- "precision ag" 
c

## Object classes
### Data frame
d <- data.frame(number = b,
                id = c
                )

d

class(d)

### Matrices
e <- matrix(c(b, b), ncol = 2 )

e

### Lists 
f <- list("number" = a, "numbers" = b, 
          "word" = c, "data" = d
          )

f

class(f)

class(f$number)

## Function
mean(b)

mean(x = b)

## Argument
help("mean")

b2 <- c(10, 15, 5, NA)
b2

mean(b2)

mean(x = b2, na.rm = T)

mean(b2, T)

mean(T, b2)

mean(na.rm = T,
     x = b2)

## Package
## Install vs. load a package
install.packages("tibble")
library(tibble)

## Let's install package tibble, then load it

# 3) Creating a data set, exploring it ----
intro <- tribble(~name, ~height, ~favcrop,
                 "Ujjwal", 5.8, "soybeans",
                 "Vinicius", 5.5, "corn",
                 "Clint", 5.9, "peanuts",
                 "Sandesh", 5.8, "peanuts"
                 )

intro
  
# Check class, summary, and structure
class(intro)
summary(intro)

head(intro, n = 2)
tail(intro, n = 2)

class(intro$favcrop)

# Sampling the dataset
# First row only
intro[1 , ]

# First column only
intro[ , 1 ]

# Rows 1 to 3 and columns 1 to 3
intro[1:3 , 1:3]

# Rows 1 and 3 and columns 1 and 3
intro[c(1,3) , c(1,3)]

# 4) ggplot2 philosophy and plots ---- 
install.packages("ggplot2")
library(ggplot2)


# x ~ name
# y ~ height

# Point
ggplot(data = intro, 
       mapping = aes(x = name, y = height,
                     color = favcrop,
                     shape = favcrop
                     ))+
  geom_point()


# Customizing     
ggplot(data = intro, 
       mapping = aes(x = name, y = height,
                     color = favcrop,
                     shape = favcrop
       ))+
  geom_point() +
  scale_color_viridis_d() +
  theme_bw()


# Exporting
ggsave("plot1.png")

# 5) RStudio projects ----
## Create a folder on your Desktop named 2023_AdvPA-initials
## Create sub-folders data, code, output
## Create an RStudio project at the level of main folder (e.g., 2023_AdvPA-initials)
## Create an Rmarkdwon file (just to explore, not saving it) 

# 6) Assignment #1 - Play with ggplot
# Play with scale_color_ , explore the available options, choose one different from the one in class
# play with theme_ , explore the available options, choose one different from the one in class
# Export your new version saving it as "plot_a1_LASTNAME.png"
# Upload your new plot to GitHub under issue "Assignment #1" 






