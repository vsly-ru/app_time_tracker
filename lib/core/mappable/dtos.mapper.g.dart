import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable/internals.dart';

import '../../features/track/data/DTO/track_dto.dart';


// === ALL STATICALLY REGISTERED MAPPERS ===

var _mappers = <BaseMapper>{
  // class mappers
  TrackDTOMapper._(),
  // enum mappers
  // custom mappers
};


// === GENERATED CLASS MAPPERS AND EXTENSIONS ===

class TrackDTOMapper extends BaseMapper<TrackDTO> {
  TrackDTOMapper._();

  @override Function get decoder => decode;
  TrackDTO decode(dynamic v) => const TrackDTOHooks().decode(v, (v) => checked(v, (Map<String, dynamic> map) => fromMap(map)));
  TrackDTO fromMap(Map<String, dynamic> map) => TrackDTO(appName: Mapper.i.$get(map, 'appName'), startTime: Mapper.i.$get(map, 'startTime'), finishTime: Mapper.i.$getOpt(map, 'finishTime'));

  @override Function get encoder => (TrackDTO v) => encode(v);
  dynamic encode(TrackDTO v) => const TrackDTOHooks().encode<TrackDTO>(v, (v) => toMap(v));
  Map<String, dynamic> toMap(TrackDTO t) => {'appName': Mapper.i.$enc(t.appName, 'appName'), 'startTime': Mapper.i.$enc(t.startTime, 'startTime'), 'finishTime': Mapper.i.$enc(t.finishTime, 'finishTime')};

  @override String stringify(TrackDTO self) => 'TrackDTO(appName: ${Mapper.asString(self.appName)}, startTime: ${Mapper.asString(self.startTime)}, finishTime: ${Mapper.asString(self.finishTime)})';
  @override int hash(TrackDTO self) => Mapper.hash(self.appName) ^ Mapper.hash(self.startTime) ^ Mapper.hash(self.finishTime);
  @override bool equals(TrackDTO self, TrackDTO other) => Mapper.isEqual(self.appName, other.appName) && Mapper.isEqual(self.startTime, other.startTime) && Mapper.isEqual(self.finishTime, other.finishTime);

  @override Function get typeFactory => (f) => f<TrackDTO>();
}

extension TrackDTOMapperExtension  on TrackDTO {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  TrackDTOCopyWith<TrackDTO> get copyWith => TrackDTOCopyWith(this, $identity);
}

abstract class TrackDTOCopyWith<$R> {
  factory TrackDTOCopyWith(TrackDTO value, Then<TrackDTO, $R> then) = _TrackDTOCopyWithImpl<$R>;
  $R call({String? appName, DateTime? startTime, DateTime? finishTime});
  $R apply(TrackDTO Function(TrackDTO) transform);
}

class _TrackDTOCopyWithImpl<$R> extends BaseCopyWith<TrackDTO, $R> implements TrackDTOCopyWith<$R> {
  _TrackDTOCopyWithImpl(TrackDTO value, Then<TrackDTO, $R> then) : super(value, then);

  @override $R call({String? appName, DateTime? startTime, Object? finishTime = $none}) => $then(TrackDTO(appName: appName ?? $value.appName, startTime: startTime ?? $value.startTime, finishTime: or(finishTime, $value.finishTime)));
}


// === GENERATED ENUM MAPPERS AND EXTENSIONS ===




// === GENERATED UTILITY CODE ===

class Mapper {
  Mapper._();

  static MapperContainer i = MapperContainer(_mappers);

  static T fromValue<T>(dynamic value) => i.fromValue<T>(value);
  static T fromMap<T>(Map<String, dynamic> map) => i.fromMap<T>(map);
  static T fromIterable<T>(Iterable<dynamic> iterable) => i.fromIterable<T>(iterable);
  static T fromJson<T>(String json) => i.fromJson<T>(json);

  static dynamic toValue(dynamic value) => i.toValue(value);
  static Map<String, dynamic> toMap(dynamic object) => i.toMap(object);
  static Iterable<dynamic> toIterable(dynamic object) => i.toIterable(object);
  static String toJson(dynamic object) => i.toJson(object);

  static bool isEqual(dynamic value, Object? other) => i.isEqual(value, other);
  static int hash(dynamic value) => i.hash(value);
  static String asString(dynamic value) => i.asString(value);

  static void use<T>(BaseMapper<T> mapper) => i.use<T>(mapper);
  static BaseMapper<T>? unuse<T>() => i.unuse<T>();
  static void useAll(List<BaseMapper> mappers) => i.useAll(mappers);

  static BaseMapper<T>? get<T>([Type? type]) => i.get<T>(type);
  static List<BaseMapper> getAll() => i.getAll();
}

mixin Mappable implements MappableMixin {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);

  @override
  String toString() {
    return _guard(() => Mapper.asString(this), super.toString);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            _guard(() => Mapper.isEqual(this, other), () => super == other));
  }

  @override
  int get hashCode {
    return _guard(() => Mapper.hash(this), () => super.hashCode);
  }

  T _guard<T>(T Function() fn, T Function() fallback) {
    try {
      return fn();
    } on MapperException catch (e) {
      if (e.isUnsupportedOrUnallowed()) {
        return fallback();
      } else {
        rethrow;
      }
    }
  }
}
