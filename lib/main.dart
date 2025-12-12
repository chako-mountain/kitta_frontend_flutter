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

final myController1 = TextEditingController();
final myController2 = TextEditingController(text: "5");

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final myController = TextEditingController();

  final bool selectValue = false;

  // Future<void> CreateCutList(cutList) async {
  //   final client = GrpcClient();
  //   await client.CreateCutList(cutList);
  //   await client.shutdown();
  // }

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

    return Scaffold(
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
                await client.CreateCutList(cutList); // 必要に応じて有効化
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
            title: const Text("作成"),
            // content: const Text("Do you allow notifications?"),
            content: Column(
              mainAxisSize: MainAxisSize.min, // ダイアログの高さを最小に
              children: [createCutList()],
            ),

            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('キャンセル'),
              ),
              TextButton(
                onPressed: () {
                  final inputText1 = myController1.text; // ← ここで値を取得
                  print('Input Text: $inputText1');
                  Navigator.of(context).pop(); // ダイアログを閉じる
                  cutList.name = inputText1;
                },
                child: const Text('作成'),
              ),
            ],
          ),
        ),
        label: const Text('追加'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

class createCutList extends StatefulWidget {
  const createCutList({super.key});

  @override
  State<createCutList> createState() => _createCutListState();
}

class _createCutListState extends State<createCutList> {
  int selectValueCut = 1; // ← 修正ポイント
  int selectValueLate = 0; // ← 修正ポイント
  String result = "";
  bool latetime = false;
  int defaultlateTime = 5;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ChoiceChip(
              label: Text("切る"),
              // isSelected: selectValueCut == 1,
              selected: selectValueCut == 1,
              onSelected: (bool isSelected) {
                setState(() {
                  selectValueCut = isSelected ? 1 : 0;
                  result = selectValueCut.toString();
                  if (isSelected) {
                    selectValueLate = 0; // もう一方をオフにする
                  }
                  latetime = false;
                });
              },
            ),
            ChoiceChip(
              label: Text("遅刻"),
              selected: selectValueLate == 1,
              onSelected: (bool isSelected) {
                setState(() {
                  selectValueLate = isSelected ? 1 : 0;
                  result = selectValueLate.toString();
                  if (isSelected) {
                    selectValueCut = 0; // もう一方をオフにする
                  }
                  // TextField();
                  latetime = true;
                });
              },
            ),
          ],
        ),
        Text("授業名入力"),
        TextField(
          controller: myController1,
          // decoration: InputDecoration(hintText: '授業名'),
        ),
        if (latetime) Text("遅刻時間（分）入力"),
        TextField(
          controller: myController2,
          decoration: InputDecoration(hintText: '遅刻時間（分）'),
        ),
        // TextField(
        //   decoration: InputDecoration(
        //     labelText: "遅刻の理由",
        //     border: OutlineInputBorder(),
        //   ),
        // ),
        // Text("選択中: $result"),
      ],
    );
  }
}
