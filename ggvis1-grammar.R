### 1 Grammar of Graphics

library(ggvis)

str(pressure)

### ggvis graphs contain 4 essential components:
## 1 data
## 2 coordinate system
## 3 marks
## 4 corresponding properties

# Adapt the code: show bars instead of points
pressure %>% ggvis(~temperature, ~pressure) %>% layer_bars()

# Adapt the codee: show lines instead of points
pressure %>% ggvis(~temperature, ~pressure) %>% layer_lines()

# Extend the code: map the fill property to the temperature variable
pressure %>% ggvis(~temperature, ~pressure, fill=~temperature) %>% layer_points()

# Extend the code: map the size property to the pressure variable
pressure %>% ggvis(~temperature, ~pressure, size=~pressure) %>% layer_points()

#### 3 OPERATORS: %>%, = , :=
### Iris
str(iris)

## works but legends overlap
iris %>%
    ggvis(x=~Sepal.Width,y=~Sepal.Length,fill=~Species,size=~Petal.Width) %>%
    layer_points()

## specify visual values by using :=
iris %>%
    ggvis(x=~Sepal.Width,y=~Sepal.Length,fill:="red",size:=100) %>%
    layer_points()

## 
faithful %>% ggvis(~waiting,~eruptions) %>% layer_points()
