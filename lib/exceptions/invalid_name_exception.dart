class InvalidNameException implements Exception {
  String error() => 'Invalid name';

  @override
  String toString() {
    return "InvalidNameException: ${error()}";
  }
}
