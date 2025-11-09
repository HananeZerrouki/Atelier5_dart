import 'dart:io';
void main() {
print("Entrez votre âge :");
//provoque une format exception
try{
  //L'utilisateur a acces pour saisir son age 
String? agee = stdin.readLineSync();
if (agee != null) {
int ageee = int.parse(agee);
print("Vous avez $ageee ans.");
}else{print("Entrez un age valide.");}}
on FormatException catch (e) {
  //capturer le type d'exception: FormatException
 print("Erreur de format : $e");
}
finally{//un bloc qui s'execute toujours
print("Fin d'operation");}}