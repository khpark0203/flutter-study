import "package:flutter/material.dart";

void main() => runApp(MyApp()); // 앱 실행

// class MyApp extends StatelessWidget {
//   // 상태 변경이 없는 위젯. 한번 UI가 그려지면 그대로 있음.
//   @override
//   Widget build(BuildContext context) {
//     var imageUrl = 'https://images.pexels.com/photos/912110/' + 
//                    'pexels-photo-912110.jpeg?' + 
//                    'auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
//     // UI를 만드는 부분.
//     return MaterialApp(
//       // 구글 기본 디자인인 Material Design을 써서 앱을 만든다.
//       debugShowCheckedModeBanner: false, // debug 표시를 보지 않습니다.
//       title: '플러터 앱',
//       home: Scaffold(
//         appBar: AppBar(title: Text('아름다운 하늘')), // 앱의 상단 타이틀
//         // body: Text('첫 플러터 앱') // 앱 화면에 표시되는 텍스트
//         // body: Icon(Icons.save, color: Colors.blueAccent)
//         // body: Image.network(imageUrl)
//         body: Column(
//           children: <Widget>[
//             Text('플러터1'),
//             Text('플러터2'),
//             Icon(Icons.videocam, color: Colors.amber)
//           ],
//         )
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget { // 위젯 부분, 스테이트를 다루는 부분은 분리되어 있다. 
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int counter = 0; // Text UI에 표시될 값

  void increaseCounter() { // 버튼을 누르면 counter 값을 증가시킴
    setState(() {
      counter++;
    });
  }

  void decreaseCounter() { // 버튼을 누르면 counter 값을 감소시킴
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "첫 플러터 앱",
      home: Scaffold(
        appBar: AppBar(
          title: Text("내 플러터 앱"),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0), // 전체적으로 16씩 패딩을 주었음.
          child: Column( // 세로로 위젯을 배치 
            children: <Widget>[
              Text(
                "$counter",
                style: TextStyle(fontSize: 160.0),
              ),
              Row( // 가로로 위젯을 배치, 안에 버튼 2개가 들어가 있음. 
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 위젯끼리 같은 공간만큼 띄움
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red, // 버튼 색은 빨강색으로
                    onPressed: () { // 버튼을 누르면 안에 있는 함수를 실행
                      increaseCounter();
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      "-",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.green, // 버튼 색은 파란색으로
                    onPressed: () { // 버튼을 누르면 안에 있는 함수를 실행
                      decreaseCounter();
                    },
                  ),
                ],
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "비밀번호"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}