import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Front Page',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WhatsAppFrontPage(),
    );
  }
}

class WhatsAppFrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search action
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Handle more action
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CameraPage(),
            ChatsPage(),
            StatusPage(),
            CallsPage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Handle FAB action based on the current tab
          },
          child: Icon(Icons.message),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Camera Page'),
    );
  }
}

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Example item count
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/img.png"),
          ),
          title: Text('Chat $index'),
          subtitle: Text('Last message...'),
          trailing: Text('5:00 PM'),
          onTap: () {
            // Handle chat tap
          },
        );
      },
    );
  }
}

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Status Page'),
    );
  }
}

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Example item count
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/img.png"),
          ),
          title: Text('Call $index'),
          subtitle: Text('Yesterday, 4:00 PM'),
          trailing: Icon(Icons.call),
          onTap: () {
            // Handle call tap
          },
        );
      },
    );
  }
}



