// This is a generated file - do not edit.
//
// Generated from test.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class req_getUserByUuid extends $pb.GeneratedMessage {
  factory req_getUserByUuid({
    $core.String? uuid,
  }) {
    final result = create();
    if (uuid != null) result.uuid = uuid;
    return result;
  }

  req_getUserByUuid._();

  factory req_getUserByUuid.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory req_getUserByUuid.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'req_getUserByUuid',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tutorial'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  req_getUserByUuid clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  req_getUserByUuid copyWith(void Function(req_getUserByUuid) updates) =>
      super.copyWith((message) => updates(message as req_getUserByUuid))
          as req_getUserByUuid;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static req_getUserByUuid create() => req_getUserByUuid._();
  @$core.override
  req_getUserByUuid createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static req_getUserByUuid getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<req_getUserByUuid>(create);
  static req_getUserByUuid? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => $_clearField(1);
}

class res_getUserByUuid extends $pb.GeneratedMessage {
  factory res_getUserByUuid({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  res_getUserByUuid._();

  factory res_getUserByUuid.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory res_getUserByUuid.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'res_getUserByUuid',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tutorial'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  res_getUserByUuid clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  res_getUserByUuid copyWith(void Function(res_getUserByUuid) updates) =>
      super.copyWith((message) => updates(message as res_getUserByUuid))
          as res_getUserByUuid;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static res_getUserByUuid create() => res_getUserByUuid._();
  @$core.override
  res_getUserByUuid createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static res_getUserByUuid getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<res_getUserByUuid>(create);
  static res_getUserByUuid? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class req_getCutList extends $pb.GeneratedMessage {
  factory req_getCutList({
    $fixnum.Int64? userId,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    return result;
  }

  req_getCutList._();

  factory req_getCutList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory req_getCutList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'req_getCutList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tutorial'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  req_getCutList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  req_getCutList copyWith(void Function(req_getCutList) updates) =>
      super.copyWith((message) => updates(message as req_getCutList))
          as req_getCutList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static req_getCutList create() => req_getCutList._();
  @$core.override
  req_getCutList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static req_getCutList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<req_getCutList>(create);
  static req_getCutList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
}

class res_getCutList extends $pb.GeneratedMessage {
  factory res_getCutList({
    $core.bool? thisIsCut,
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? color,
    $fixnum.Int64? count,
    $fixnum.Int64? limit,
    $fixnum.Int64? lateTime,
    $fixnum.Int64? lateCount,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (thisIsCut != null) result.thisIsCut = thisIsCut;
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (color != null) result.color = color;
    if (count != null) result.count = count;
    if (limit != null) result.limit = limit;
    if (lateTime != null) result.lateTime = lateTime;
    if (lateCount != null) result.lateCount = lateCount;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  res_getCutList._();

  factory res_getCutList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory res_getCutList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'res_getCutList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tutorial'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'thisIsCut')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'color')
    ..aInt64(5, _omitFieldNames ? '' : 'count')
    ..aInt64(6, _omitFieldNames ? '' : 'limit')
    ..aInt64(7, _omitFieldNames ? '' : 'lateTime')
    ..aInt64(8, _omitFieldNames ? '' : 'lateCount')
    ..aOS(9, _omitFieldNames ? '' : 'createdAt')
    ..aOS(10, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  res_getCutList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  res_getCutList copyWith(void Function(res_getCutList) updates) =>
      super.copyWith((message) => updates(message as res_getCutList))
          as res_getCutList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static res_getCutList create() => res_getCutList._();
  @$core.override
  res_getCutList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static res_getCutList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<res_getCutList>(create);
  static res_getCutList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get thisIsCut => $_getBF(0);
  @$pb.TagNumber(1)
  set thisIsCut($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasThisIsCut() => $_has(0);
  @$pb.TagNumber(1)
  void clearThisIsCut() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get color => $_getSZ(3);
  @$pb.TagNumber(4)
  set color($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearColor() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get count => $_getI64(4);
  @$pb.TagNumber(5)
  set count($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get limit => $_getI64(5);
  @$pb.TagNumber(6)
  set limit($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearLimit() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get lateTime => $_getI64(6);
  @$pb.TagNumber(7)
  set lateTime($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLateTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearLateTime() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get lateCount => $_getI64(7);
  @$pb.TagNumber(8)
  set lateCount($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasLateCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearLateCount() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get createdAt => $_getSZ(8);
  @$pb.TagNumber(9)
  set createdAt($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatedAt() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get updatedAt => $_getSZ(9);
  @$pb.TagNumber(10)
  set updatedAt($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearUpdatedAt() => $_clearField(10);
}

class req_getCutHistory extends $pb.GeneratedMessage {
  factory req_getCutHistory({
    $fixnum.Int64? userId,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    return result;
  }

  req_getCutHistory._();

  factory req_getCutHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory req_getCutHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'req_getCutHistory',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tutorial'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  req_getCutHistory clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  req_getCutHistory copyWith(void Function(req_getCutHistory) updates) =>
      super.copyWith((message) => updates(message as req_getCutHistory))
          as req_getCutHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static req_getCutHistory create() => req_getCutHistory._();
  @$core.override
  req_getCutHistory createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static req_getCutHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<req_getCutHistory>(create);
  static req_getCutHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
}

class res_getCutHistory extends $pb.GeneratedMessage {
  factory res_getCutHistory({
    $fixnum.Int64? id,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  res_getCutHistory._();

  factory res_getCutHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory res_getCutHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'res_getCutHistory',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tutorial'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  res_getCutHistory clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  res_getCutHistory copyWith(void Function(res_getCutHistory) updates) =>
      super.copyWith((message) => updates(message as res_getCutHistory))
          as res_getCutHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static res_getCutHistory create() => res_getCutHistory._();
  @$core.override
  res_getCutHistory createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static res_getCutHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<res_getCutHistory>(create);
  static res_getCutHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get updatedAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set updatedAt($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUpdatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdatedAt() => $_clearField(2);
}

class req_getEventList extends $pb.GeneratedMessage {
  factory req_getEventList({
    $fixnum.Int64? userId,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    return result;
  }

  req_getEventList._();

  factory req_getEventList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory req_getEventList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'req_getEventList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tutorial'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  req_getEventList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  req_getEventList copyWith(void Function(req_getEventList) updates) =>
      super.copyWith((message) => updates(message as req_getEventList))
          as req_getEventList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static req_getEventList create() => req_getEventList._();
  @$core.override
  req_getEventList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static req_getEventList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<req_getEventList>(create);
  static req_getEventList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
}

class res_getEventList extends $pb.GeneratedMessage {
  factory res_getEventList({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? color,
    $fixnum.Int64? count,
    $fixnum.Int64? limit,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (color != null) result.color = color;
    if (count != null) result.count = count;
    if (limit != null) result.limit = limit;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  res_getEventList._();

  factory res_getEventList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory res_getEventList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'res_getEventList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tutorial'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'color')
    ..aInt64(4, _omitFieldNames ? '' : 'count')
    ..aInt64(5, _omitFieldNames ? '' : 'limit')
    ..aOS(6, _omitFieldNames ? '' : 'createdAt')
    ..aOS(7, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  res_getEventList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  res_getEventList copyWith(void Function(res_getEventList) updates) =>
      super.copyWith((message) => updates(message as res_getEventList))
          as res_getEventList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static res_getEventList create() => res_getEventList._();
  @$core.override
  res_getEventList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static res_getEventList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<res_getEventList>(create);
  static res_getEventList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(3);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get limit => $_getI64(4);
  @$pb.TagNumber(5)
  set limit($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLimit() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimit() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get createdAt => $_getSZ(5);
  @$pb.TagNumber(6)
  set createdAt($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get updatedAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set updatedAt($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAt() => $_clearField(7);
}

class req_getEventHistory extends $pb.GeneratedMessage {
  factory req_getEventHistory({
    $fixnum.Int64? userId,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    return result;
  }

  req_getEventHistory._();

  factory req_getEventHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory req_getEventHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'req_getEventHistory',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tutorial'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  req_getEventHistory clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  req_getEventHistory copyWith(void Function(req_getEventHistory) updates) =>
      super.copyWith((message) => updates(message as req_getEventHistory))
          as req_getEventHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static req_getEventHistory create() => req_getEventHistory._();
  @$core.override
  req_getEventHistory createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static req_getEventHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<req_getEventHistory>(create);
  static req_getEventHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
}

class res_getEventHistory extends $pb.GeneratedMessage {
  factory res_getEventHistory({
    $fixnum.Int64? id,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  res_getEventHistory._();

  factory res_getEventHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory res_getEventHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'res_getEventHistory',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tutorial'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  res_getEventHistory clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  res_getEventHistory copyWith(void Function(res_getEventHistory) updates) =>
      super.copyWith((message) => updates(message as res_getEventHistory))
          as res_getEventHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static res_getEventHistory create() => res_getEventHistory._();
  @$core.override
  res_getEventHistory createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static res_getEventHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<res_getEventHistory>(create);
  static res_getEventHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get updatedAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set updatedAt($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUpdatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdatedAt() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
