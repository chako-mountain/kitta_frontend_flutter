// import 'dart:nativewrappers/_internal/vm/lib/ffi_struct_patch.dart';

import 'package:grpc/grpc.dart';
import 'package:kitta_backend_flutter/pkg/test.pbgrpc.dart';
import 'package:fixnum/fixnum.dart';

class CreateCutList {
  final bool thisIsCut;
  final int userId;
  final String name;
  final String? color;
  final int? count;
  final int? limit;
  final int? lateTime;
  final int? lateCount;

  const CreateCutList({
    required this.thisIsCut,
    required this.userId,
    required this.name,
    this.color,
    this.count,
    this.limit,
    this.lateTime,
    this.lateCount,
  });
}

/// gRPC クライアントクラス
class GrpcClient {
  late final ClientChannel _channel;
  late final CutListServiceClient cutListClient;

  /// コンストラクタ：チャンネルとクライアントを初期化
  GrpcClient() {
    _channel = ClientChannel(
      '10.0.2.2', // Android エミュレータから localhost にアクセスする場合
      port: 8081, // gRPC サーバーのポート
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(), // 暗号化なし
      ),
    );

    cutListClient = CutListServiceClient(_channel);
  }

  /// UUID を送信してユーザーIDを取得する
  ///
  /// サーバーと接続できなかった場合は null を返す
  Future<int?> getUserIdByUuid(String uuid) async {
    // final request = req_getUserByUuid()..uuid = uuid;
    final request = req_getUserByUuid();
    request.uuid = uuid;

    try {
      final response = await cutListClient.getUserByUuid(request);
      print("Received ID: ${response.id}");
      return response.id.toInt();
    } catch (e) {
      print("gRPC Error: $e");
      return null;
    }
  }

  Future<int?> CreateUser(String uuid) async {
    final request = reqcreateUser();
    request.uuid = uuid;

    try {
      final response = await cutListClient.createUser(request);
      print("Created User ID: ${response.id}");
      return response.id.toInt();
    } catch (e) {
      print("gRPC Error: $e");
      return -1;
    }
  }

  Future<void> CreateCutList(CreateCutList) async {
    final request = ReqCreateCutList();
    request.userId = Int64(CreateCutList.userId);
    request.name = CreateCutList.name;
    request.thisIsCut = CreateCutList.thisIsCut;
    request.color = CreateCutList.color;
    request.count = Int64(CreateCutList.count);
    request.limit = Int64(CreateCutList.limit);
    request.lateTime = Int64(CreateCutList.lateTime);
    request.lateCount = Int64(CreateCutList.lateCount);

    try {
      final response = await cutListClient.createCutList(request);
      print("Created CutList ID: ${response.id}");
    } catch (e) {
      print("gRPC Error: $e");
    }
  }

  /// チャンネルをシャットダウン
  Future<void> shutdown() async {
    await _channel.shutdown();
  }
}
