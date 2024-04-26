import 'package:bloc/bloc.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team/Features/diseases/data/repository/diseases_repository.dart';
import 'package:team/core/api/api_key.dart';
part 'diseases_state.dart';

class DiseasesCubit extends Cubit<DiseasesState> {
  DiseasesCubit(this.diseasesRepository) : super(DiseasesInitial());
  DiseasesRepository diseasesRepository;
  GlobalKey input = GlobalKey();
  GlobalKey prediction = GlobalKey();

  Widget? diseasesPredictionScreen, diseasesScreen;
  String? diseaseName;

  setDiseaseScreen(
      {required Widget diseasesScreen,
      required Widget diseasesPredictionScreen,
      required String diseaseName}) {
    this.diseasesScreen = diseasesScreen;
    this.diseasesPredictionScreen = diseasesPredictionScreen;
    this.diseaseName = diseaseName;
    emit(SetDiseasesScreen());
  }

  final DataConnectionChecker dataConnectionChecker = DataConnectionChecker();
  final diabetesFormKey = GlobalKey<FormState>();
  TextEditingController pregnancies = TextEditingController();
  TextEditingController glucose = TextEditingController();
  TextEditingController bloodPressure = TextEditingController();
  TextEditingController skinThickness = TextEditingController();
  TextEditingController insulin = TextEditingController();
  TextEditingController bmi = TextEditingController();
  TextEditingController diabetesPedigreeFunction = TextEditingController();
  TextEditingController age = TextEditingController();

  final breastCancerFormKey = GlobalKey<FormState>();
  TextEditingController clumpThickness = TextEditingController();
  TextEditingController uniformCellSize = TextEditingController();
  TextEditingController uniformCellShape = TextEditingController();
  TextEditingController marginalAdhesion = TextEditingController();
  TextEditingController singleEpithelialSize = TextEditingController();
  TextEditingController bareNuclei = TextEditingController();
  TextEditingController blandChromatin = TextEditingController();
  TextEditingController normalNucleoli = TextEditingController();
  TextEditingController mitoses = TextEditingController();

  final parkinsonFormKey = GlobalKey<FormState>();
  TextEditingController mdvpFoHz = TextEditingController();
  TextEditingController mdvpFhiHz = TextEditingController();
  TextEditingController mdvpFloHz = TextEditingController();
  TextEditingController mdvpJitterPercentage = TextEditingController();
  TextEditingController mdvpJitterAbs = TextEditingController();
  TextEditingController mdvpRap = TextEditingController();
  TextEditingController mdvpPpq = TextEditingController();
  TextEditingController jitterDdf = TextEditingController();
  TextEditingController mdvpShimmer = TextEditingController();
  TextEditingController mdvpShimmerDb = TextEditingController();
  TextEditingController shimmerApq3 = TextEditingController();
  TextEditingController shimmerApq5 = TextEditingController();
  TextEditingController mdvpApq = TextEditingController();
  TextEditingController shimmerDda = TextEditingController();
  TextEditingController nhr = TextEditingController();
  TextEditingController hnr = TextEditingController();
  TextEditingController rpde = TextEditingController();
  TextEditingController dfa = TextEditingController();
  TextEditingController spread1 = TextEditingController();
  TextEditingController spread2 = TextEditingController();
  TextEditingController d2 = TextEditingController();
  TextEditingController ppe = TextEditingController();

  final heartDiseaseFormKey = GlobalKey<FormState>();
  TextEditingController sex = TextEditingController();
  TextEditingController cp = TextEditingController();
  TextEditingController trestbps = TextEditingController();
  TextEditingController chol = TextEditingController();
  TextEditingController fbs = TextEditingController();
  TextEditingController restecg = TextEditingController();
  TextEditingController thalach = TextEditingController();
  TextEditingController exang = TextEditingController();
  TextEditingController oldpeak = TextEditingController();
  TextEditingController slope = TextEditingController();
  TextEditingController ca = TextEditingController();
  TextEditingController thal = TextEditingController();

  bool validInput({required String input, required bool integer}) {
    if (integer) {
      return input.contains(",") || input.contains(".");
    } else {
      return input.contains(",");
    }
  }

  bool notValid({required String input}) {
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

  heartDiseasePredictionValidation() async {
    if (await dataConnectionChecker.hasConnection == false) {
      emit(const DiseasesFailure(error: "No Internet Connection"));
    } else if (validInput(input: age.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.age} Without ',' or '.'"));
    } else if (sex.text.trim().toUpperCase() != "MALE" ||
        sex.text.trim().toUpperCase() != "FEMALE") {
      emit(const DiseasesFailure(
          error: "please Enter Your ${ApiKey.sex} as Male or Female"));
    } else if (validInput(input: trestbps.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.trestbps} without ',' or '.'"));
    } else if (validInput(input: chol.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.chol} without ',' or '.'"));
    } else if (validInput(input: fbs.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.fbs} without ',' or '.'"));
    } else if (validInput(input: restecg.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.restecg} without ',' or '.'"));
    } else if (validInput(input: thalach.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.thalach} without ',' or '.'"));
    } else if (validInput(input: exang.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.exang} without ',' or '.'"));
    } else if (validInput(input: oldpeak.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.oldpeak} without ',' or '.'"));
    } else if (validInput(input: slope.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.slope} without ',' or '.'"));
    } else if (validInput(input: ca.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.ca} without ',' or '.'"));
    } else if (validInput(input: thal.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.thal} without ',' or '.'"));
    } else if (heartDiseaseFormKey.currentState!.validate()) {
      heartDiseasePrediction();
    } else {
      emit(const DiseasesFailure(error: "Please Enter All Fields"));
    }
  }

  heartDiseasePrediction() async {
    emit(DiseasesLoading());
    final response = await diseasesRepository.heartDiseasePrediction(
      age: int.parse(age.text.trim()),
      sex: sex.text.trim().toUpperCase() == "MALE" ? 1 : 0,
      cp: int.parse(cp.text.trim()),
      trestbps: int.parse(trestbps.text.trim()),
      chol: int.parse(chol.text.trim()),
      fbs: int.parse(fbs.text.trim()),
      restecg: int.parse(restecg.text.trim()),
      thalach: int.parse(thalach.text.trim()),
      exang: int.parse(exang.text.trim()),
      oldpeak: int.parse(oldpeak.text.trim()),
      slope: int.parse(slope.text.trim()),
      ca: int.parse(ca.text.trim()),
      thal: int.parse(thal.text.trim()),
    );

    response.fold(
      (l) => emit(DiseasesFailure(error: l)),
      (r) => emit(DiseasesSuccess(predict: r)),
    );
  }

  breastCancerPredictionValidation() async {
    if (await dataConnectionChecker.hasConnection == false) {
      emit(const DiseasesFailure(error: "No Internet Connection"));
    } else if (validInput(input: clumpThickness.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.clumpThickness} Without ',' or '.'"));
    } else if (validInput(input: uniformCellSize.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.uniformCellSize} without ',' or '.'"));
    } else if (validInput(input: uniformCellShape.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.uniformCellShape} without ',' or '.'"));
    } else if (validInput(input: uniformCellShape.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.marginalAdhesion} without ',' or '.'"));
    } else if (validInput(input: marginalAdhesion.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error:
              "Please Enter ${ApiKey.singleEpithelialSize} without ',' or '.'"));
    } else if (validInput(
        input: singleEpithelialSize.text.trim(), integer: false)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.singleEpithelialSize} without ','"));
    } else if (validInput(input: bareNuclei.text.trim(), integer: false)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.bareNuclei} without ',' "));
    } else if (validInput(input: blandChromatin.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.blandChromatin} without ',' or '.'"));
    } else if (validInput(input: normalNucleoli.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.normalNucleoli} without ',' or '.'"));
    } else if (validInput(input: mitoses.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.mitoses} without ',' or '.'"));
    } else if (breastCancerFormKey.currentState!.validate()) {
      breastCancerPrediction();
    } else {
      emit(const DiseasesFailure(error: "Please Enter All Fields"));
    }
  }

  breastCancerPrediction() async {
    emit(DiseasesLoading());
    final response = await diseasesRepository.breastCancerPrediction(
      clumpThickness: int.tryParse(clumpThickness.text.trim())!,
      uniformCellSize: double.tryParse(uniformCellSize.text.trim())!,
      uniformCellShape: double.tryParse(uniformCellShape.text.trim())!,
      marginalAdhesion: double.tryParse(marginalAdhesion.text.trim())!,
      singleEpithelialSize: double.tryParse(singleEpithelialSize.text.trim())!,
      bareNuclei: double.tryParse(bareNuclei.text.trim())!,
      blandChromatin: double.tryParse(blandChromatin.text.trim())!,
      normalNucleoli: double.tryParse(normalNucleoli.text.trim())!,
      mitoses: double.tryParse(mitoses.text.trim())!,
    );
    response.fold((l) => emit(DiseasesFailure(error: l)),
        (r) => emit(DiseasesSuccess(predict: r)));
  }

  parkinsonPredictionValidation() async {
    if (await dataConnectionChecker.hasConnection == false) {
      emit(const DiseasesFailure(error: "No Internet Connection"));
    } else if (notValid(input: mdvpFoHz.text.trim()) ||
        notValid(input: mdvpFhiHz.text.trim()) ||
        notValid(input: mdvpFloHz.text.trim()) ||
        notValid(input: mdvpJitterPercentage.text.trim()) ||
        notValid(input: mdvpJitterAbs.text.trim()) ||
        notValid(input: mdvpRap.text.trim()) ||
        notValid(input: mdvpPpq.text.trim()) ||
        notValid(input: jitterDdf.text.trim()) ||
        notValid(input: mdvpShimmer.text.trim()) ||
        notValid(input: mdvpShimmerDb.text.trim()) ||
        notValid(input: shimmerApq3.text.trim()) ||
        notValid(input: shimmerApq3.text.trim()) ||
        notValid(input: shimmerApq5.text.trim()) ||
        notValid(input: shimmerDda.text.trim()) ||
        notValid(input: nhr.text.trim()) ||
        notValid(input: hnr.text.trim()) ||
        notValid(input: rpde.text.trim()) ||
        notValid(input: dfa.text.trim()) ||
        notValid(input: spread1.text.trim()) ||
        notValid(input: spread2.text.trim()) ||
        notValid(input: d2.text.trim()) ||
        notValid(input: ppe.text.trim())) {
      emit(const DiseasesFailure(error: "Please Enter Valid Input"));
    } else if (validInput(input: mdvpFoHz.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.mdvpFoHz} Without ',' or '.'"));
    } else if (validInput(input: mdvpFhiHz.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter  ${ApiKey.mdvpFhiHz} without ',' or '.'"));
    } else if (validInput(input: mdvpFloHz.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.mdvpFloHz} without ',' or '.'"));
    } else if (validInput(
        input: mdvpJitterPercentage.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error:
              "Please Enter ${ApiKey.mdvpJitterPercentage} without ',' or '.'"));
    } else if (validInput(input: mdvpJitterAbs.text.trim(), integer: false)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.mdvpJitterAbs} without ','"));
    } else if (validInput(input: mdvpRap.text.trim(), integer: false)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.mdvpRap} without ',' "));
    } else if (validInput(input: mdvpPpq.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.mdvpPpq} without ',' or '.'"));
    } else if (validInput(input: jitterDdf.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.jitterDdf} without ',' or '.'"));
    } else if (validInput(input: mdvpShimmer.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.mdvpShimmer} without ',' or '.'"));
    } else if (validInput(input: mdvpShimmerDb.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.mdvpShimmerDb} without ',' or '.'"));
    } else if (validInput(input: shimmerApq3.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.shimmerApq3} without ',' or '.'"));
    } else if (validInput(input: shimmerApq5.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.shimmerApq5} without ',' or '.'"));
    } else if (validInput(input: mdvpApq.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.mdvpPpq} without ',' or '.'"));
    } else if (validInput(input: shimmerDda.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.shimmerDda} without ',' or '.'"));
    } else if (validInput(input: nhr.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.nhr} without ',' or '.'"));
    } else if (validInput(input: hnr.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.hnr} without ',' or '.'"));
    } else if (validInput(input: rpde.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.hnr} without ',' or '.'"));
    } else if (validInput(input: dfa.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.dfa} without ',' or '.'"));
    } else if (validInput(input: spread1.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.spread1} without ',' or '.'"));
    } else if (validInput(input: spread2.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.spread2} without ',' or '.'"));
    } else if (validInput(input: d2.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.d2} without ',' or '.'"));
    } else if (validInput(input: ppe.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.ppe} without ',' or '.'"));
    } else if (parkinsonFormKey.currentState!.validate()) {
      parkinsonPrediction();
    } else {
      emit(const DiseasesFailure(error: "Please Enter All Fields"));
    }
  }

  parkinsonPrediction() async {
    emit(DiseasesLoading());
    final response = await diseasesRepository.parkinsonPrediction(
      mdvpFoHz: double.tryParse(mdvpFoHz.text.trim())!,
      mdvpFhiHz: double.tryParse(mdvpFhiHz.text.trim())!,
      mdvpFloHz: double.tryParse(mdvpFloHz.text.trim())!,
      mdvpJitterPercentage: double.tryParse(mdvpJitterPercentage.text.trim())!,
      mdvpJitterAbs: double.tryParse(mdvpJitterAbs.text.trim())!,
      mdvpRap: double.tryParse(mdvpRap.text.trim())!,
      mdvpPpq: double.tryParse(mdvpPpq.text.trim())!,
      jitterDdf: double.tryParse(jitterDdf.text.trim())!,
      mdvpShimmer: double.tryParse(mdvpShimmer.text.trim())!,
      mdvpShimmerDb: double.tryParse(mdvpShimmerDb.text.trim())!,
      shimmerApq3: double.tryParse(shimmerApq3.text.trim())!,
      shimmerApq5: double.tryParse(shimmerApq5.text.trim())!,
      mdvpApq: double.tryParse(mdvpApq.text.trim())!,
      shimmerDda: double.tryParse(shimmerDda.text.trim())!,
      nhr: double.tryParse(nhr.text.trim())!,
      hnr: double.tryParse(hnr.text.trim())!,
      rpde: double.tryParse(rpde.text.trim())!,
      dfa: double.tryParse(dfa.text.trim())!,
      spread1: double.tryParse(spread1.text.trim())!,
      spread2: double.tryParse(spread2.text.trim())!,
      d2: double.tryParse(d2.text.trim())!,
      ppe: double.tryParse(ppe.text.trim())!,
    );

    response.fold(
      (l) => emit(DiseasesFailure(error: l)),
      (r) => emit(DiseasesSuccess(predict: r)),
    );
  }

  diabetesPredictionValidation() async {
    if (await dataConnectionChecker.hasConnection == false) {
      emit(const DiseasesFailure(error: "No Internet Connection"));
    } else if (notValid(input: bmi.text.trim()) ||
        notValid(input: bmi.text.trim())) {
      emit(const DiseasesFailure(error: "Please Enter Valid Input "));
    } else if (validInput(input: pregnancies.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.pregnancies} Without ',' or '.'"));
    } else if (validInput(input: glucose.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.glucose} without ',' or '.'"));
    } else if (validInput(input: bloodPressure.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.bloodPressure} without ',' or '.'"));
    } else if (validInput(input: skinThickness.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.skinThickness} without ',' or '.'"));
    } else if (validInput(input: insulin.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.insulin} without ',' or '.'"));
    } else if (validInput(input: bmi.text.trim(), integer: false)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.bmi} without ','"));
    } else if (validInput(
        input: diabetesPedigreeFunction.text.trim(), integer: false)) {
      emit(const DiseasesFailure(
          error:
              "Please Enter ${ApiKey.diabetesPedigreeFunction} without ',' "));
    } else if (validInput(input: age.text.trim(), integer: true)) {
      emit(const DiseasesFailure(
          error: "Please Enter ${ApiKey.age} without ',' or '.'"));
    } else if (diabetesFormKey.currentState!.validate()) {
      diabetesPrediction();
    } else {
      emit(const DiseasesFailure(error: "Please Enter All Fields"));
    }
  }

  setInitialState() {
    emit(DiseasesInitial());
  }

  diabetesPrediction() async {
    emit(DiseasesLoading());
    final response = await diseasesRepository.diabetesPrediction(
      pregnancies: int.tryParse(pregnancies.text.trim())!,
      glucose: int.tryParse(glucose.text.trim())!,
      bloodPressure: int.tryParse(bloodPressure.text.trim())!,
      skinThickness: int.tryParse(skinThickness.text.trim())!,
      insulin: int.tryParse(insulin.text.trim())!,
      bmi: double.tryParse(bmi.text.trim())!,
      diabetesPedigreeFunction:
          double.tryParse(diabetesPedigreeFunction.text.trim())!,
      age: int.tryParse(age.text.trim())!,
    );
    // response.
    response.fold(
      (l) => emit(DiseasesFailure(error: l)),
      (r) => emit(DiseasesSuccess(predict: r)),
    );
  }
}
