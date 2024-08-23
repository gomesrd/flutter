class ValueValidation {
  static String? required(String? value) {
    if (value == null || value.isEmpty) {
      return 'Informe um valor';
    }
    return null;
  }

  static String? numeric(String? value) {
    if (value == null || value.isEmpty) {
      return 'Informe um valor';
    } else if (double.tryParse(value) == null) {
      return 'Informe apenas valores numéricos';
    }
    return null;
  }
}
