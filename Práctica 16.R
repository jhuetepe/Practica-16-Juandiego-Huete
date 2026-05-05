##Práctica 16
##Juandiego Huete Petisco
# Tue May  5 12:46:49 2026 ------------------------------

library(haven)
library(tidyverse)
library(ggplot2)
library(knitr)

pisa <- read_sav("PISA22SP.sav")
pisa <- na.omit(pisa)  # Eliminar filas con NA
plot(pisa$lectu, pisa$mates)

reg <- lm(mates ~ lectu, data = pisa)
summary(reg)

