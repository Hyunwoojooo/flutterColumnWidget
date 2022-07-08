import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Row(
            //verticalDirection: VerticalDirection.up, // Container를 아래서부터 쌓는다.
            // mainAxisSize: MainAxisSize.min ,// Container의 필수 공간만큼만 할당
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 3개의 Container가 같은 간격으로 배치
            // crossAxisAlignment: CrossAxisAlignment.end, // 가로축 끝점 정렬
            crossAxisAlignment: CrossAxisAlignment.stretch, // 가로방향으로 채우기 + Container의 width 설정을 안해도 된다.
            children: [
              Container(
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
      ),
    );
  }
}
