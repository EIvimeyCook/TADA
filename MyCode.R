# Load packages#####
library(dplyr)
library(ggplot2)
library(here)

# Load caterpillar abundance data (w/o local file paths)#####
data <- read.csv(here("caterpillar_data" , "data.csv"))

# Summarise the mean number caterpillars with error#####
summary_data <- data %>%
  group_by(habitat) %>%
  summarise(
    mean_count = mean(caterpillar_count),
    sd = sd(caterpillar_count),
  )

# Remove values from habitat D as these are an error##### 
filtered_data <- data %>%
filter(habitat != "D")

# Run a Poisson general linear model######                [
# To analyse caterpillar abundance varying with habitat
# Numeric results in “Caterpillar Abundance”
model1 <- glm(caterpillar_count ~ habitat,
  family = Poisson, data = filtered_data
)

# Create figure 1, caterpillar count against habitat####
figure1 <- ggplot(
  filtered_data,
  aes(x = habitat, y = caterpillar_count)
) +
  geom_boxplot() +
  theme_bw()
