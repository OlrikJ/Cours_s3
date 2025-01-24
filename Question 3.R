#Question 3 :

##Création de la fonction :

compter_nombre_d_elus <- function(x) {
  uniques <- unique(x[, c("Nom.de.l.élu", "Prénom.de.l.élu", "Date.de.naissance")])
  nombre_uniques <- nrow(uniques)
  return(nombre_uniques)
}

compter_nombre_d_elus(df_faverelles)



