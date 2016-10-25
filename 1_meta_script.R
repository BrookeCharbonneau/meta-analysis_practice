library(tidyverse)
library(apaTables)
library(metaPsychometric)

ex4_data <- read_csv("meta_data_ex4.csv")

# original meta-analysis
meta_bare_bones(ex4_data)

# corrected meta-analysis
meta_corrected(ex4_data)

ex4_canada <- ex4_data %>% filter(country=="Canada")
ex4_usa <- ex4_data %>% filter(country=="United States")

meta_corrected(ex4_canada)
meta_corrected(ex4_usa)
# obtain 2 non-overlapping credibility intervals, CR in USA is bigger than CR in Canada
# CR actually only due to random error

