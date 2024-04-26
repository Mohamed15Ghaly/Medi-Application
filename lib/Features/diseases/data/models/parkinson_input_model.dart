class ParkinsonInputModel {
  final double mdvpFoHz;
  final double mdvpFhiHz;
  final double mdvpFloHz;
  final double mdvpJitterPercentage;
  final double mdvpJitterAbs;
  final double mdvpRap;
  final double mdvpPpq;
  final double jitterDdf;
  final double mdvpShimmer;
  final double mdvpShimmerDb;
  final double shimmerApq3;
  final double shimmerApq5;
  final double mdvpApq;
  final double shimmerDda;
  final double nhr;
  final double hnr;
  final double rpde;
  final double dfa;
  final double spread1;
  final double spread2;
  final double d2;
  final double ppe;

  ParkinsonInputModel(
      {required this.mdvpFoHz,
      required this.mdvpFhiHz,
      required this.mdvpFloHz,
      required this.mdvpJitterPercentage,
      required this.mdvpJitterAbs,
      required this.mdvpRap,
      required this.mdvpPpq,
      required this.jitterDdf,
      required this.mdvpShimmer,
      required this.mdvpShimmerDb,
      required this.shimmerApq3,
      required this.shimmerApq5,
      required this.mdvpApq,
      required this.shimmerDda,
      required this.nhr,
      required this.hnr,
      required this.rpde,
      required this.dfa,
      required this.spread1,
      required this.spread2,
      required this.d2,
      required this.ppe});
}
