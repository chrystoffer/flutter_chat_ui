import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // notch transparent
      backgroundColor: Colors.indigo,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppBar(
              leading: Icon(Icons.more_vert),
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              title: Text('Chat'),
              centerTitle: true,
              backgroundColor: Colors.indigo,
              elevation: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.search),
                )
              ],
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height + 240,
        decoration: new BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? Theme.of(context).cardColor
              : Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(18.0),
            topRight: const Radius.circular(18.0),
          ),
        ),
        child: ListView.builder(
          itemCount: 26,
          itemBuilder: (context, i) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    "https://media-exp1.licdn.com/dms/image/C4D03AQH-X7AenooDvw/profile-displayphoto-shrink_100_100/0?e=1604534400&v=beta&t=3uu41paJLzrSdYcb5bPYdTXtdPj4KUg5z-hRoc1cwxI"),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'Chrystoffer Kugler Horochovec',
                style: TextStyle(fontSize: 12),
              ),
              subtitle: Text(
                'Chat UI Example',
                style: TextStyle(fontSize: 10),
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      '15:30',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Icon(
                      Icons.check,
                      color: Colors.indigo,
                      size: 12,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add),
        onPressed: () => null,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigo,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.chat,
                color: Colors.white,
              ),
              onPressed: () => null,
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () => null,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(
                    "https://media-exp1.licdn.com/dms/image/C4D03AQH-X7AenooDvw/profile-displayphoto-shrink_100_100/0?e=1604534400&v=beta&t=3uu41paJLzrSdYcb5bPYdTXtdPj4KUg5z-hRoc1cwxI"),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
