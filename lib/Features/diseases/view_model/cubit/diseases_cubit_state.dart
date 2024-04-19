part of 'diseases_cubit_cubit.dart';

sealed class DiseasesPredictionState extends Equatable {
  const DiseasesPredictionState();

  @override
  List<Object> get props => [];
}

final class DiseasesPredictionInitial extends DiseasesPredictionState {}

final class DiseasesPredictionSuccess extends DiseasesPredictionState {
  final String predict;
  const DiseasesPredictionSuccess({required this.predict});
}

final class DiseasesPredictionLoading extends DiseasesPredictionState {}

final class DiseasesPredictionFailure extends DiseasesPredictionState {
  final String error;
  const DiseasesPredictionFailure({required this.error});
}
