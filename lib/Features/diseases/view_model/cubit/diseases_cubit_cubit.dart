import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/errors/exceptions.dart';

part 'diseases_cubit_state.dart';

class DiseasesPredictionCubit extends Cubit<DiseasesPredictionState> {
  DiseasesPredictionCubit(this.apiConsumer)
      : super(DiseasesPredictionInitial());
  final ApiConsumer apiConsumer;

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

  heartDiseasePredictionValidation() {
    if (validInput(input: age.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ClumpThickness Without ',' or '.'"));
    } else if (validInput(input: sex.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter UniformCellSize without ',' or '.'"));
    } else if (validInput(input: trestbps.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter UniformCellShape without ',' or '.'"));
    } else if (validInput(input: chol.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter UniformCellShape without ',' or '.'"));
    } else if (validInput(input: fbs.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter MarginalAdhesion without ',' or '.'"));
    } else if (validInput(input: restecg.text.trim(), integer: false)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter SingleEpithelialSize without ','"));
    } else if (validInput(input: thalach.text.trim(), integer: false)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter BareNuclei without ',' "));
    } else if (validInput(input: exang.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter BlandChromatin without ',' or '.'"));
    } else if (validInput(input: oldpeak.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter NormalNucleoli without ',' or '.'"));
    } else if (validInput(input: slope.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter Mitoses without ',' or '.'"));
    } else if (validInput(input: ca.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter Mitoses without ',' or '.'"));
    } else if (validInput(input: thal.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter Mitoses without ',' or '.'"));
    } else if (heartDiseaseFormKey.currentState!.validate()) {
      heartDiseasePrediction();
    } else {
      emit(const DiseasesPredictionFailure(error: "Please Enter All Fields"));
    }
  }

  heartDiseasePrediction() async {
    emit(DiseasesPredictionLoading());
    try {
      String response = await apiConsumer.post(
        ApiUrl.heartDiseasePrediction,
        body: {
          ApiKey.age: double.tryParse(age.text.trim()),
          ApiKey.sex: double.tryParse(sex.text.trim()),
          ApiKey.cp: double.tryParse(cp.text.trim()),
          ApiKey.trestbps: double.tryParse(trestbps.text.trim()),
          ApiKey.chol: double.tryParse(chol.text.trim()),
          ApiKey.fbs: double.tryParse(fbs.text.trim()),
          ApiKey.restecg: double.tryParse(restecg.text.trim()),
          ApiKey.thalach: double.tryParse(thalach.text.trim()),
          ApiKey.exang: double.tryParse(exang.text.trim()),
          ApiKey.oldpeak: double.tryParse(oldpeak.text.trim()),
          ApiKey.slope: double.tryParse(slope.text.trim()),
          ApiKey.ca: double.tryParse(ca.text.trim()),
          ApiKey.thal: double.tryParse(thal.text.trim()),
        },
      );
      emit(DiseasesPredictionSuccess(predict: response));
    } on ServiceExceptions catch (e) {
      emit(DiseasesPredictionFailure(error: e.errorMessageModel.errorMessage));
    }
  }

  breastCancerPredictionValidation() {
    if (validInput(input: clumpThickness.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.clumpThickness} Without ',' or '.'"));
    } else if (validInput(input: uniformCellSize.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.uniformCellSize} without ',' or '.'"));
    } else if (validInput(input: uniformCellShape.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.uniformCellShape} without ',' or '.'"));
    } else if (validInput(input: uniformCellShape.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.marginalAdhesion} without ',' or '.'"));
    } else if (validInput(input: marginalAdhesion.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error:
              "Please Enter ${ApiKey.singleEpithelialSize} without ',' or '.'"));
    } else if (validInput(
        input: singleEpithelialSize.text.trim(), integer: false)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.singleEpithelialSize} without ','"));
    } else if (validInput(input: bareNuclei.text.trim(), integer: false)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.bareNuclei} without ',' "));
    } else if (validInput(input: blandChromatin.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.blandChromatin} without ',' or '.'"));
    } else if (validInput(input: normalNucleoli.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.normalNucleoli} without ',' or '.'"));
    } else if (validInput(input: mitoses.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.mitoses} without ',' or '.'"));
    } else if (breastCancerFormKey.currentState!.validate()) {
      breastCancerPrediction();
    } else {
      emit(const DiseasesPredictionFailure(error: "Please Enter All Fields"));
    }
  }

  breastCancerPrediction() async {
    emit(DiseasesPredictionLoading());
    try {
      String response = await apiConsumer.post(
        ApiUrl.breastCancerPrediction,
        body: {
          ApiKey.clumpThickness: double.tryParse(clumpThickness.text.trim()),
          ApiKey.uniformCellSize: double.tryParse(uniformCellSize.text.trim()),
          ApiKey.uniformCellShape:
              double.tryParse(uniformCellShape.text.trim()),
          ApiKey.marginalAdhesion:
              double.tryParse(marginalAdhesion.text.trim()),
          ApiKey.singleEpithelialSize:
              double.tryParse(singleEpithelialSize.text.trim()),
          ApiKey.bareNuclei: double.tryParse(bareNuclei.text.trim()),
          ApiKey.blandChromatin: double.tryParse(blandChromatin.text.trim()),
          ApiKey.normalNucleoli: double.tryParse(normalNucleoli.text.trim()),
          ApiKey.mitoses: double.tryParse(mitoses.text.trim()),
        },
      );
      emit(DiseasesPredictionSuccess(predict: response));
    } on ServiceExceptions catch (e) {
      emit(DiseasesPredictionFailure(error: e.errorMessageModel.errorMessage));
    }
  }

  parkinsonPredictionValidation() {
    if (validInput(input: mdvpFoHz.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.mdvpFoHz} Without ',' or '.'"));
    } else if (validInput(input: mdvpFhiHz.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter  ${ApiKey.mdvpFhiHz} without ',' or '.'"));
    } else if (validInput(input: mdvpFloHz.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.mdvpFloHz} without ',' or '.'"));
    } else if (validInput(
        input: mdvpJitterPercentage.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error:
              "Please Enter ${ApiKey.mdvpJitterPercentage} without ',' or '.'"));
    } else if (validInput(input: mdvpJitterAbs.text.trim(), integer: false)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.mdvpJitterAbs} without ','"));
    } else if (validInput(input: mdvpRap.text.trim(), integer: false)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.mdvpRap} without ',' "));
    } else if (validInput(input: mdvpPpq.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.mdvpPpq} without ',' or '.'"));
    } else if (validInput(input: jitterDdf.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.jitterDdf} without ',' or '.'"));
    } else if (validInput(input: mdvpShimmer.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.mdvpShimmer} without ',' or '.'"));
    } else if (validInput(input: mdvpShimmerDb.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.mdvpShimmerDb} without ',' or '.'"));
    } else if (validInput(input: shimmerApq3.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.shimmerApq3} without ',' or '.'"));
    } else if (validInput(input: shimmerApq5.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.shimmerApq5} without ',' or '.'"));
    } else if (validInput(input: mdvpApq.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.mdvpPpq} without ',' or '.'"));
    } else if (validInput(input: shimmerDda.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.shimmerDda} without ',' or '.'"));
    } else if (validInput(input: nhr.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.nhr} without ',' or '.'"));
    } else if (validInput(input: hnr.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.hnr} without ',' or '.'"));
    } else if (validInput(input: rpde.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.hnr} without ',' or '.'"));
    } else if (validInput(input: dfa.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.dfa} without ',' or '.'"));
    } else if (validInput(input: spread1.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.spread1} without ',' or '.'"));
    } else if (validInput(input: spread2.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.spread2} without ',' or '.'"));
    } else if (validInput(input: d2.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.d2} without ',' or '.'"));
    } else if (validInput(input: ppe.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.ppe} without ',' or '.'"));
    } else if (parkinsonFormKey.currentState!.validate()) {
      parkinsonPrediction();
    } else {
      emit(const DiseasesPredictionFailure(error: "Please Enter All Fields"));
    }
  }

  parkinsonPrediction() async {
    emit(DiseasesPredictionLoading());
    try {
      String response = await apiConsumer.post(
        ApiUrl.parkinsonPrediction,
        body: {
          ApiKey.mdvpFoHz: double.tryParse(mdvpFoHz.text.trim()),
          ApiKey.mdvpFhiHz: double.tryParse(mdvpFhiHz.text.trim()),
          ApiKey.mdvpFloHz: double.tryParse(mdvpFloHz.text.trim()),
          ApiKey.mdvpJitterPercentage:
              double.tryParse(mdvpJitterPercentage.text.trim()),
          ApiKey.mdvpJitterAbs: double.tryParse(mdvpJitterAbs.text.trim()),
          ApiKey.mdvpRap: double.tryParse(mdvpRap.text.trim()),
          ApiKey.mdvpPpq: double.tryParse(mdvpPpq.text.trim()),
          ApiKey.jitterDdf: double.tryParse(jitterDdf.text.trim()),
          ApiKey.mdvpShimmer: double.tryParse(mdvpShimmer.text.trim()),
          ApiKey.mdvpShimmerDb: double.tryParse(mdvpShimmerDb.text.trim()),
          ApiKey.shimmerApq3: double.tryParse(shimmerApq3.text.trim()),
          ApiKey.shimmerApq5: double.tryParse(shimmerApq5.text.trim()),
          ApiKey.mdvpApq: double.tryParse(mdvpApq.text.trim()),
          ApiKey.shimmerDda: double.tryParse(shimmerDda.text.trim()),
          ApiKey.nhr: double.tryParse(nhr.text.trim()),
          ApiKey.hnr: double.tryParse(hnr.text.trim()),
          ApiKey.rpde: double.tryParse(rpde.text.trim()),
          ApiKey.dfa: double.tryParse(dfa.text.trim()),
          ApiKey.spread1: double.tryParse(spread1.text.trim()),
          ApiKey.spread2: double.tryParse(spread2.text.trim()),
          ApiKey.d2: double.tryParse(d2.text.trim()),
          ApiKey.ppe: double.tryParse(ppe.text.trim()),
        },
      );
      emit(DiseasesPredictionSuccess(predict: response));
    } on ServiceExceptions catch (e) {
      emit(DiseasesPredictionFailure(error: e.errorMessageModel.errorMessage));
    }
  }

  diabetesPredictionValidation() {
    if (validInput(input: pregnancies.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.pregnancies} Without ',' or '.'"));
    } else if (validInput(input: glucose.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.glucose} without ',' or '.'"));
    } else if (validInput(input: bloodPressure.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.bloodPressure} without ',' or '.'"));
    } else if (validInput(input: skinThickness.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.skinThickness} without ',' or '.'"));
    } else if (validInput(input: insulin.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.insulin} without ',' or '.'"));
    } else if (validInput(input: bmi.text.trim(), integer: false)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.bmi} without ','"));
    } else if (validInput(
        input: diabetesPedigreeFunction.text.trim(), integer: false)) {
      emit(const DiseasesPredictionFailure(
          error:
              "Please Enter ${ApiKey.diabetesPedigreeFunction} without ',' "));
    } else if (validInput(input: age.text.trim(), integer: true)) {
      emit(const DiseasesPredictionFailure(
          error: "Please Enter ${ApiKey.age} without ',' or '.'"));
    } else if (diabetesFormKey.currentState!.validate()) {
      diabetesPrediction();
    } else {
      emit(const DiseasesPredictionFailure(error: "Please Enter All Fields"));
    }
  }

  setInitialState() {
    emit(DiseasesPredictionInitial());
  }

  diabetesPrediction() async {
    emit(DiseasesPredictionLoading());
    try {
      String response = await apiConsumer.post(
        ApiUrl.diabetesPrediction,
        body: {
          ApiKey.pregnancies: double.tryParse(pregnancies.text.trim()),
          ApiKey.glucose: double.tryParse(glucose.text.trim()),
          ApiKey.bloodPressure: double.tryParse(bloodPressure.text.trim()),
          ApiKey.skinThickness: double.tryParse(skinThickness.text.trim()),
          ApiKey.insulin: double.tryParse(insulin.text.trim()),
          ApiKey.bmi: double.tryParse(bmi.text.trim()),
          ApiKey.diabetesPedigreeFunction:
              double.tryParse(diabetesPedigreeFunction.text.trim()),
          ApiKey.age: double.tryParse(age.text.trim()),
        },
      );
      emit(DiseasesPredictionSuccess(predict: response));
    } on ServiceExceptions catch (e) {
      emit(DiseasesPredictionFailure(error: e.errorMessageModel.errorMessage));
    }
  }
}
