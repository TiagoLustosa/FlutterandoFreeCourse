import 'package:firstflutterapp/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
    throw UnimplementedError();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                      'https://instagram.fjoi2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/146650094_461200204917300_8764563307721649724_n.jpg?tp=1&_nc_ht=instagram.fjoi2-1.fna.fbcdn.net&_nc_ohc=bOjeu8s6FCEAX9FQPKw&edm=ABfd0MgAAAAA&ccb=7-4&oh=a43b826d8b987fc2d46adcc39ace44d0&oe=609176D2&_nc_sid=7bff83'),
                ),
                accountName: Text('Tiago Lustosa'),
                accountEmail: Text('tiagolustosasantos@hotmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Tela de inicio'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Sair'),
              subtitle: Text('Logout'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Home Page',
        ),
        actions: [CustomSwitcher()],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador $counter'),
            CustomSwitcher(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.black,
                ),
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.black,
                ),
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
    throw UnimplementedError();
  }
}

class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
