// This is a generated file - do not edit.
//
// Generated from test.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use req_getUserByUuidDescriptor instead')
const req_getUserByUuid$json = {
  '1': 'req_getUserByUuid',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `req_getUserByUuid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List req_getUserByUuidDescriptor = $convert
    .base64Decode('ChFyZXFfZ2V0VXNlckJ5VXVpZBISCgR1dWlkGAEgASgJUgR1dWlk');

@$core.Deprecated('Use res_getUserByUuidDescriptor instead')
const res_getUserByUuid$json = {
  '1': 'res_getUserByUuid',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `res_getUserByUuid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List res_getUserByUuidDescriptor =
    $convert.base64Decode('ChFyZXNfZ2V0VXNlckJ5VXVpZBIOCgJpZBgBIAEoA1ICaWQ=');

@$core.Deprecated('Use req_getCutListDescriptor instead')
const req_getCutList$json = {
  '1': 'req_getCutList',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `req_getCutList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List req_getCutListDescriptor = $convert
    .base64Decode('Cg5yZXFfZ2V0Q3V0TGlzdBIXCgd1c2VyX2lkGAEgASgDUgZ1c2VySWQ=');

@$core.Deprecated('Use res_getCutListDescriptor instead')
const res_getCutList$json = {
  '1': 'res_getCutList',
  '2': [
    {'1': 'this_is_cut', '3': 1, '4': 1, '5': 8, '10': 'thisIsCut'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'color', '3': 4, '4': 1, '5': 9, '10': 'color'},
    {'1': 'count', '3': 5, '4': 1, '5': 3, '10': 'count'},
    {'1': 'limit', '3': 6, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'late_time', '3': 7, '4': 1, '5': 3, '10': 'lateTime'},
    {'1': 'late_count', '3': 8, '4': 1, '5': 3, '10': 'lateCount'},
    {'1': 'created_at', '3': 9, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 10, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `res_getCutList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List res_getCutListDescriptor = $convert.base64Decode(
    'Cg5yZXNfZ2V0Q3V0TGlzdBIeCgt0aGlzX2lzX2N1dBgBIAEoCFIJdGhpc0lzQ3V0Eg4KAmlkGA'
    'IgASgDUgJpZBISCgRuYW1lGAMgASgJUgRuYW1lEhQKBWNvbG9yGAQgASgJUgVjb2xvchIUCgVj'
    'b3VudBgFIAEoA1IFY291bnQSFAoFbGltaXQYBiABKANSBWxpbWl0EhsKCWxhdGVfdGltZRgHIA'
    'EoA1IIbGF0ZVRpbWUSHQoKbGF0ZV9jb3VudBgIIAEoA1IJbGF0ZUNvdW50Eh0KCmNyZWF0ZWRf'
    'YXQYCSABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAogASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use req_getCutHistoryDescriptor instead')
const req_getCutHistory$json = {
  '1': 'req_getCutHistory',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `req_getCutHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List req_getCutHistoryDescriptor = $convert.base64Decode(
    'ChFyZXFfZ2V0Q3V0SGlzdG9yeRIXCgd1c2VyX2lkGAEgASgDUgZ1c2VySWQ=');

@$core.Deprecated('Use res_getCutHistoryDescriptor instead')
const res_getCutHistory$json = {
  '1': 'res_getCutHistory',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'updated_at', '3': 2, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `res_getCutHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List res_getCutHistoryDescriptor = $convert.base64Decode(
    'ChFyZXNfZ2V0Q3V0SGlzdG9yeRIOCgJpZBgBIAEoA1ICaWQSHQoKdXBkYXRlZF9hdBgCIAEoCV'
    'IJdXBkYXRlZEF0');

@$core.Deprecated('Use req_getEventListDescriptor instead')
const req_getEventList$json = {
  '1': 'req_getEventList',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `req_getEventList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List req_getEventListDescriptor = $convert.base64Decode(
    'ChByZXFfZ2V0RXZlbnRMaXN0EhcKB3VzZXJfaWQYASABKANSBnVzZXJJZA==');

@$core.Deprecated('Use res_getEventListDescriptor instead')
const res_getEventList$json = {
  '1': 'res_getEventList',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '10': 'color'},
    {'1': 'count', '3': 4, '4': 1, '5': 3, '10': 'count'},
    {'1': 'limit', '3': 5, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `res_getEventList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List res_getEventListDescriptor = $convert.base64Decode(
    'ChByZXNfZ2V0RXZlbnRMaXN0Eg4KAmlkGAEgASgDUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh'
    'QKBWNvbG9yGAMgASgJUgVjb2xvchIUCgVjb3VudBgEIAEoA1IFY291bnQSFAoFbGltaXQYBSAB'
    'KANSBWxpbWl0Eh0KCmNyZWF0ZWRfYXQYBiABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GA'
    'cgASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use req_getEventHistoryDescriptor instead')
const req_getEventHistory$json = {
  '1': 'req_getEventHistory',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `req_getEventHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List req_getEventHistoryDescriptor =
    $convert.base64Decode(
        'ChNyZXFfZ2V0RXZlbnRIaXN0b3J5EhcKB3VzZXJfaWQYASABKANSBnVzZXJJZA==');

@$core.Deprecated('Use res_getEventHistoryDescriptor instead')
const res_getEventHistory$json = {
  '1': 'res_getEventHistory',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'updated_at', '3': 2, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `res_getEventHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List res_getEventHistoryDescriptor = $convert.base64Decode(
    'ChNyZXNfZ2V0RXZlbnRIaXN0b3J5Eg4KAmlkGAEgASgDUgJpZBIdCgp1cGRhdGVkX2F0GAIgAS'
    'gJUgl1cGRhdGVkQXQ=');
