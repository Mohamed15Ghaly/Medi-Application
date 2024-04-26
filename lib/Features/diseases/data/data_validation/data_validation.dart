class DataValidation{
   static bool notValid({required String input}) {
    int counter = 0;
    for (int i = 0; i < input.length; i++) {
      if (input[i] == '.') {
        counter++;
      }
      if (counter > 1) {
        return true;
      }
    }
    return false;
  }


   static bool validInput({required String input, required bool integer}) {
    if (integer) {
      return input.contains(",") || input.contains(".");
    } else {
      return input.contains(",");
    }
  }
}