#Question 6



calcul_distribution_age <- function(df) {
  # Vérifier si la colonne existe
  if (!"Date.de.naissance" %in% colnames(df)) {
    stop("La colonne 'Date_de_naissance' est introuvable dans le data.frame.")
  }
  
  # Convertir en format Date, en gérant les erreurs
  df$Date.de.naissance <- as.Date(df$Date.de.naissance, format="%d/%m/%Y")
  
  # Filtrer les valeurs NA
  df <- df[!is.na(df$Date.de.naissance), ]
  
  # Vérifier si des dates valides existent après filtrage
  if (nrow(df) == 0) {
    stop("Aucune date valide trouvée après conversion.")
  }
  
  # Calculer l'âge
  df$Age <- as.numeric(format(Sys.Date(), "%Y")) - as.numeric(format(df$Date.de.naissance, "%Y"))
  
  # Retourner les quantiles
  return(quantile(df$Age, probs = c(0, 0.25, 0.5, 0.75, 1), na.rm = TRUE))
}


calcul_distribution_age(df_faverelles)