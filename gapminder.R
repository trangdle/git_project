#library software carpentry ggplot
#january 26, 2019

gapminder <- read.csv("data/gapminder_data.csv")
head(gapminder)
str(gapminder)

library("ggplot2")

#first plot of gapminder
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

#delete geom_point
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))

#plot lifeExp and time
ggplot(data = gapminder, aes(x = year,  y = lifeExp)) + geom_point()


ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line()

#plot without geom_line
ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent))

#plot with changes to lines
ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) + geom_line(aes(color=continent)) + geom_point()

#plot with blue in geom_point
ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) + geom_line(aes(color=continent)) + geom_point(color="blue")

#plot with red
ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) + geom_line(aes(color=continent)) + geom_point(color="red")

#plot with scale 
ggplot(data = gapminder, aes(x=gdpPercap, y=lifeExp, by=country)) + geom_line(aes(color=continent)) + geom_point(alpha = 0.5) + scale_x_log10()

#plot w/ lots of cool stuff to create beautiful abstract art (woohoo!;))
ggplot(data = gapminder, aes(x=gdpPercap, y=lifeExp, by=country)) + geom_line(aes(color=continent)) + geom_point(alpha = 0.5, size =3, shape= 13) + scale_x_log10() + 
  geom_smooth(method = "lm")

#plot with new dataframe
starts.with <- substr(gapminder$country, start=1, stop=1)
az.countries <- gapminder[starts.with %in% c("A","Z"),]

ggplot(data = az.countries, aes(x=year, y=lifeExp, color=continent)) + geom_line() + facet_wrap(~ country)



