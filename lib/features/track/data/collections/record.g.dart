// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRecordCollection on Isar {
  IsarCollection<Record> get records => this.collection();
}

const RecordSchema = CollectionSchema(
  name: r'Record',
  id: -5560585825827271694,
  properties: {
    r'appName': PropertySchema(
      id: 0,
      name: r'appName',
      type: IsarType.string,
    ),
    r'sinceLastRecord': PropertySchema(
      id: 1,
      name: r'sinceLastRecord',
      type: IsarType.long,
    ),
    r'timestamp': PropertySchema(
      id: 2,
      name: r'timestamp',
      type: IsarType.long,
    )
  },
  estimateSize: _recordEstimateSize,
  serialize: _recordSerialize,
  deserialize: _recordDeserialize,
  deserializeProp: _recordDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _recordGetId,
  getLinks: _recordGetLinks,
  attach: _recordAttach,
  version: '3.1.0+1',
);

int _recordEstimateSize(
  Record object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.appName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _recordSerialize(
  Record object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.appName);
  writer.writeLong(offsets[1], object.sinceLastRecord);
  writer.writeLong(offsets[2], object.timestamp);
}

Record _recordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Record();
  object.appName = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.sinceLastRecord = reader.readLongOrNull(offsets[1]);
  object.timestamp = reader.readLongOrNull(offsets[2]);
  return object;
}

P _recordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _recordGetId(Record object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _recordGetLinks(Record object) {
  return [];
}

void _recordAttach(IsarCollection<dynamic> col, Id id, Record object) {
  object.id = id;
}

extension RecordQueryWhereSort on QueryBuilder<Record, Record, QWhere> {
  QueryBuilder<Record, Record, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RecordQueryWhere on QueryBuilder<Record, Record, QWhereClause> {
  QueryBuilder<Record, Record, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Record, Record, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Record, Record, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Record, Record, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RecordQueryFilter on QueryBuilder<Record, Record, QFilterCondition> {
  QueryBuilder<Record, Record, QAfterFilterCondition> appNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'appName',
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'appName',
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'appName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'appName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appName',
        value: '',
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> appNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'appName',
        value: '',
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> sinceLastRecordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sinceLastRecord',
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition>
      sinceLastRecordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sinceLastRecord',
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> sinceLastRecordEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sinceLastRecord',
        value: value,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition>
      sinceLastRecordGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sinceLastRecord',
        value: value,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> sinceLastRecordLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sinceLastRecord',
        value: value,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> sinceLastRecordBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sinceLastRecord',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> timestampIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timestamp',
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> timestampIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timestamp',
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> timestampEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> timestampGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> timestampLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<Record, Record, QAfterFilterCondition> timestampBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RecordQueryObject on QueryBuilder<Record, Record, QFilterCondition> {}

extension RecordQueryLinks on QueryBuilder<Record, Record, QFilterCondition> {}

extension RecordQuerySortBy on QueryBuilder<Record, Record, QSortBy> {
  QueryBuilder<Record, Record, QAfterSortBy> sortByAppName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.asc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> sortByAppNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.desc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> sortBySinceLastRecord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sinceLastRecord', Sort.asc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> sortBySinceLastRecordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sinceLastRecord', Sort.desc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension RecordQuerySortThenBy on QueryBuilder<Record, Record, QSortThenBy> {
  QueryBuilder<Record, Record, QAfterSortBy> thenByAppName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.asc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> thenByAppNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.desc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> thenBySinceLastRecord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sinceLastRecord', Sort.asc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> thenBySinceLastRecordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sinceLastRecord', Sort.desc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<Record, Record, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension RecordQueryWhereDistinct on QueryBuilder<Record, Record, QDistinct> {
  QueryBuilder<Record, Record, QDistinct> distinctByAppName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Record, Record, QDistinct> distinctBySinceLastRecord() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sinceLastRecord');
    });
  }

  QueryBuilder<Record, Record, QDistinct> distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }
}

extension RecordQueryProperty on QueryBuilder<Record, Record, QQueryProperty> {
  QueryBuilder<Record, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Record, String?, QQueryOperations> appNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appName');
    });
  }

  QueryBuilder<Record, int?, QQueryOperations> sinceLastRecordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sinceLastRecord');
    });
  }

  QueryBuilder<Record, int?, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }
}
