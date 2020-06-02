import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final FirebaseUser user;

  HomePage(this.user);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Instagram Clon',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Text('Instagram에 오신 것을 환영합니다.',
                      style: TextStyle(fontSize: 24.0)),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text('사진과 동영상을 보려면 팔로우 하세요.'),
                  Padding(padding: EdgeInsets.all(16.0)),
                  SizedBox(
                      width: 260.0,
                      child: Card(
                        elevation: 4.0, // 카드 그림자
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.all(4.0)),
                              SizedBox(
                                width: 80.0,
                                height: 80.0,
                                child: CircleAvatar(
                                  // 동그라미 사진
                                  backgroundImage: NetworkImage(
                                      widget.user.photoUrl),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(8.0)),
                              Text(widget.user.email,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold)),
                              Text(widget.user.displayName),
                              Padding(padding: EdgeInsets.all(8.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    // 네모 박스 사진1
                                    width: 70.0,
                                    height: 70.0,
                                    child: Image.network(
                                        'https://cdn.pixabay.com/photo/2015/06/19/09/39/lonely-814631__340.jpg',
                                        fit: BoxFit.cover),
                                  ),
                                  Padding(padding: EdgeInsets.all(1.0)),
                                  SizedBox(
                                    // 네모 박스 사진2
                                    width: 70.0,
                                    height: 70.0,
                                    child: Image.network(
                                        'https://cdn.pixabay.com/photo/2016/11/19/09/45/action-1838330__340.jpg',
                                        fit: BoxFit.cover),
                                  ),
                                  Padding(padding: EdgeInsets.all(1.0)),
                                  SizedBox(
                                    // 네모 박스 사진3
                                    width: 70.0,
                                    height: 70.0,
                                    child: Image.network(
                                        'https://cdn.pixabay.com/photo/2016/03/09/10/23/model-1246028__340.jpg',
                                        fit: BoxFit.cover),
                                  )
                                ],
                              ),
                              Padding(padding: EdgeInsets.all(4.0)),
                              Text('Facebook 친구'),
                              Padding(padding: EdgeInsets.all(4.0)),
                              RaisedButton(
                                  child: Text('팔로우'),
                                  color: Colors.blueAccent,
                                  textColor: Colors.white,
                                  onPressed: () {}),
                              Padding(padding: EdgeInsets.all(4.0)),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}