import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Dixre Enterprises'),
            accountEmail: Text('developers.dixre@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8Z3V5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Home'),
            subtitle: Text('Welcome to Dixre'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Inbox'),
            subtitle: Text('developers.dixre@gmail.com'),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}