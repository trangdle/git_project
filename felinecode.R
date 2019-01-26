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

#create data structures

str(another_vector)
str(my_vector)











