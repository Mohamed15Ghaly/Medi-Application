class BreastCancerInputModel{
      final int clumpThickness;
      final double uniformCellSize;
      final double uniformCellShape;
      final double marginalAdhesion;
      final double singleEpithelialSize;
      final double bareNuclei;
      final double blandChromatin;
      final double normalNucleoli;
      final double mitoses;

  BreastCancerInputModel({
    required this.clumpThickness,
    required this.uniformCellSize,
    required this.uniformCellShape,
    required this.marginalAdhesion,
    required this.singleEpithelialSize,
    required this.bareNuclei,
    required this.blandChromatin,
    required this.normalNucleoli,
    required this.mitoses
  });
}