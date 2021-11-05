import 'package:flutter/material.dart';

class Expansiontile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var items = ["a", "b", "c"];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Expansion Tile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            ExpansionTile(
              title: Text(
                "Title",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                ExpansionTile(
                  title: Text(
                    'Sub title',
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('data'),
                    )
                  ],
                ),
                ListTile(
                  title: Text('data'),
                )
              ],
            ),
            ExpansionTile(
              onExpansionChanged: (e) {
                //Your code
              },
              title: Text("标题"),
              leading: Text('头部'),
              trailing: Text('尾部'),
              backgroundColor: Colors.deepPurpleAccent,
              collapsedBackgroundColor: Colors.orange,
              textColor: Colors.white,
              collapsedTextColor: Colors.black87,
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(items[index]);
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
