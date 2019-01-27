#explore dplyr package
library(dplyr)
gapminder <- read.csv("data/gapminder_data.csv")
str(gapminder)

#using select
gap_select <- gapminder %>% select(year, country, gdpPercap)
str(gap_select)

#using filter
gap_europe <- gapminder %>% filter(continent=="Europe")
head(gap_europe)
str(gap_europe)

#combining select and filter
gap_select_europe <- gapminder %>% filter(continent=="Europe") %>% select (year, country, gdpPercap)
str(gap_select_europe)


year_country_lifeExp_Africa <- gapminder %>% filter(continent=="Africa") %>% select(year,country,lifeExp)
str(year_country_lifeExp_Africa)


#summarizing data by groups
gdp_bycontinents <- gapminder %>% group_by(continent) %>% summarize(mean_gdpPercap=mean(gdpPercap))
str(gdp_byContinent)

#by country

lifeExp_bycountry <- gapminder %>% group_by(country) %>% summarize(mean_lifeExp=mean(lifeExp))
lifeExp_bycountry %>% filter(mean_lifeExp == min(mean_lifeExp) | mean_lifeExp == max(mean_lifeExp))
str(lifeExp_bycountry)

#count
gapminder %>% group_by(continent) %>% summarize(mean_le = mean(lifeExp), min_le = min(lifeExp), max_le = max(lifeExp)) se_le = sd(lifeExp)/sqrt(n())

#mutate

gdp_pop_bycontinents_byyear <- gapminder %>% mutate(gdp_billion=gdpPercap*pop/10^9) %>% group_by(continent,year) %>%
  summarize(mean_gdpPercap=mean(gdpPercap), sd_gdpPercap=sd(gdpPercap), mean_pop=mean(pop), sd_pop=sd(pop),
            mean_gdp_billion=mean(gdp_billion), sd_gdp_billion=sd(gdp_billion))
gdp_byContinent_log %>% print(inf)


#combining dplyr and ggplot

#get the start letter of each country
starts.with <- substr(gapminder$country, start = 1, stop = 1)

#filter countries that start with "A" or "Z"
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]

#make the plot
ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + facet_wrap( ~ country)



