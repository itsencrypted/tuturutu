import 'package:flutter/material.dart';
import 'package:tuturutu/app_state.dart';
import 'package:tuturutu/text_display.dart';
import 'package:tuturutu/text_edit.dart';
import 'package:provider/provider.dart';
import 'package:tuturutu/response_display.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project name',
      home: ChangeNotifierProvider<AppState>(
        builder: (_) => AppState(),
        child: MyHomePage(),
      )
    );
  }
}


//floatingActionButton: FloatingActionButton(
//onPressed: () {},
//child: Icon(Icons.add),
//backgroundColor: Colors.amberAccent,
//),
//bottomNavigationBar: BottomAppBar(
//color: Colors.greenAccent,
//child: Container(
//height: 50.0,
//),
//),
//floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
//    final appState = Provider.of<AppState>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [const Color(0xFF4ECDC4), const Color(0xFF66CC99)],),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextDisplay(),
              TextEditWidget(),
              RaisedButton(
                onPressed: () => appState.fetchData(),
                child: Text("Fetch Data from Network"),
              ),
              ResponseDisplay(),
            ],
          )

        ),
      ),
    );
  }
}
