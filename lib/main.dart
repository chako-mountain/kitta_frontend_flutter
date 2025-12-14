import 'package:flutter/material.dart';
import 'package:kitta_backend_flutter/pkg/test.pb.dart';
import 'grpc/grpc_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

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

final bool namealaert = false;
bool thisisCut = true;
int userID = 0;
var cardcount = 0;

void main() {
  // runApp(const MyApp());
  runApp(MaterialApp(home: MyApp()));
}

final myController1 = TextEditingController();
final myController2 = TextEditingController(text: "5");

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // MyApp({super.key});

  // final myController = TextEditingController();

  final bool selectValue = false;

  Future<void> _loadCutLists() async {
    // idを取得
    userID = await storeUuid();

    // 取得したuserIDのカットリスト取得
    final client = GrpcClient();
    final result2 = await client.GetCutList(userID);
    setState(() {
      // DrawCardsに渡すデータを更新
      cardcount = result2.length;
      // DrawCards(cardNumber: cardCount);
    });
    await client.shutdown();
  }

  // Future<void> CreateCutList(cutList) async {
  //   final client = GrpcClient();
  //   await client.CreateCutList(cutList);
  //   await client.shutdown();
  // }

  final client = GrpcClient();

  @override
  void initState() {
    super.initState();
    storeUuid();
    _loadCutLists();
  }

  // ユーザーuuid登録関係
  Future<int> storeUuid() async {
    final prefs = await SharedPreferences.getInstance();
    final String? action = prefs.getString('user_uuid');

    if (action == null) {
      // ローカルにUUIDがない場合、新規生成
      var uuid = Uuid();
      String randomUuid = uuid.v4();
      await prefs.setString('user_uuid', randomUuid);
      print("UUID stored locally: $randomUuid");

      // DBに登録
      final int newUserID = await client.CreateUser(randomUuid) ?? 0;

      if (newUserID == -1) {
        // DBでUUIDが重複していた場合、再帰で新しいUUIDを作成
        return await storeUuid();
      }

      return newUserID;
    } else {
      // ローカルにUUIDがある場合、DBからuserIDを取得
      final int? fetchedID = await client.getUserIdByUuid(action);

      if (fetchedID != null) {
        return fetchedID;
      } else {
        // DBに存在しなければ登録
        final int? newUserID = await client.CreateUser(action);
        // nullの場合は0を返す
        return newUserID ?? 0;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final cutList = CreateCutList(
      thisIsCut: true,
      userId: userID,
      name: "testlist",
      color: "blue",
      count: 10,
      limit: 5,
      lateTime: 0,
      lateCount: 0,
    );

    return Scaffold(
      appBar: AppBar(title: const Text("gRPC Test")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // DrawCards(cardNumber: cardCount),
            // DrawCards(cardCount),
            // DrawCards(cardNumber: cardCount),
            // ListView(
            //   padding: const EdgeInsets.all(16),
            //   children: [DrawCards(cardNumber: 10)],
            // ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [DrawCards(cardNumber: cardcount)]),
              ),
            ),

            // ListView(children: [DrawCards(cardNumber: 10)]),
            ElevatedButton(
              child: const Text("Send UUID"),
              onPressed: () async {
                final client = GrpcClient();
                // const uuid = "3dd25cc6-c92a-4941-b736-5045afab5eae";
                await storeUuid();
                // await client.CreateCutList(cutList); // 必要に応じて有効化

                final result2 = await client.GetCutList(10);
                final length = result2.length;
                for (int i = 0; i < result2.length; i++) {
                  print("$i 番目の要素です");
                  print(result2[i]);
                }
                // print("これが0番目");
                // print(result2[0]);
                DrawCards(cardNumber: result2.length);

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
                onPressed: () async {
                  final inputText1 = myController1.text; // ← ここで値を取得
                  final inputText2 = myController2.text; // ← ここで値を取得
                  print('Input Text: $inputText1');
                  if (inputText1 == '') {
                    print('Error: 授業名が入力されていません。');
                    return;
                  }
                  Navigator.of(context).pop(); // ダイアログを閉じる

                  cutList.name = inputText1;
                  cutList.lateTime = int.tryParse(inputText2) ?? 5;
                  cutList.thisIsCut = thisisCut;

                  // カットリスト作成、登録
                  await client.CreateCutList(cutList);

                  setState(() {
                    _loadCutLists();
                  });

                  // await client.CreateCutList(cutList);

                  // final result2 = await client.GetCutList(10);
                  // print(result2[0]);

                  // final namealaert = true;
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

// class drawcards extends StatefulWidget {
//   const drawcards({super.key});

//   final int cardnumber = 0;

//   @override
//   State<drawcards> createState() => _drawcardsState();
// }

// class _drawcardsState extends State<drawcards> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text("一つ目の要素"),

//         Container(
//           width: 120,
//           height: 80,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             border: Border.all(color: Colors.black, width: 2),
//           ),
//           child: Text("こんにちは"),
//         ),
//       ],
//     );
//   }
// }

class DrawCards extends StatefulWidget {
  final int cardNumber;

  const DrawCards({super.key, required this.cardNumber});

  @override
  State<DrawCards> createState() => _DrawCardsState();
}

class _DrawCardsState extends State<DrawCards> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("カード一覧"),

        for (int i = 0; i < widget.cardNumber; i++)
          Container(
            margin: const EdgeInsets.all(8),
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 2),
            ),
            alignment: Alignment.center,
            child: Text('こんにちは ${i + 1}'),
          ),
      ],
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
  void initState() {
    super.initState();
    // _loadCutLists();
  }

  // Future<void> _loadCutLists() async {
  //   final client = GrpcClient();
  //   final result2 = await client.GetCutList(10);
  //   setState(() {
  //     // DrawCardsに渡すデータを更新
  //     final cardCount = result2.length;
  //     DrawCards(cardNumber: cardCount);
  //   });
  //   await client.shutdown();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Expanded(
        //   child: ListView(
        //     padding: const EdgeInsets.all(16),
        //     children: [DrawCards(cardNumber: 10)],
        //   ),
        // ),
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
                  thisisCut = true;
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
                  thisisCut = false;
                });
              },
            ),
          ],
        ),
        Text("授業名入力"),
        if (namealaert)
          Text("授業名を入力してください", style: TextStyle(color: Colors.red)),
        TextField(
          controller: myController1,
          // decoration: InputDecoration(hintText: '授業名'),
        ),
        if (latetime) ...[
          Text("遅刻時間入力 (分)"),
          TextField(
            controller: myController2,
            // decoration: InputDecoration(hintText: '遅刻時間（分）'),
          ),
        ],

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
