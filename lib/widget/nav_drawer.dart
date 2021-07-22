import 'package:flutter/material.dart';
import 'package:flutter_snactum/screens/post_screen.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Mahir Abd Alazim'),
          ),
          ListTile(
            title: Text('Posts'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PostScreen()));
            },
          ),
        ],
      )
    );
  }
}
