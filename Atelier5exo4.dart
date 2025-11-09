class  MotdepasseCourtException implements Exception {
@override
String toString() => "MotdepasseCourtException : Le mot de passe doit avoir au moins 6 caractères";

}
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();  // Lever l'Exception personnalisée
  }}
void main(){
  try{
    verifierMotdepasse("09");
    print("Bon mot de passe");
    }
    on MotdepasseCourtException //on capte le type d'erreur: MotdepasseCourtException
    catch (e) //On affiche le message d'erreur 
{print("Erreur de validation: $e");
 } finally {// finally bloc qui sexecute toujours 
 print("Opération terminée");
 }
}
 
  
