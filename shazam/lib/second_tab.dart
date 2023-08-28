// 두번째 페이지
import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                // end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue.shade300, Colors.blue.shade800])),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 400),
          child: Center(
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Shazam_icon.svg/1200px-Shazam_icon.svg.png",
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
