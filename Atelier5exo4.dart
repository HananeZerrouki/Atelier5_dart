class MotdepasseCourtException implements Exception {
  @override
  String toString() => "MotdepasseCourtException : Le mot de passe doit avoir au moins 6 caractères";
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }
}

void main() {
  try {
    verifierMotdepasse("1237777777");  
    print("Bon mot de passe");
  } on MotdepasseCourtException catch (e) {
    print("Erreur de validation: $e");  // Affiche le message personnalisé: le mot de passe doit avoir au moins 6 caracteres
  } finally {
    print("Test terminée");
  }
}
 
  
