class DataValidation {
  static bool notValidInput({required String input, required bool integer}) {
    int counter = 0;
    for (int i = 0; i < input.length; i++) {
      if (input[i] == '.') counter++;
      if ((integer && counter >= 1) ||
          counter > 1 ||
          input[i] == '.' ||
          input[i] == '-' ||
          input[i] == '+' ||
          input[i] == '*' ||
          input[i] == '/' ||
          input[i] == ',') {
        return true;
      }
    }
    return false;
  }
}
