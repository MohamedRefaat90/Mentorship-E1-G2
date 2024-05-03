// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_respons_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RocketModel _$RocketModelFromJson(Map<String, dynamic> json) => RocketModel(
      height: json['height'] == null
          ? null
          : Diameter.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
      mass: json['mass'] == null
          ? null
          : Mass.fromJson(json['mass'] as Map<String, dynamic>),
      firstStage: json['firstStage'] == null
          ? null
          : FirstStage.fromJson(json['firstStage'] as Map<String, dynamic>),
      secondStage: json['secondStage'] == null
          ? null
          : SecondStage.fromJson(json['secondStage'] as Map<String, dynamic>),
      engines: json['engines'] == null
          ? null
          : Engines.fromJson(json['engines'] as Map<String, dynamic>),
      landingLegs: json['landingLegs'] == null
          ? null
          : LandingLegs.fromJson(json['landingLegs'] as Map<String, dynamic>),
      payloadWeights: (json['payloadWeights'] as List<dynamic>?)
          ?.map((e) => PayloadWeights.fromJson(e as Map<String, dynamic>))
          .toList(),
      flickrImages: (json['flickrImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      active: json['active'] as bool?,
      stages: (json['stages'] as num?)?.toInt(),
      boosters: (json['boosters'] as num?)?.toInt(),
      costPerLaunch: (json['costPerLaunch'] as num?)?.toInt(),
      successRatePct: (json['successRatePct'] as num?)?.toInt(),
      firstFlight: json['firstFlight'] as String?,
      country: json['country'] as String?,
      company: json['company'] as String?,
      wikipedia: json['wikipedia'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$RocketModelToJson(RocketModel instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
      'mass': instance.mass,
      'firstStage': instance.firstStage,
      'secondStage': instance.secondStage,
      'engines': instance.engines,
      'landingLegs': instance.landingLegs,
      'payloadWeights': instance.payloadWeights,
      'flickrImages': instance.flickrImages,
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
      'id': instance.id,
    };

LandingLegs _$LandingLegsFromJson(Map<String, dynamic> json) => LandingLegs(
      number: (json['number'] as num?)?.toInt(),
      material: json['material'] as String?,
    );

Map<String, dynamic> _$LandingLegsToJson(LandingLegs instance) =>
    <String, dynamic>{
      'number': instance.number,
      'material': instance.material,
    };

PayloadWeights _$PayloadWeightsFromJson(Map<String, dynamic> json) =>
    PayloadWeights(
      id: json['id'] as String?,
      name: json['name'] as String?,
      kg: (json['kg'] as num?)?.toInt(),
      lb: (json['lb'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PayloadWeightsToJson(PayloadWeights instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kg': instance.kg,
      'lb': instance.lb,
    };

Diameter _$DiameterFromJson(Map<String, dynamic> json) => Diameter(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DiameterToJson(Diameter instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Mass _$MassFromJson(Map<String, dynamic> json) => Mass(
      kg: (json['kg'] as num?)?.toInt(),
      lb: (json['lb'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MassToJson(Mass instance) => <String, dynamic>{
      'kg': instance.kg,
      'lb': instance.lb,
    };

FirstStage _$FirstStageFromJson(Map<String, dynamic> json) => FirstStage(
      thrustSeaLevel: json['thrustSeaLevel'] as Map<String, dynamic>?,
      thrustVacuum: json['thrustVacuum'] as Map<String, dynamic>?,
      reusable: json['reusable'] as bool?,
      engines: (json['engines'] as num?)?.toInt(),
      fuelAmountTons: (json['fuelAmountTons'] as num?)?.toDouble(),
      burnTimeSec: (json['burnTimeSec'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FirstStageToJson(FirstStage instance) =>
    <String, dynamic>{
      'thrustSeaLevel': instance.thrustSeaLevel,
      'thrustVacuum': instance.thrustVacuum,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuelAmountTons': instance.fuelAmountTons,
      'burnTimeSec': instance.burnTimeSec,
    };

SecondStage _$SecondStageFromJson(Map<String, dynamic> json) => SecondStage(
      thrust: json['thrust'] as Map<String, dynamic>?,
      payloads: json['payloads'] as Map<String, dynamic>?,
      reusable: json['reusable'] as bool?,
      engines: (json['engines'] as num?)?.toInt(),
      fuelAmountTons: (json['fuelAmountTons'] as num?)?.toDouble(),
      burnTimeSec: (json['burnTimeSec'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SecondStageToJson(SecondStage instance) =>
    <String, dynamic>{
      'thrust': instance.thrust,
      'payloads': instance.payloads,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuelAmountTons': instance.fuelAmountTons,
      'burnTimeSec': instance.burnTimeSec,
    };

Engines _$EnginesFromJson(Map<String, dynamic> json) => Engines(
      isp: json['isp'] as Map<String, dynamic>?,
      thrustSeaLevel: json['thrustSeaLevel'] as Map<String, dynamic>?,
      thrustVacuum: json['thrustVacuum'] as Map<String, dynamic>?,
      number: (json['number'] as num?)?.toInt(),
      type: json['type'] as String?,
      version: json['version'] as String?,
      layout: json['layout'] as String?,
      engineLossMax: (json['engineLossMax'] as num?)?.toInt(),
      propellant1: json['propellant1'] as String?,
      propellant2: json['propellant2'] as String?,
      thrustToWeight: (json['thrustToWeight'] as num?)?.toInt(),
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
