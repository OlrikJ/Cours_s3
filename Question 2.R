# Question 2 :

##Importation de la base de données

data_exercice <- read.table("C:/Master 1/R avancé/Cours_s3/data/elus-conseillers-municipaux-cm.csv", 
                        sep = ";", 
                        header = TRUE, 
                        fill = TRUE, 
                        quote = "")


str(data_exercice)

##Création de data.frame


df_Nantes <- data_exercice[
  data_exercice$Libellé.de.la.commune == "Nantes", ]

df_faverelles <- data_exercice[
  data_exercice$Libellé.de.la.commune == "Faverelles", ]

df_Loire_Atlantique <- data_exercice[
  data_exercice$Libellé.du.département == "Loire-Atlantique", ]

df_Gers <- data_exercice[
  data_exercice$Libellé.du.département == "Gers", ]



  
  



  