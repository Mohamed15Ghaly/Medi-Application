import 'package:dartz/dartz.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/errors/exceptions.dart';

class DiseasesRepository {
  final ApiConsumer apiConsumer;
  DiseasesRepository({required this.apiConsumer});

  Future<Either<String, String>> breastCancerPrediction(
      {required int clumpThickness,
      required double uniformCellSize,
      required double uniformCellShape,
      required double marginalAdhesion,
      required double singleEpithelialSize,
      required double bareNuclei,
      required double blandChromatin,
      required double normalNucleoli,
      required double mitoses}) async {
    try {
      String response = await apiConsumer.post(
        ApiUrl.breastCancerPrediction,
        body: {
          ApiKey.clumpThickness: clumpThickness,
          ApiKey.uniformCellSize: uniformCellSize,
          ApiKey.uniformCellShape: uniformCellShape,
          ApiKey.marginalAdhesion: marginalAdhesion,
          ApiKey.singleEpithelialSize: singleEpithelialSize,
          ApiKey.bareNuclei: bareNuclei,
          ApiKey.blandChromatin: blandChromatin,
          ApiKey.normalNucleoli: normalNucleoli,
          ApiKey.mitoses: mitoses,
        },
      );
      return Right(response);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }

  Future<Either<String, String>> heartDiseasePrediction({
    required int age,
    required int sex,
    required int cp,
    required int trestbps,
    required int chol,
    required int fbs,
    required int restecg,
    required int thalach,
    required int exang,
    required int oldpeak,
    required int slope,
    required int ca,
    required int thal,
  }) async {
    try {
      String response = await apiConsumer.post(
        ApiUrl.heartDiseasePrediction,
        body: {
          ApiKey.age: age,
          ApiKey.sex: sex,
          ApiKey.cp: cp,
          ApiKey.trestbps: trestbps,
          ApiKey.chol: chol,
          ApiKey.fbs: fbs,
          ApiKey.restecg: restecg,
          ApiKey.thalach: thalach,
          ApiKey.exang: exang,
          ApiKey.oldpeak: oldpeak,
          ApiKey.slope: slope,
          ApiKey.ca: ca,
          ApiKey.thal: thal,
        },
      );
      return Right(response);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }


  Future<Either<String, String>> diabetesPrediction({
    required int pregnancies,
    required int glucose,
    required int bloodPressure,
    required int skinThickness,
    required int insulin,
    required double bmi,
    required double diabetesPedigreeFunction,
    required int age,
  }) async {
    try {
      String response = await apiConsumer.post(
        ApiUrl.diabetesPrediction,
        body: {
          ApiKey.pregnancies: pregnancies,
          ApiKey.glucose: glucose,
          ApiKey.bloodPressure: bloodPressure,  
          ApiKey.skinThickness: skinThickness,
          ApiKey.insulin: insulin,
          ApiKey.bmi: bmi,
          ApiKey.diabetesPedigreeFunction: diabetesPedigreeFunction,
          ApiKey.age: age,
        },
      );
      return Right(response);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }


 Future<Either<String, String>> parkinsonPrediction(
    {required double mdvpFoHz,
    required double mdvpFhiHz,
    required double mdvpFloHz,
    required double mdvpJitterPercentage,
    required double mdvpJitterAbs,
    required double mdvpRap,
    required double mdvpPpq,
    required double jitterDdf,
    required double mdvpShimmer,
    required double mdvpShimmerDb,
    required double shimmerApq3,
    required double shimmerApq5,
    required double mdvpApq,
    required double shimmerDda,
    required double nhr,
    required double hnr,
    required double rpde,
    required double dfa,
    required double spread1,
    required double spread2,
    required double d2,
    required double ppe
 }) async {
    try {
      String response = await apiConsumer.post(
        ApiUrl.parkinsonPrediction,
        body: {
          ApiKey.mdvpFoHz: mdvpFoHz,
          ApiKey.mdvpFhiHz: mdvpFhiHz,
          ApiKey.mdvpFloHz: mdvpFloHz,
          ApiKey.mdvpJitterPercentage:
              mdvpJitterPercentage,
          ApiKey.mdvpJitterAbs: mdvpJitterAbs,
          ApiKey.mdvpRap: mdvpRap,
          ApiKey.mdvpPpq: mdvpPpq,
          ApiKey.jitterDdf: jitterDdf,
          ApiKey.mdvpShimmer: mdvpShimmer,
          ApiKey.mdvpShimmerDb: mdvpShimmerDb,
          ApiKey.shimmerApq3: shimmerApq3,
          ApiKey.shimmerApq5: shimmerApq5,
          ApiKey.mdvpApq: mdvpApq,
          ApiKey.shimmerDda: mdvpApq,
          ApiKey.nhr: mdvpApq,
          ApiKey.hnr: hnr,
          ApiKey.rpde: rpde,
          ApiKey.dfa: dfa,
          ApiKey.spread1: spread1,
          ApiKey.spread2: spread2,
          ApiKey.d2: d2,
          ApiKey.ppe: ppe,
        },
      );
      return Right(response);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }
}
