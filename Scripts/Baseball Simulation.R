# These datasets attempt to create an artificial version of the dataset used in the research paper
# Unfortunately this dataset does not account for the correlation between height and weight as well as any discovered relationships between predictors and OPS
# Categorical variable proportions were calculated using proportions of real dataset

set.seed(1005426629)
# Simulating regular season data
n_reg = 5630
sim_reg =  tibble(
  OPS = runif(n = n_reg, min = 0, max = 1),
  Height = sample(c(55:83), size = n_reg, replace = TRUE),
  Weight = sample(c(120:250), size = n_reg, replace = TRUE),
  Age = sample(c(19:46), size = n_reg, replace = TRUE),
  Throws = sample(c(0,1), size = n_reg, replace = TRUE, prob = c(0.14,0.86)),
  Bats = sample(c(0,1,2), size = n_reg, replace = TRUE, prob = c(0.3,0.57,0.13)))

#Simulating post season data
n_post = 10700
sim_reg =  tibble(
  OPS = runif(n = n_post, min = 0, max = 1),
  Height = sample(c(55:83), size = n_post, replace = TRUE),
  Weight = sample(c(120:250), size = n_post, replace = TRUE),
  Age = sample(c(19:46), size = n_post, replace = TRUE),
  Throws = sample(c(0,1), size = n_post, replace = TRUE, prob = c(0.16,0.84)),
  Bats = sample(c(0,1,2), size = n_post, replace = TRUE, prob = c(0.32,0.56,0.11)))