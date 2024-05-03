// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'rocket_respons_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RocketResponseModel _$RocketResponseModelFromJson(Map<String, dynamic> json) =>
    RocketResponseModel(
      rockets: (json['rockets'] as List<dynamic>)
          .map((e) => Rocket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RocketResponseModelToJson(
        RocketResponseModel instance) =>
    <String, dynamic>{
      'rockets': instance.rockets,
    };

Rocket _$RocketFromJson(Map<String, dynamic> json) => Rocket(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      active: json['active'] as bool,
      stages: json['stages'] as int,
      boosters: json['boosters'] as int,
      costPerLaunch: json['costPerLaunch'] as int,
      successRatePct: json['successRatePct'] as int,
      firstFlight: json['firstFlight'] as String,
      country: json['country'] as String,
      company: json['company'] as String,
      wikipedia: json['wikipedia'] as String,
      description: json['description'] as String,
      height: Height.fromJson(json['height'] as Map<String, dynamic>),
      diameter: Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
      mass: Mass.fromJson(json['mass'] as Map<String, dynamic>),
      firstStage: Stage.fromJson(json['firstStage'] as Map<String, dynamic>),
      secondStage: Stage.fromJson(json['secondStage'] as Map<String, dynamic>),
      engines: Engines.fromJson(json['engines'] as Map<String, dynamic>),
      landingLegs:
          LandingLegs.fromJson(json['landingLegs'] as Map<String, dynamic>),
      payloadWeights: (json['payloadWeights'] as List<dynamic>)
          .map((e) => PayloadWeight.fromJson(e as Map<String, dynamic>))
          .toList(),
      flickrImages: (json['flickrImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'costPerLaunch': instance.costPerLaunch,
      'successRatePct': instance.successRatePct,
      'firstFlight': instance.firstFlight,
      'country': instance.country,
      'company': instance.company,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'height': instance.height,
      'diameter': instance.diameter,
      'mass': instance.mass,
      'firstStage': instance.firstStage,
      'secondStage': instance.secondStage,
      'engines': instance.engines,
      'landingLegs': instance.landingLegs,
      'payloadWeights': instance.payloadWeights,
      'flickrImages': instance.flickrImages,
    };

Height _$HeightFromJson(Map<String, dynamic> json) => Height(
      meters: (json['meters'] as num).toDouble(),
      feet: (json['feet'] as num).toDouble(),
    );

Map<String, dynamic> _$HeightToJson(Height instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Diameter _$DiameterFromJson(Map<String, dynamic> json) => Diameter(
      meters: (json['meters'] as num).toDouble(),
      feet: (json['feet'] as num).toDouble(),
    );

Map<String, dynamic> _$DiameterToJson(Diameter instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Mass _$MassFromJson(Map<String, dynamic> json) => Mass(
      kg: json['kg'] as int,
      lb: json['lb'] as int,
    );

Map<String, dynamic> _$MassToJson(Mass instance) => <String, dynamic>{
      'kg': instance.kg,
      'lb': instance.lb,
    };

Stage _$StageFromJson(Map<String, dynamic> json) => Stage(
      thrust: Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
      payloads: Payloads.fromJson(json['payloads'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool,
      engines: json['engines'] as int,
      fuelAmountTons: (json['fuelAmountTons'] as num).toDouble(),
      burnTimeSec: json['burnTimeSec'] as int?,
    );

Map<String, dynamic> _$StageToJson(Stage instance) => <String, dynamic>{
      'thrust': instance.thrust,
      'payloads': instance.payloads,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuelAmountTons': instance.fuelAmountTons,
      'burnTimeSec': instance.burnTimeSec,
    };

Thrust _$ThrustFromJson(Map<String, dynamic> json) => Thrust(
      kN: json['kN'] as int,
      lbf: json['lbf'] as int,
    );

Map<String, dynamic> _$ThrustToJson(Thrust instance) => <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

Payloads _$PayloadsFromJson(Map<String, dynamic> json) => Payloads(
      compositeFairing: CompositeFairing.fromJson(
          json['compositeFairing'] as Map<String, dynamic>),
      option1: json['option1'] as String,
    );

Map<String, dynamic> _$PayloadsToJson(Payloads instance) => <String, dynamic>{
      'compositeFairing': instance.compositeFairing,
      'option1': instance.option1,
    };

CompositeFairing _$CompositeFairingFromJson(Map<String, dynamic> json) =>
    CompositeFairing(
      height: Height.fromJson(json['height'] as Map<String, dynamic>),
      diameter: Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompositeFairingToJson(CompositeFairing instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
    };

Engines _$EnginesFromJson(Map<String, dynamic> json) => Engines(
      isp: Isp.fromJson(json['isp'] as Map<String, dynamic>),
      thrustSeaLevel:
          Thrust.fromJson(json['thrustSeaLevel'] as Map<String, dynamic>),
      thrustVacuum:
          Thrust.fromJson(json['thrustVacuum'] as Map<String, dynamic>),
      number: json['number'] as int,
      type: json['type'] as String,
      version: json['version'] as String,
      layout: json['layout'] as String,
      engineLossMax: json['engineLossMax'] as int?,
      propellant1: json['propellant1'] as String,
      propellant2: json['propellant2'] as String,
      thrustToWeight: (json['thrustToWeight'] as num).toDouble(),
    );

Map<String, dynamic> _$EnginesToJson(Engines instance) => <String, dynamic>{
      'isp': instance.isp,
      'thrustSeaLevel': instance.thrustSeaLevel,
      'thrustVacuum': instance.thrustVacuum,
      'number': instance.number,
      'type': instance.type,
      'version': instance.version,
      'layout': instance.layout,
      'engineLossMax': instance.engineLossMax,
      'propellant1': instance.propellant1,
      'propellant2': instance.propellant2,
      'thrustToWeight': instance.thrustToWeight,
    };

Isp _$IspFromJson(Map<String, dynamic> json) => Isp(
      seaLevel: json['seaLevel'] as int,
      vacuum: json['vacuum'] as int,
    );

Map<String, dynamic> _$IspToJson(Isp instance) => <String, dynamic>{
      'seaLevel': instance.seaLevel,
      'vacuum': instance.vacuum,
    };

LandingLegs _$LandingLegsFromJson(Map<String, dynamic> json) => LandingLegs(
      number: json['number'] as int,
      material: json['material'] as String?,
    );

Map<String, dynamic> _$LandingLegsToJson(LandingLegs instance) =>
    <String, dynamic>{
      'number': instance.number,
      'material': instance.material,
    };

PayloadWeight _$PayloadWeightFromJson(Map<String, dynamic> json) =>
    PayloadWeight(
      id: json['id'] as String,
      name: json['name'] as String,
      kg: json['kg'] as int,
      lb: json['lb'] as int,
    );

Map<String, dynamic> _$PayloadWeightToJson(PayloadWeight instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kg': instance.kg,
      'lb': instance.lb,
    };
