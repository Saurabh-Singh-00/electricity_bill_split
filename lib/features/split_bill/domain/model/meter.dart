import 'package:freezed_annotation/freezed_annotation.dart';

part 'meter.freezed.dart';
part 'meter.g.dart';

enum MeterType {
  main,
  sub,
}

@freezed
class Meter with _$Meter {
  const factory Meter({
    required String id,
    required String name,
    required int unitConsumed,
    required MeterType type,
  }) = _Meter;

  factory Meter.fromJson(Map<String, dynamic> json) =>
      _$MeterFromJson(json);
}
