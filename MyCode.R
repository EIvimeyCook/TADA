##### Caterpillar abundance analysis #####
# Fits a Poisson generalised linear model of caterpillar counts against
# habitat, and produces the numeric results in the "Caterpillar Abundance"
# section of the manuscript and Figure 1. Requires R 4.1 or later (for the
# |> pipe).

##### Load packages #####
# Functions from these packages are also called with their package name
# (package::function()), so it is clear which package each one comes from
library(dplyr)
library(ggplot2)
library(here)

##### Load caterpillar abundance data #####
# Relative path, no local file paths
data <- read.csv(here::here("caterpillar_data", "data.csv"))

##### Remove erroneous records #####
# Remove values from habitat D as these are an error
filtered_data <- data |>
  dplyr::filter(habitat != "D")

##### Descriptive summary #####
# Summarise the mean number of caterpillars, with standard deviation, by habitat
summary_data <- filtered_data |>
  dplyr::group_by(habitat) |>
  dplyr::summarise(
    mean_count = mean(caterpillar_count),
    sd = sd(caterpillar_count)
  )

summary_data

##### Caterpillar abundance model #####
# Run a Poisson generalised linear model to analyse caterpillar abundance
# varying with habitat. Numeric results in "Caterpillar Abundance"
model1 <- glm(caterpillar_count ~ habitat,
  family = poisson, data = filtered_data
)

summary(model1)

##### Figure 1 #####
# Create Figure 1, caterpillar count against habitat
figure1 <- ggplot2::ggplot(
  filtered_data,
  ggplot2::aes(x = habitat, y = caterpillar_count)
) +
  ggplot2::geom_boxplot() +
  ggplot2::theme_bw()

print(figure1)
