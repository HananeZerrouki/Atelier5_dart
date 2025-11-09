void verifierMotdepasse(String mp){
  if(mp.length<6){throw FormatException("Un mot de passe doit avoir au moins 6 caracteres.");}
}
void main(){
  try{
    verifierMotdepasse("3999994");
    print("Bon mot de passe");
}on FormatException{print("Erreur de validation : Votre mot de passe de moins de six caractere n'est pas autorise");}
finally{print("Fin de traitement ");}}