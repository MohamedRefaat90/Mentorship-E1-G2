import 'package:json_annotation/json_annotation.dart';

part 'rocket_respons_body.g.dart';

@JsonSerializable()
class RocketModel {
  Diameter? height;
  Diameter? diameter;
  Mass? mass;
  FirstStage? firstStage;
  SecondStage? secondStage;
  Engines? engines;
  LandingLegs? landingLegs;
  List<PayloadWeights>? payloadWeights;
  List<String>? flickrImages;
  String? name;
  String? type;
  bool? active;
  int? stages;
  int? boosters;
  int? costPerLaunch;
  int? successRatePct;
  String? firstFlight;
  String? country;
  String? company;
  String? wikipedia;
  String? description;
  String? id;

  RocketModel(
      {this.height,
      this.diameter,
      this.mass,
      this.firstStage,
      this.secondStage,
      this.engines,
      this.landingLegs,
      this.payloadWeights,
      this.flickrImages,
      this.name,
      this.type,
      this.active,
      this.stages,
      this.boosters,
      this.costPerLaunch,
      this.successRatePct,
      this.firstFlight,
      this.country,
      this.company,
      this.wikipedia,
      this.description,
      this.id});

  factory RocketModel.fromJson(Map<String, dynamic> json) =>
      _$RocketModelFromJson(json);

  Map<String, dynamic> toJson() => _$RocketModelToJson(this);
}

@JsonSerializable()
class LandingLegs {
  int? number;
  String? material;

  LandingLegs({this.number, this.material});

  factory LandingLegs.fromJson(Map<String, dynamic> json) =>
      _$LandingLegsFromJson(json);

  Map<String, dynamic> toJson() => _$LandingLegsToJson(this);
}

@JsonSerializable()
class PayloadWeights {
  String? id;
  String? name;
  int? kg;
  int? lb;

  PayloadWeights({this.id, this.name, this.kg, this.lb});

  factory PayloadWeights.fromJson(Map<String, dynamic> json) =>
      _$PayloadWeightsFromJson(json);

  Map<String, dynamic> toJson() => _$PayloadWeightsToJson(this);
}

@JsonSerializable()
class Diameter {
  double? meters;
  double? feet;

  Diameter({this.meters, this.feet});

  factory Diameter.fromJson(Map<String, dynamic> json) =>
      _$DiameterFromJson(json);

  Map<String, dynamic> toJson() => _$DiameterToJson(this);
}

@JsonSerializable()
class Mass {
  int? kg;
  int? lb;

  Mass({this.kg, this.lb});

  factory Mass.fromJson(Map<String, dynamic> json) => _$MassFromJson(json);

  Map<String, dynamic> toJson() => _$MassToJson(this);
}

@JsonSerializable()
class FirstStage {
  Map? thrustSeaLevel;
  Map? thrustVacuum;
  bool? reusable;
  int? engines;
  double? fuelAmountTons;
  int? burnTimeSec;

  FirstStage(
      {this.thrustSeaLevel,
      this.thrustVacuum,
      this.reusable,
      this.engines,
      this.fuelAmountTons,
      this.burnTimeSec});

  factory FirstStage.fromJson(Map<String, dynamic> json) =>
      _$FirstStageFromJson(json);

  Map<String, dynamic> toJson() => _$FirstStageToJson(this);
}

@JsonSerializable()
class SecondStage {
  Map? thrust;
  Map? payloads;
  bool? reusable;
  int? engines;
  double? fuelAmountTons;
  int? burnTimeSec;

  SecondStage(
      {this.thrust,
      this.payloads,
      this.reusable,
      this.engines,
      this.fuelAmountTons,
      this.burnTimeSec});

  factory SecondStage.fromJson(Map<String, dynamic> json) =>
      _$SecondStageFromJson(json);

  Map<String, dynamic> toJson() => _$SecondStageToJson(this);
}

@JsonSerializable()
class Engines {
  Map? isp;
  Map? thrustSeaLevel;
  Map? thrustVacuum;
  int? number;
  String? type;
  String? version;
  String? layout;
  int? engineLossMax;
  String? propellant1;
  String? propellant2;
  int? thrustToWeight;

  Engines(
      {this.isp,
      this.thrustSeaLevel,
      this.thrustVacuum,
      this.number,
      this.type,
      this.version,
      this.layout,
      this.engineLossMax,
      this.propellant1,
      this.propellant2,
      this.thrustToWeight});

  factory Engines.fromJson(Map<String, dynamic> json) =>
      _$EnginesFromJson(json);

  Map<String, dynamic> toJson() => _$EnginesToJson(this);
}
