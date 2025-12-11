// This is a generated file - do not edit.
//
// Generated from test.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'test.pb.dart' as $0;

export 'test.pb.dart';

@$pb.GrpcServiceName('tutorial.CutListService')
class CutListServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  CutListServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.res_getUserByUuid> getUserByUuid(
    $0.req_getUserByUuid request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getUserByUuid, request, options: options);
  }

  $grpc.ResponseStream<$0.res_getCutList> getCutList(
    $0.req_getCutList request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$getCutList, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.res_getCutHistory> getHistory(
    $0.req_getCutHistory request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$getHistory, $async.Stream.fromIterable([request]),
        options: options);
  }

  // method descriptors

  static final _$getUserByUuid =
      $grpc.ClientMethod<$0.req_getUserByUuid, $0.res_getUserByUuid>(
          '/tutorial.CutListService/GetUserByUuid',
          ($0.req_getUserByUuid value) => value.writeToBuffer(),
          $0.res_getUserByUuid.fromBuffer);
  static final _$getCutList =
      $grpc.ClientMethod<$0.req_getCutList, $0.res_getCutList>(
          '/tutorial.CutListService/GetCutList',
          ($0.req_getCutList value) => value.writeToBuffer(),
          $0.res_getCutList.fromBuffer);
  static final _$getHistory =
      $grpc.ClientMethod<$0.req_getCutHistory, $0.res_getCutHistory>(
          '/tutorial.CutListService/GetHistory',
          ($0.req_getCutHistory value) => value.writeToBuffer(),
          $0.res_getCutHistory.fromBuffer);
}

@$pb.GrpcServiceName('tutorial.CutListService')
abstract class CutListServiceBase extends $grpc.Service {
  $core.String get $name => 'tutorial.CutListService';

  CutListServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.req_getUserByUuid, $0.res_getUserByUuid>(
        'GetUserByUuid',
        getUserByUuid_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.req_getUserByUuid.fromBuffer(value),
        ($0.res_getUserByUuid value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.req_getCutList, $0.res_getCutList>(
        'GetCutList',
        getCutList_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.req_getCutList.fromBuffer(value),
        ($0.res_getCutList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.req_getCutHistory, $0.res_getCutHistory>(
        'GetHistory',
        getHistory_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.req_getCutHistory.fromBuffer(value),
        ($0.res_getCutHistory value) => value.writeToBuffer()));
  }

  $async.Future<$0.res_getUserByUuid> getUserByUuid_Pre($grpc.ServiceCall $call,
      $async.Future<$0.req_getUserByUuid> $request) async {
    return getUserByUuid($call, await $request);
  }

  $async.Future<$0.res_getUserByUuid> getUserByUuid(
      $grpc.ServiceCall call, $0.req_getUserByUuid request);

  $async.Stream<$0.res_getCutList> getCutList_Pre($grpc.ServiceCall $call,
      $async.Future<$0.req_getCutList> $request) async* {
    yield* getCutList($call, await $request);
  }

  $async.Stream<$0.res_getCutList> getCutList(
      $grpc.ServiceCall call, $0.req_getCutList request);

  $async.Stream<$0.res_getCutHistory> getHistory_Pre($grpc.ServiceCall $call,
      $async.Future<$0.req_getCutHistory> $request) async* {
    yield* getHistory($call, await $request);
  }

  $async.Stream<$0.res_getCutHistory> getHistory(
      $grpc.ServiceCall call, $0.req_getCutHistory request);
}

@$pb.GrpcServiceName('tutorial.EventListService')
class EventListServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  EventListServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.res_getUserByUuid> getUserByUuid(
    $0.req_getUserByUuid request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getUserByUuid, request, options: options);
  }

  $grpc.ResponseStream<$0.res_getEventList> getEventList(
    $0.req_getEventList request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$getEventList, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.res_getEventHistory> getHistory(
    $0.req_getEventHistory request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$getHistory, $async.Stream.fromIterable([request]),
        options: options);
  }

  // method descriptors

  static final _$getUserByUuid =
      $grpc.ClientMethod<$0.req_getUserByUuid, $0.res_getUserByUuid>(
          '/tutorial.EventListService/GetUserByUuid',
          ($0.req_getUserByUuid value) => value.writeToBuffer(),
          $0.res_getUserByUuid.fromBuffer);
  static final _$getEventList =
      $grpc.ClientMethod<$0.req_getEventList, $0.res_getEventList>(
          '/tutorial.EventListService/GetEventList',
          ($0.req_getEventList value) => value.writeToBuffer(),
          $0.res_getEventList.fromBuffer);
  static final _$getHistory =
      $grpc.ClientMethod<$0.req_getEventHistory, $0.res_getEventHistory>(
          '/tutorial.EventListService/GetHistory',
          ($0.req_getEventHistory value) => value.writeToBuffer(),
          $0.res_getEventHistory.fromBuffer);
}

@$pb.GrpcServiceName('tutorial.EventListService')
abstract class EventListServiceBase extends $grpc.Service {
  $core.String get $name => 'tutorial.EventListService';

  EventListServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.req_getUserByUuid, $0.res_getUserByUuid>(
        'GetUserByUuid',
        getUserByUuid_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.req_getUserByUuid.fromBuffer(value),
        ($0.res_getUserByUuid value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.req_getEventList, $0.res_getEventList>(
        'GetEventList',
        getEventList_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.req_getEventList.fromBuffer(value),
        ($0.res_getEventList value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.req_getEventHistory, $0.res_getEventHistory>(
            'GetHistory',
            getHistory_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.req_getEventHistory.fromBuffer(value),
            ($0.res_getEventHistory value) => value.writeToBuffer()));
  }

  $async.Future<$0.res_getUserByUuid> getUserByUuid_Pre($grpc.ServiceCall $call,
      $async.Future<$0.req_getUserByUuid> $request) async {
    return getUserByUuid($call, await $request);
  }

  $async.Future<$0.res_getUserByUuid> getUserByUuid(
      $grpc.ServiceCall call, $0.req_getUserByUuid request);

  $async.Stream<$0.res_getEventList> getEventList_Pre($grpc.ServiceCall $call,
      $async.Future<$0.req_getEventList> $request) async* {
    yield* getEventList($call, await $request);
  }

  $async.Stream<$0.res_getEventList> getEventList(
      $grpc.ServiceCall call, $0.req_getEventList request);

  $async.Stream<$0.res_getEventHistory> getHistory_Pre($grpc.ServiceCall $call,
      $async.Future<$0.req_getEventHistory> $request) async* {
    yield* getHistory($call, await $request);
  }

  $async.Stream<$0.res_getEventHistory> getHistory(
      $grpc.ServiceCall call, $0.req_getEventHistory request);
}
