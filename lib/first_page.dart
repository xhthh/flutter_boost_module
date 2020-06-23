import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

class FirstRouteWidget extends StatefulWidget {
  final Map param;

  FirstRouteWidget(this.param);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstRouteWidgetState();
  }
}

class _FirstRouteWidgetState extends State<FirstRouteWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('FirstPage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.param == null ? "未收到参数" :"接收参数："+ widget.param['Firstkey']),
            RaisedButton(
              child: Text('调用Android页面'),
              onPressed: () {
                //url://nativePage为PageRouter页面定义，Flutter调起Android页面
                FlutterBoost.singleton
                    .open('url://nativePage', urlParams: {'native': '参数->B'});
              }),
            RaisedButton(
              child: Text('关闭当前页面'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
