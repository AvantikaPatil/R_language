# install deplyr package : is structure of data manipulation
# very useful in advanced data analysis task
# the deplyr package does not provide any "new" functionality to R
# In the sense that everything dplyr does could already be done with b
# but it greatly simplifies existing functionality in R
# In 

install.packages("dplyr")
library(dplyr)

# nycflights13 packages is only for the dataset that we are going to s
install.packages("nycflights13")
library(nycflights13)

#find

dim(flights)
View(flights)
head(flights)
tail(flights)
nrow(flights)
ncol(flights)
str(flights)
names(flights)
help(flights)

print(flights$day)

new <- filter(flights, month==1, day==1)
new

filter(flights, month==12, day==13)

#pipe/chaining operator %>% (output of 1 as input to other function)
flights %>% filter(month==10, day==8)

# eg: log(sin(exp(cos(x))))
# x %>% cos() %>% exp() %>% sin() %>% log()

#gun(fun(x, y), z)
# x %>% fun(y) %>% gun(z)

#arrange first by year then month then day in a ascending order
arrange(flights, year, month, day)

arrange(flights, desc(arr_delay))

# select column by names
select(flights, year, month, day)

# select all column between year and day (inclusive)
select(flights, year:day)

# select all column except year and day (inclusive)
select(flights, -(year:day))

#create/add new columns ------- mutate(dataframe_name, col_name = content, col_name= content...)
newdf <- mutate(flights, 
    gain = arr_delay - dep_delay, 
    speed = distance / air_time * 60
)
View(newdf)

## ---- only for output... not storing in original data frame
mutate(flights,
       gain_per_hour = distance / (air_time / 60)
)
View()

sample_n(flights, 10) # select any 10 random samples
sample_frac(flights, 0.01)

flights$dest
unique(flights$dest)
length(unique(flights$dest))

## 
dfdept <- data.frame(
  name = c("Vaishanvi", "Pooja", "Snehal", "Meenal", "Avantika", "Shruti"), 
  dept = c("trainer", "Admin", "sales", "mkt", "trainer", "HR"), 
  salary = c(95000, 89000, 78000, 90000, 95000, 98000)
)
dfdept

depgrp <- group_by(dfdept, dept)
summarise(depgrp, 
    sal = n_distinct(salary),
    depgrp = n()      
)

# year represents the integer

select(flights, year)
select(flights, 3)

##
filter(
  summarise(
    select(
        group_by(flights, year, month, day), 
        arr_delay, dep_delay
        ), 
    arr = mean(arr_delay, na.rm = TRUE),
    dept = mean(dept_delay, na.rm = TRUE)
    ), 
    arr >30 | dep > 30
)

flights %>%
  group_by(year, )