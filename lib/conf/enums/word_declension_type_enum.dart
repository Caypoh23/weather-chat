enum WordDeclensionType {
  booking,
  service,
  review,
  client,
}

extension WordDeclensionExtension on WordDeclensionType {
  //
  List<String> get title {
    switch (this) {
      default:
        return [];
    }
  }
}
