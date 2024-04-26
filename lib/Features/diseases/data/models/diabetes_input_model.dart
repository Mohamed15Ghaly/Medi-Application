class DiabetesInputModel{
    final int pregnancies;
    final int glucose;
    final int bloodPressure;
    final int skinThickness;
    final int insulin;
    final double bmi;
    final double diabetesPedigreeFunction;
    final int age;

  DiabetesInputModel({
    required this.pregnancies,
    required this.glucose,
    required this.bloodPressure,
    required this.skinThickness,
    required this.insulin,
    required this.bmi,
    required this.diabetesPedigreeFunction, 
    required this.age
  });
}