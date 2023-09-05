// 두번째 페이지
import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue[300]!, Colors.blue[900]!])),
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                          // onPressed: () {},
                          onTap: () {
                            DefaultTabController.of(context)!.animateTo(0);
                          },
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                      Text(
                        "라이브러리",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                          // onPressed: () {},
                          onTap: () {
                            DefaultTabController.of(context)!.animateTo(2);
                          },
                          child: Icon(Icons.show_chart, color: Colors.white)),
                      Text(
                        "차트",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              "Shazam하려면 탭하세요",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  "https://i.ibb.co/hxNbZ8p/shazam.png",
                  color: Colors.white,
                  width: 130,
                  height: 130,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue[400],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        )));
  }
}
