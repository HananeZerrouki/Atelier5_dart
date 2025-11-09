import 'dart:io'; 
//Creer la classe d'exception personalisée
class NombreNegatifException implements Exception { 
@override
String toString() => "NombreNegatifException : Les nombres negatifs sont interdits"; } 
void verifierNombre(int nbr) {
   if (nbr<0) { throw NombreNegatifException();}} // Lever l'Exception personnalisée 
   void main() { 
    print("Entrez un nombre svp:"); 
    try{ 
    String? nombre = stdin.readLineSync(); //L'utilisateur saisit un nombre au clavier 
    if(nombre!=null){
    int nbr = int.parse(nombre);//on convertit la saisie en entier: peut provoquer FormatException" exemple:int.parse("abc") :on ne peut pas convertir du texte vers entier
     verifierNombre(nbr);
    if (nbr==0) { print("Entrez un nombre defferent de zero svp");}
      else  {print("Le carré de $nbr est ${nbr * nbr}");}}}
       on NombreNegatifException catch (e) { //capturer le type d'exception qu'on veut gérer: NombreNegatifException 
       print("Erreur: $e"); } 
       finally{//un bloc qui s'execute toujours si ya une exception ou pas 
       print("Fin de verification");}}