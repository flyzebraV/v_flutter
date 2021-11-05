import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TolyExpandTile extends StatefulWidget {
  @override
  _TolyExpandTileState createState() => _TolyExpandTileState();
}

class _TolyExpandTileState extends State<TolyExpandTile>
    with SingleTickerProviderStateMixin {
  var _crossFadeState = CrossFadeState.showFirst;

  bool get isFirst => _crossFadeState == CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade'),
      ),body:  Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
              GestureDetector(
                  onTap: _togglePanel,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.code),
                  ))
            ],
          ),
          _buildPanel()
        ],
      ),
    ),
    );
  }

  void _togglePanel() {
    setState(() {
      _crossFadeState =
          !isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond;
    });
  }

  Widget _buildPanel() => AnimatedCrossFade(
        firstCurve: Curves.easeInCirc,
        secondCurve: Curves.easeInToLinear,
        firstChild: Container(),
        secondChild: Container(
          height: 150,
          color: Colors.blue,
        ),
        duration: Duration(milliseconds: 300),
        crossFadeState: _crossFadeState,
      );
}
