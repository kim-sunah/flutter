import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // 홈페이지 보여주기
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 음식 사진 데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "탑건: 매버릭",
        "imgUrl": "https://i.ibb.co/sR32PN3/topgun.jpg",
      },
      {
        "category": "마녀2",
        "imgUrl": "https://i.ibb.co/CKMrv91/The-Witch.jpg",
      },
      {
        "category": "범죄도시2",
        "imgUrl": "https://i.ibb.co/2czdVdm/The-Outlaws.jpg",
      },
      {
        "category": "헤어질 결심",
        "imgUrl": "https://i.ibb.co/gM394CV/Decision-to-Leave.jpg",
      },
      {
        "category": "브로커",
        "imgUrl": "https://i.ibb.co/MSy1XNB/broker.jpg",
      },
      {
        "category": "문폴",
        "imgUrl": "https://i.ibb.co/4JYHHtc/Moonfall.jpg",
      },
    ];

    // 화면에 보이는 영역
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Review'),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
        actions: [
          IconButton(
            icon: new Icon(Icons.perm_identity),
            tooltip: 'Hi!',
            onPressed: () => {},
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            decoration: InputDecoration(
              labelText: "영화 제목을 검색해주세요.",
              suffixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(),
            ),
          ),
        ),

        Divider(
          height: 20,
          color: Colors.grey,
        ), //Expanded 범위에 포함되지 않음
        Expanded(
            child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            String category = dataList[index]['category'];
            String imgUrl = dataList[index]['imgUrl'];
            return Card(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(
                    imgUrl,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Text(
                    category,
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ],
              ),
            );
          },
        ))
      ]),
    );
  }
}
