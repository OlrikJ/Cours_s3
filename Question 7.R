#Question 7

plot_code_professions <- function(df, title = "Répartition des élus par code professionnel") {
  if (!"Code.de.la.catégorie.socio.professionnelle" %in% colnames(df)) {
    stop("Le dataframe ne contient pas de colonne 'Code.de.la.catégorie.socio.professionnelle'.")
  }
  
  # Compter le nombre d'élus par code professionnel
  counts <- table(df$Code.de.la.catégorie.socio.professionnelle)
  
  # Triez les codes par nombre d'élus (du plus fréquent au moins fréquent)
  counts <- sort(counts, decreasing = TRUE)
  
  # Création du bar chart horizontal
  barplot(counts, horiz = TRUE, las = 1, col = "steelblue",
          main = title, xlab = "Nombre d'élus", ylab = "Code Professionnel")
}



plot_code_professions(df_Gers)

