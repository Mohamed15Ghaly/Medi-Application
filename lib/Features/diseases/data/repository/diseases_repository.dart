import 'package:dartz/dartz.dart';
import 'package:team/Features/diseases/data/models/breast_cancer_input_model.dart';
import 'package:team/Features/diseases/data/models/diabetes_input_model.dart';
import 'package:team/Features/diseases/data/models/heart_disease_prediction.dart';
import 'package:team/Features/diseases/data/models/parkinson_input_model.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/errors/exceptions.dart';

abstract class BaseDiseasesRepository {
  Future<Either<String, String>> breastCancerPrediction({
    required BreastCancerInputModel breastCancerInputModel,
  });
  Future<Either<String, String>> diabetesPrediction({
    required DiabetesInputModel diabetesInputModel,
  });

  
}


class DiseasesRepositoryImpl extends BaseDiseasesRepository {

  final ApiConsumer apiConsumer;
  DiseasesRepositoryImpl({required this.apiConsumer});

  @override
  Future<Either<String, String>> breastCancerPrediction(
      {
        required BreastCancerInputModel breastCancerInputModel
      }) async {
    try {
      String response = await apiConsumer.post(
        ApiUrl.breastCancerPrediction,
        body: {
          ApiKey.clumpThickness: breastCancerInputModel.clumpThickness,
          ApiKey.uniformCellSize: breastCancerInputModel.uniformCellSize,
          ApiKey.uniformCellShape: breastCancerInputModel.uniformCellShape,
          ApiKey.marginalAdhesion: breastCancerInputModel.marginalAdhesion,
          ApiKey.singleEpithelialSize: breastCancerInputModel.singleEpithelialSize,
          ApiKey.bareNuclei: breastCancerInputModel.bareNuclei,
          ApiKey.blandChromatin: breastCancerInputModel.blandChromatin,
          ApiKey.normalNucleoli: breastCancerInputModel.normalNucleoli,
          ApiKey.mitoses: breastCancerInputModel.mitoses,
        },
      );
      return Right(response);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }

  Future<Either<String, String>> heartDiseasePrediction({
    required HeartDiseasePrediction heartDiseasePrediction,
  }) async {
    try {
      String response = await apiConsumer.post(
        ApiUrl.heartDiseasePrediction,
        body: {
          ApiKey.age: heartDiseasePrediction.age,
          ApiKey.sex: heartDiseasePrediction.sex,
          ApiKey.cp: heartDiseasePrediction.cp,
          ApiKey.trestbps: heartDiseasePrediction.trestbps,
          ApiKey.chol: heartDiseasePrediction.chol,
          ApiKey.fbs: heartDiseasePrediction.fbs,
          ApiKey.restecg: heartDiseasePrediction.restecg,
          ApiKey.thalach: heartDiseasePrediction.thalach,
          ApiKey.exang: heartDiseasePrediction.exang,
          ApiKey.oldpeak: heartDiseasePrediction.oldpeak,
          ApiKey.slope: heartDiseasePrediction.slope,
          ApiKey.ca: heartDiseasePrediction.ca,
          ApiKey.thal: heartDiseasePrediction.thal,
        },
      );
      return Right(response);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }

  @override
  Future<Either<String, String>> diabetesPrediction({
    required DiabetesInputModel diabetesInputModel,
  }) async {
    try {
      String response = await apiConsumer.post(
        ApiUrl.diabetesPrediction,
        body: {
          ApiKey.pregnancies: diabetesInputModel.pregnancies,
          ApiKey.glucose: diabetesInputModel.glucose,
          ApiKey.bloodPressure: diabetesInputModel.bloodPressure,
          ApiKey.skinThickness: diabetesInputModel.skinThickness,
          ApiKey.insulin: diabetesInputModel.insulin,
          ApiKey.bmi: diabetesInputModel.bmi,
          ApiKey.diabetesPedigreeFunction: diabetesInputModel.diabetesPedigreeFunction,
          ApiKey.age: diabetesInputModel.age,
        },
      );
      return Right(response);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }

  Future<Either<String, String>> parkinsonPrediction(
      {
        required ParkinsonInputModel parkinsonInputModel
      }) async {
    try {
      String response = await apiConsumer.post(
        ApiUrl.parkinsonPrediction,
        body: {
          ApiKey.mdvpFoHz: parkinsonInputModel.mdvpFoHz,
          ApiKey.mdvpFhiHz: parkinsonInputModel.mdvpFhiHz,
          ApiKey.mdvpFloHz: parkinsonInputModel.mdvpFloHz,
          ApiKey.mdvpJitterPercentage: parkinsonInputModel.mdvpJitterPercentage,
          ApiKey.mdvpJitterAbs: parkinsonInputModel.mdvpJitterAbs,
          ApiKey.mdvpRap: parkinsonInputModel.mdvpRap,
          ApiKey.mdvpPpq: parkinsonInputModel.mdvpPpq,
          ApiKey.jitterDdf: parkinsonInputModel.jitterDdf,
          ApiKey.mdvpShimmer: parkinsonInputModel.mdvpShimmer,
          ApiKey.mdvpShimmerDb: parkinsonInputModel.mdvpShimmerDb,
          ApiKey.shimmerApq3: parkinsonInputModel.shimmerApq3,
          ApiKey.shimmerApq5: parkinsonInputModel.shimmerApq5,
          ApiKey.mdvpApq: parkinsonInputModel.mdvpApq,
          ApiKey.shimmerDda: parkinsonInputModel.mdvpApq,
          ApiKey.nhr: parkinsonInputModel.mdvpApq,
          ApiKey.hnr: parkinsonInputModel.hnr,
          ApiKey.rpde: parkinsonInputModel.rpde,
          ApiKey.dfa: parkinsonInputModel.dfa,
          ApiKey.spread1: parkinsonInputModel.spread1,
          ApiKey.spread2: parkinsonInputModel.spread2,
          ApiKey.d2: parkinsonInputModel.d2,
          ApiKey.ppe: parkinsonInputModel.ppe,
        },
      );
      return Right(response);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }
}
