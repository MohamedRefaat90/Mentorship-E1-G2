import 'package:json_annotation/json_annotation.dart';

part 'rocket_respons_model.g.dart';

@JsonSerializable()
class RocketModelRespons {
  List<Rocket>? rockets;

  RocketModelRespons({this.rockets});
  factory RocketModelRespons.fromJson(Map<String, dynamic> json) =>
      _$RocketModelResponsFromJson(json);
}

@JsonSerializable()
class Rocket {
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

  Rocket(
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
  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);
}

@JsonSerializable()
class Height {
  double? meters;
  int? feet;

  Height({this.meters, this.feet});

  factory Height.fromJson(Map<String, dynamic> json) => _$HeightFromJson(json);
}

@JsonSerializable()
class Diameter {
  double? meters;
  double? feet;

  Diameter({this.meters, this.feet});
  factory Diameter.fromJson(Map<String, dynamic> json) =>
      _$DiameterFromJson(json);
}

@JsonSerializable()
class Mass {
  int? kg;
  int? lb;

  Mass({this.kg, this.lb});

  factory Mass.fromJson(Map<String, dynamic> json) => _$MassFromJson(json);
}

@JsonSerializable()
class FirstStage {
  ThrustSeaLevel? thrustSeaLevel;
  ThrustSeaLevel? thrustVacuum;
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
}

@JsonSerializable()
class ThrustSeaLevel {
  int? kN;
  int? lbf;

  ThrustSeaLevel({this.kN, this.lbf});

  factory ThrustSeaLevel.fromJson(Map<String, dynamic> json) =>
      _$ThrustSeaLevelFromJson(json);
}

@JsonSerializable()
class SecondStage {
  ThrustSeaLevel? thrust;
  Payloads? payloads;
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
}

@JsonSerializable()
class Payloads {
  CompositeFairing? compositeFairing;
  String? option1;

  Payloads({this.compositeFairing, this.option1});

  factory Payloads.fromJson(Map<String, dynamic> json) =>
      _$PayloadsFromJson(json);
}

@JsonSerializable()
class CompositeFairing {
  Diameter? height;
  Diameter? diameter;

  CompositeFairing({this.height, this.diameter});

  factory CompositeFairing.fromJson(Map<String, dynamic> json) =>
      _$CompositeFairingFromJson(json);
}

@JsonSerializable()
class Engines {
  Isp? isp;
  ThrustSeaLevel? thrustSeaLevel;
  ThrustSeaLevel? thrustVacuum;
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
}

@JsonSerializable()
class Isp {
  int? seaLevel;
  int? vacuum;

  Isp({this.seaLevel, this.vacuum});
  factory Isp.fromJson(Map<String, dynamic> json) => _$IspFromJson(json);
}

@JsonSerializable()
class LandingLegs {
  int? number;

  LandingLegs({this.number});

  factory LandingLegs.fromJson(Map<String, dynamic> json) =>
      _$LandingLegsFromJson(json);
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
}
