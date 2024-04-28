import 'package:json_annotation/json_annotation.dart';

part 'rocket_respons_body.g.dart';

@JsonSerializable()
class RocketResponseModel {

  List<Rocket> rockets;

  RocketResponseModel({
    required this.rockets,
  });
factory RocketResponseModel.fromJson(Map<String, dynamic> json) =>
    _$RocketResponseModelFromJson(json); 
}

@JsonSerializable()
class Rocket {
  String id;
  String name;
  String type;
  bool active;
  int stages;
  int boosters;
  int costPerLaunch;
  int successRatePct;
  String firstFlight;
  String country;
  String company;
  String wikipedia;
  String description;
  Height height;
  Diameter diameter;
  Mass mass;
  Stage firstStage;
  Stage secondStage;
  Engines engines;
  LandingLegs landingLegs;
  List<PayloadWeight> payloadWeights;
  List<String> flickrImages;

  Rocket({
    required this.id,
    required this.name,
    required this.type,
    required this.active,
    required this.stages,
    required this.boosters,
    required this.costPerLaunch,
    required this.successRatePct,
    required this.firstFlight,
    required this.country,
    required this.company,
    required this.wikipedia,
    required this.description,
    required this.height,
    required this.diameter,
    required this.mass,
    required this.firstStage,
    required this.secondStage,
    required this.engines,
    required this.landingLegs,
    required this.payloadWeights,
    required this.flickrImages,
  });

  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);
}

@JsonSerializable()
class Height {
  double meters;
  double feet;

  Height({
    required this.meters,
    required this.feet,
  });

  factory Height.fromJson(Map<String, dynamic> json) => _$HeightFromJson(json);
}

@JsonSerializable()
class Diameter {
  double meters;
  double feet;

  Diameter({
    required this.meters,
    required this.feet,
  });

  factory Diameter.fromJson(Map<String, dynamic> json) => _$DiameterFromJson(json);
}

@JsonSerializable()
class Mass {
  int kg;
  int lb;

  Mass({
    required this.kg,
    required this.lb,
  });

  factory Mass.fromJson(Map<String, dynamic> json) => _$MassFromJson(json);
}

@JsonSerializable()
class Stage {
  Thrust thrust;
  Payloads payloads;
  bool reusable;
  int engines;
  double fuelAmountTons;
  int? burnTimeSec; // Nullable

  Stage({
    required this.thrust,
    required this.payloads,
    required this.reusable,
    required this.engines,
    required this.fuelAmountTons,
    required this.burnTimeSec,
  });

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
}

@JsonSerializable()
class Thrust {
  int kN;
  int lbf;

  Thrust({
    required this.kN,
    required this.lbf,
  });

  factory Thrust.fromJson(Map<String, dynamic> json) => _$ThrustFromJson(json);
}

@JsonSerializable()
class Payloads {
  CompositeFairing compositeFairing;
  String option1;

  Payloads({
    required this.compositeFairing,
    required this.option1,
  });

  factory Payloads.fromJson(Map<String, dynamic> json) => _$PayloadsFromJson(json);
}

@JsonSerializable()
class CompositeFairing {
  Height height;
  Diameter diameter;

  CompositeFairing({
    required this.height,
    required this.diameter,
  });

  factory CompositeFairing.fromJson(Map<String, dynamic> json) =>
      _$CompositeFairingFromJson(json);
}

@JsonSerializable()
class Engines {
  Isp isp;
  Thrust thrustSeaLevel;
  Thrust thrustVacuum;
  int number;
  String type;
  String version;
  String layout;
  int? engineLossMax; // Nullable
  String propellant1;
  String propellant2;
  double thrustToWeight;

  Engines({
    required this.isp,
    required this.thrustSeaLevel,
    required this.thrustVacuum,
    required this.number,
    required this.type,
    required this.version,
    required this.layout,
    required this.engineLossMax,
    required this.propellant1,
    required this.propellant2,
    required this.thrustToWeight,
  });

  factory Engines.fromJson(Map<String, dynamic> json) => _$EnginesFromJson(json);
}

@JsonSerializable()
class Isp {
  int seaLevel;
  int vacuum;

  Isp({
    required this.seaLevel,
    required this.vacuum,
  });

  factory Isp.fromJson(Map<String, dynamic> json) => _$IspFromJson(json);
}

@JsonSerializable()
class LandingLegs {
  int number;
  String? material; // Nullable

  LandingLegs({
    required this.number,
    required this.material,
  });

  factory LandingLegs.fromJson(Map<String, dynamic> json) => _$LandingLegsFromJson(json);
}

@JsonSerializable()
class PayloadWeight {
  String id;
  String name;
  int kg;
  int lb;

  PayloadWeight({
    required this.id,
    required this.name,
    required this.kg,
    required this.lb,
  });

  factory PayloadWeight.fromJson(Map<String, dynamic> json) => _$PayloadWeightFromJson(json);
}
