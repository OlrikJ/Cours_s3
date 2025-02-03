#Question 5 :

##Création de la fonction

library(lubridate)
library(dplyr)
trouver_l_elu_le_plus_age <- function(x){
  x <- x |> 
    mutate(
      Date.de.naissance = dmy(Date.de.naissance))
  date <- which.min(x$date.de.naissance)
  return(date)
}

trouver_l_elu_le_plus_age(df_faverelles)








library(lubridate)
library(dplyr)

trouver_l_elu_le_plus_age <- function(x) {
  # Convertir la colonne "Date.de.naissance" en format Date
  x <- x |> 
    mutate(Date.de.naissance = dmy(Date.de.naissance))
  
  # Identifier la ligne correspondant à la date la plus ancienne
  index_date <- which.min(x$Date.de.naissance)
  
  # Retourner les informations de l'élu le plus âgé
  plus_age <- x[index_date, ]
  return(list(
    Nom = plus_age$Nom.de.l.élu,
    Prénom = plus_age$Prénom.de.l.élu,
    Date.de.naissance = plus_age$Date.de.naissance
  ))
}
