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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hello Flutter",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // 이미지 추가
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://avatars.githubusercontent.com/u/69501036?v=4",
                    width: 300,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Log in'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
