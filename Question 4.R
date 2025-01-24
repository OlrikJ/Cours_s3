#Question 4 :

##Création de la fonction :

compter_nombre_d_adjoints <- function(x){
  Premier_adjoint <- sum(x$Libellé.de.la.fonction == "1er adjoint au Maire")
  Deuxième_adjoint <- sum(x$Libellé.de.la.fonction == "2ème adjoint au Maire")
  Troisième_adjoint <- sum(x$Libellé.de.la.fonction == "3ème adjoint au Maire")
  return(Premier_adjoint+Deuxième_adjoint+Troisième_adjoint)
}

compter_nombre_d_adjoints(df_Gers)

#Il est possible de simplifier le code pour ne pas avoir 3 lignes de copié-collé