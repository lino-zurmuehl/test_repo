install.packages(c("gapminder", "pacman")) # uncomment if already installed
pacman::p_load(tidyverse, gapminder)

# Load your Data into R ---------------------------------------------------

data(gapminder)
head(gapminder)

# Clean your Data ---------------------------------------------------------

gapminder_clean <- gapminder %>% 
  rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  mutate(gdp = pop * gdp_per_cap) %>% 
  filter(continent == "Americas") %>% 
  mutate(rich = if_else(gdp_per_cap >= 9000, 1, 0))
