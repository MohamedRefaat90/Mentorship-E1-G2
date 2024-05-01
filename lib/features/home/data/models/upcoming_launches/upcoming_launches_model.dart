import 'package:freezed_annotation/freezed_annotation.dart';
part 'upcoming_launches_model.g.dart';

@JsonSerializable()
class UpcomingLaunches {
  Links? links;
  bool? net;
  String? rocket;
  List<String>? payloads;
  String? launchpad;
  int? flightNumber;
  String? name;
  String? dateUtc;
  int? dateUnix;
  String? dateLocal;
  String? datePrecision;
  bool? upcoming;
  List<Cores>? cores;
  bool? autoUpdate;
  bool? tbd;
  String? launchLibraryId;
  String? id;

  UpcomingLaunches(
      {
      this.links,
      this.net,
      this.rocket,
      this.payloads,
      this.launchpad,
      this.flightNumber,
      this.name,
      this.dateUtc,
      this.dateUnix,
      this.dateLocal,
      this.datePrecision,
      this.upcoming,
      this.cores,
      this.autoUpdate,
      this.tbd,
      this.launchLibraryId,
      this.id}); 

  factory UpcomingLaunches.fromJson(Map<String, dynamic> json) =>
    _$UpcomingLaunchesFromJson(json); 

  Map<String, dynamic> toJson() => _$UpcomingLaunchesToJson(this); 
   
}

@JsonSerializable()
class Links {
  String? webcast;
  String? youtubeId;
  Patch? patch;

  Links(
      {
      this.webcast,
      this.youtubeId,
      });
  factory Links.fromJson(Map<String, dynamic> json) =>
    _$LinksFromJson(json); 

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Cores {
  String? core;
  int? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;

  Cores(
      {this.core,
      this.flight,
      this.gridfins,
      this.legs,
      this.reused,
      });
 factory Cores.fromJson(Map<String, dynamic> json) =>
    _$CoresFromJson(json); 

  Map<String, dynamic> toJson() => _$CoresToJson(this);
}
@JsonSerializable()
class Patch {
    String? small;
    String? large;

    Patch({
         this.small,
         this.large,
    });
 factory Patch.fromJson(Map<String, dynamic> json) =>
    _$PatchFromJson(json); 

  Map<String, dynamic> toJson() => _$PatchToJson(this);
}
