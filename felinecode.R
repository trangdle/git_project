#enter a comment 
#comments are useful for my code to be more easily read by me and my friends
cats <- data.frame(coat = c ("calico", "black", "tabby"),
                weight = c(2.1, 5.0, 3.2),
                likes_string = c(1,0,1))

write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)
#write cats to new file called feline_data.csv


#look at specific column
cats$weight
cats$coat

#say we discovered that the scale weighs two kgs light
cats$weight +2

#produced pretty sentences 

paste("My cat is", cats$coat)

#add weight and coat columns
cats$weight + cats$coat

#add weight column to each other 
cats$weight + cats$weight

#example type of weight column within cats
typeof(cats$weight)


#explore typeof

typeof(3.14)
typeof(1L)
typeof("L1")
typeof(1+1i)
typeof(TRUE)
typeof('banana')

#create new vector

my_vector <- vector(length = 3)
my_vector

#create new vector with character data types
another_vector <- vector(mode = 'character' , length = 3)
another_vector

#looking at specific values within cat
cats{1]
cats$coat
cats[[1]]
cats["coat"]
cats[1,1]
cats[,1]
cats[1,]

#initiate new variable age
age<-c(2,3,5)
age
cbind(cats, age)

#realized this gave me an error
age<-c(2,3,5,12)
age
cbind(cats, age)

nrow(cats)
length(age)
newRow <- list('tortoiseshell',3.3, TRUE, 9)
cats <- rbind(cats, newRow)
cats


levels(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), 'tortoiseshell')
cats <- rbind(cats, list('tortoiseshell', 3.3, TRUE,9))

#remove row
cats[-4,] #display with removal of 4th row
cats[4,] #display only with 4th row
na.omit(cats)
cats <- na.omit(cats)

#remove column
cats[,-4]
drop <- names(cats) %in% c("age")
drop
cats[,!drop]

cats <- rbind(cats,cats)
cats

rownames(cats) <- NULL
cats



cats <- data.frame(first_name = c ("betrand", "simone"),
                   last_name = c("russell", "weil"),
                   nationality = c("british", "french"))
coffee <- c(TRUE, FALSE)
df <- cbind(df,coffee)
df


gapminder <- read.csv("data/gapminder_data.csv")
str(gapminder)

typeof(gapminder)
str(gapminder)

length(gapminder)
typeof(gapminder)

nrow(gapminder)
ncol(gapminder)
dim(gapminder)
colnames(gapminder)

#preview top of dataset
head(gapminder)
tail(gapminder)

#find random samples within gapminder dataset

tail(gampminder)
tail(gapminder,n=13)
























