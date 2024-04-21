part of 'diseases_cubit.dart';

sealed class DiseasesState extends Equatable {
  const DiseasesState();

  @override
  List<Object> get props => [];
}

final class DiseasesInitial extends DiseasesState {}

final class DiseasesSuccess extends DiseasesState {
  final String predict;
  const DiseasesSuccess({required this.predict});
}

final class DiseasesLoading extends DiseasesState {}

final class DiseasesFailure extends DiseasesState {
  final String error;
  const DiseasesFailure({required this.error});
}
final class SetDiseasesScreen extends DiseasesState {}
