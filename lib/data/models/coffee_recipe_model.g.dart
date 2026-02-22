// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_recipe_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCoffeeRecipeModelCollection on Isar {
  IsarCollection<CoffeeRecipeModel> get coffeeRecipeModels => this.collection();
}

const CoffeeRecipeModelSchema = CollectionSchema(
  name: r'CoffeeRecipeModel',
  id: -7523609397870152748,
  properties: {
    r'brewMethod': PropertySchema(
      id: 0,
      name: r'brewMethod',
      type: IsarType.string,
    ),
    r'coffeeAmountInGrams': PropertySchema(
      id: 1,
      name: r'coffeeAmountInGrams',
      type: IsarType.double,
    ),
    r'domainId': PropertySchema(
      id: 2,
      name: r'domainId',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'stages': PropertySchema(
      id: 4,
      name: r'stages',
      type: IsarType.objectList,
      target: r'TimerStageModel',
    ),
    r'tastingNotes': PropertySchema(
      id: 5,
      name: r'tastingNotes',
      type: IsarType.string,
    ),
    r'waterTemperatureInCelsius': PropertySchema(
      id: 6,
      name: r'waterTemperatureInCelsius',
      type: IsarType.double,
    )
  },
  estimateSize: _coffeeRecipeModelEstimateSize,
  serialize: _coffeeRecipeModelSerialize,
  deserialize: _coffeeRecipeModelDeserialize,
  deserializeProp: _coffeeRecipeModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'domainId': IndexSchema(
      id: -9138809277110658179,
      name: r'domainId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'domainId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'TimerStageModel': TimerStageModelSchema},
  getId: _coffeeRecipeModelGetId,
  getLinks: _coffeeRecipeModelGetLinks,
  attach: _coffeeRecipeModelAttach,
  version: '3.1.0+1',
);

int _coffeeRecipeModelEstimateSize(
  CoffeeRecipeModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.brewMethod;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.domainId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.stages;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[TimerStageModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              TimerStageModelSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.tastingNotes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _coffeeRecipeModelSerialize(
  CoffeeRecipeModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.brewMethod);
  writer.writeDouble(offsets[1], object.coffeeAmountInGrams);
  writer.writeString(offsets[2], object.domainId);
  writer.writeString(offsets[3], object.name);
  writer.writeObjectList<TimerStageModel>(
    offsets[4],
    allOffsets,
    TimerStageModelSchema.serialize,
    object.stages,
  );
  writer.writeString(offsets[5], object.tastingNotes);
  writer.writeDouble(offsets[6], object.waterTemperatureInCelsius);
}

CoffeeRecipeModel _coffeeRecipeModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CoffeeRecipeModel();
  object.brewMethod = reader.readStringOrNull(offsets[0]);
  object.coffeeAmountInGrams = reader.readDoubleOrNull(offsets[1]);
  object.domainId = reader.readStringOrNull(offsets[2]);
  object.id = id;
  object.name = reader.readStringOrNull(offsets[3]);
  object.stages = reader.readObjectList<TimerStageModel>(
    offsets[4],
    TimerStageModelSchema.deserialize,
    allOffsets,
    TimerStageModel(),
  );
  object.tastingNotes = reader.readStringOrNull(offsets[5]);
  object.waterTemperatureInCelsius = reader.readDoubleOrNull(offsets[6]);
  return object;
}

P _coffeeRecipeModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readObjectList<TimerStageModel>(
        offset,
        TimerStageModelSchema.deserialize,
        allOffsets,
        TimerStageModel(),
      )) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _coffeeRecipeModelGetId(CoffeeRecipeModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _coffeeRecipeModelGetLinks(
    CoffeeRecipeModel object) {
  return [];
}

void _coffeeRecipeModelAttach(
    IsarCollection<dynamic> col, Id id, CoffeeRecipeModel object) {
  object.id = id;
}

extension CoffeeRecipeModelByIndex on IsarCollection<CoffeeRecipeModel> {
  Future<CoffeeRecipeModel?> getByDomainId(String? domainId) {
    return getByIndex(r'domainId', [domainId]);
  }

  CoffeeRecipeModel? getByDomainIdSync(String? domainId) {
    return getByIndexSync(r'domainId', [domainId]);
  }

  Future<bool> deleteByDomainId(String? domainId) {
    return deleteByIndex(r'domainId', [domainId]);
  }

  bool deleteByDomainIdSync(String? domainId) {
    return deleteByIndexSync(r'domainId', [domainId]);
  }

  Future<List<CoffeeRecipeModel?>> getAllByDomainId(
      List<String?> domainIdValues) {
    final values = domainIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'domainId', values);
  }

  List<CoffeeRecipeModel?> getAllByDomainIdSync(List<String?> domainIdValues) {
    final values = domainIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'domainId', values);
  }

  Future<int> deleteAllByDomainId(List<String?> domainIdValues) {
    final values = domainIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'domainId', values);
  }

  int deleteAllByDomainIdSync(List<String?> domainIdValues) {
    final values = domainIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'domainId', values);
  }

  Future<Id> putByDomainId(CoffeeRecipeModel object) {
    return putByIndex(r'domainId', object);
  }

  Id putByDomainIdSync(CoffeeRecipeModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'domainId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByDomainId(List<CoffeeRecipeModel> objects) {
    return putAllByIndex(r'domainId', objects);
  }

  List<Id> putAllByDomainIdSync(List<CoffeeRecipeModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'domainId', objects, saveLinks: saveLinks);
  }
}

extension CoffeeRecipeModelQueryWhereSort
    on QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QWhere> {
  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CoffeeRecipeModelQueryWhere
    on QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QWhereClause> {
  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterWhereClause>
      idBetween(
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

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterWhereClause>
      domainIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'domainId',
        value: [null],
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterWhereClause>
      domainIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'domainId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterWhereClause>
      domainIdEqualTo(String? domainId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'domainId',
        value: [domainId],
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterWhereClause>
      domainIdNotEqualTo(String? domainId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'domainId',
              lower: [],
              upper: [domainId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'domainId',
              lower: [domainId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'domainId',
              lower: [domainId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'domainId',
              lower: [],
              upper: [domainId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CoffeeRecipeModelQueryFilter
    on QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QFilterCondition> {
  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'brewMethod',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'brewMethod',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brewMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brewMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brewMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brewMethod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'brewMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'brewMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'brewMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'brewMethod',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brewMethod',
        value: '',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      brewMethodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'brewMethod',
        value: '',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      coffeeAmountInGramsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'coffeeAmountInGrams',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      coffeeAmountInGramsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'coffeeAmountInGrams',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      coffeeAmountInGramsEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'coffeeAmountInGrams',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      coffeeAmountInGramsGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'coffeeAmountInGrams',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      coffeeAmountInGramsLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'coffeeAmountInGrams',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      coffeeAmountInGramsBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'coffeeAmountInGrams',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'domainId',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'domainId',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domainId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'domainId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'domainId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'domainId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'domainId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'domainId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'domainId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'domainId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domainId',
        value: '',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      domainIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'domainId',
        value: '',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      stagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stages',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      stagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stages',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      stagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stages',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      stagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stages',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      stagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stages',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      stagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stages',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      stagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stages',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      stagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stages',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tastingNotes',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tastingNotes',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tastingNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tastingNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tastingNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tastingNotes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tastingNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tastingNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tastingNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tastingNotes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tastingNotes',
        value: '',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      tastingNotesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tastingNotes',
        value: '',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      waterTemperatureInCelsiusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'waterTemperatureInCelsius',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      waterTemperatureInCelsiusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'waterTemperatureInCelsius',
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      waterTemperatureInCelsiusEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waterTemperatureInCelsius',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      waterTemperatureInCelsiusGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'waterTemperatureInCelsius',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      waterTemperatureInCelsiusLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'waterTemperatureInCelsius',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      waterTemperatureInCelsiusBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'waterTemperatureInCelsius',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension CoffeeRecipeModelQueryObject
    on QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QFilterCondition> {
  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterFilterCondition>
      stagesElement(FilterQuery<TimerStageModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'stages');
    });
  }
}

extension CoffeeRecipeModelQueryLinks
    on QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QFilterCondition> {}

extension CoffeeRecipeModelQuerySortBy
    on QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QSortBy> {
  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByBrewMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brewMethod', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByBrewMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brewMethod', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByCoffeeAmountInGrams() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coffeeAmountInGrams', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByCoffeeAmountInGramsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coffeeAmountInGrams', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByDomainId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainId', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByDomainIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainId', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByTastingNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tastingNotes', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByTastingNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tastingNotes', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByWaterTemperatureInCelsius() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waterTemperatureInCelsius', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      sortByWaterTemperatureInCelsiusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waterTemperatureInCelsius', Sort.desc);
    });
  }
}

extension CoffeeRecipeModelQuerySortThenBy
    on QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QSortThenBy> {
  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByBrewMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brewMethod', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByBrewMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brewMethod', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByCoffeeAmountInGrams() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coffeeAmountInGrams', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByCoffeeAmountInGramsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coffeeAmountInGrams', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByDomainId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainId', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByDomainIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainId', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByTastingNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tastingNotes', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByTastingNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tastingNotes', Sort.desc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByWaterTemperatureInCelsius() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waterTemperatureInCelsius', Sort.asc);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QAfterSortBy>
      thenByWaterTemperatureInCelsiusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waterTemperatureInCelsius', Sort.desc);
    });
  }
}

extension CoffeeRecipeModelQueryWhereDistinct
    on QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QDistinct> {
  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QDistinct>
      distinctByBrewMethod({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brewMethod', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QDistinct>
      distinctByCoffeeAmountInGrams() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'coffeeAmountInGrams');
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QDistinct>
      distinctByDomainId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'domainId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QDistinct>
      distinctByTastingNotes({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tastingNotes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QDistinct>
      distinctByWaterTemperatureInCelsius() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'waterTemperatureInCelsius');
    });
  }
}

extension CoffeeRecipeModelQueryProperty
    on QueryBuilder<CoffeeRecipeModel, CoffeeRecipeModel, QQueryProperty> {
  QueryBuilder<CoffeeRecipeModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CoffeeRecipeModel, String?, QQueryOperations>
      brewMethodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brewMethod');
    });
  }

  QueryBuilder<CoffeeRecipeModel, double?, QQueryOperations>
      coffeeAmountInGramsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'coffeeAmountInGrams');
    });
  }

  QueryBuilder<CoffeeRecipeModel, String?, QQueryOperations>
      domainIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'domainId');
    });
  }

  QueryBuilder<CoffeeRecipeModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CoffeeRecipeModel, List<TimerStageModel>?, QQueryOperations>
      stagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stages');
    });
  }

  QueryBuilder<CoffeeRecipeModel, String?, QQueryOperations>
      tastingNotesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tastingNotes');
    });
  }

  QueryBuilder<CoffeeRecipeModel, double?, QQueryOperations>
      waterTemperatureInCelsiusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'waterTemperatureInCelsius');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TimerStageModelSchema = Schema(
  name: r'TimerStageModel',
  id: -8617244977965947866,
  properties: {
    r'durationInSeconds': PropertySchema(
      id: 0,
      name: r'durationInSeconds',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'waterAmountInMl': PropertySchema(
      id: 2,
      name: r'waterAmountInMl',
      type: IsarType.long,
    )
  },
  estimateSize: _timerStageModelEstimateSize,
  serialize: _timerStageModelSerialize,
  deserialize: _timerStageModelDeserialize,
  deserializeProp: _timerStageModelDeserializeProp,
);

int _timerStageModelEstimateSize(
  TimerStageModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _timerStageModelSerialize(
  TimerStageModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.durationInSeconds);
  writer.writeString(offsets[1], object.name);
  writer.writeLong(offsets[2], object.waterAmountInMl);
}

TimerStageModel _timerStageModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TimerStageModel();
  object.durationInSeconds = reader.readLongOrNull(offsets[0]);
  object.name = reader.readStringOrNull(offsets[1]);
  object.waterAmountInMl = reader.readLongOrNull(offsets[2]);
  return object;
}

P _timerStageModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TimerStageModelQueryFilter
    on QueryBuilder<TimerStageModel, TimerStageModel, QFilterCondition> {
  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      durationInSecondsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'durationInSeconds',
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      durationInSecondsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'durationInSeconds',
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      durationInSecondsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationInSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      durationInSecondsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'durationInSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      durationInSecondsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'durationInSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      durationInSecondsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'durationInSeconds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      waterAmountInMlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'waterAmountInMl',
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      waterAmountInMlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'waterAmountInMl',
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      waterAmountInMlEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waterAmountInMl',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      waterAmountInMlGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'waterAmountInMl',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      waterAmountInMlLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'waterAmountInMl',
        value: value,
      ));
    });
  }

  QueryBuilder<TimerStageModel, TimerStageModel, QAfterFilterCondition>
      waterAmountInMlBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'waterAmountInMl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TimerStageModelQueryObject
    on QueryBuilder<TimerStageModel, TimerStageModel, QFilterCondition> {}
