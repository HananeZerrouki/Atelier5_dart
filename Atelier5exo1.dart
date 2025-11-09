void main() {
try {
var resultat = 12 ~/ 0;
print(resultat);
} catch (e) {
print("Division impossible: $e");
} finally {
print("Ce bloc est toujours execute.");
}
}
