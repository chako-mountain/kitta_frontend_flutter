import 'package:flutter/material.dart';
import 'grpc/grpc_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateCutList {
  bool thisIsCut;
  int userId;
  String name;
  String? color;
  int? count;
  int? limit;
  int? lateTime;
  int? lateCount;

  CreateCutList({
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

void main() {
  // runApp(const MyApp());
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> storeUuid(String uuid) async {
    final prefs = await SharedPreferences.getInstance();
    final String? action = prefs.getString('user_uuid');
    print(action);

    if (action == null) {
      final client = GrpcClient();
      await prefs.setString('user_uuid', uuid);
      print("UUID stored: $uuid");
      final userid = await client.CreateUser(uuid);
      print(userid);
    } else {
      print("UUID already exists: $action");
    }
  }

  @override
  Widget build(BuildContext context) {
    final cutList = CreateCutList(
      thisIsCut: true,
      userId: 10,
      name: "testlist",
      color: "blue",
      count: 10,
      limit: 5,
      lateTime: 2,
      lateCount: 1,
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("gRPC Test")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Send UUID"),
                onPressed: () async {
                  final client = GrpcClient();
                  const uuid = "3dd25cc6-c92a-4941-b736-5045afab5eaf";
                  await storeUuid(uuid);
                  // await client.CreateCutList(cutList); // 必要に応じて有効化
                  await client.shutdown();
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text("Notifications"),
              content: const Text("Do you allow notifications?"),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Approve'),
                ),
              ],
            ),
          ),
          label: const Text('追加'),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
