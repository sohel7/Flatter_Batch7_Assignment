import 'package:assignment_on_responsive_design/presentation/widgets/responsive_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.of(context).size;


    return ResponsiveBuilder(
        mobile: Scaffold(
            appBar: AppBar(
              title: const Text('Responsive Design'),
              centerTitle: true,
              backgroundColor: Colors.green,
            ),
            drawer: const Drawer(
              child: SafeArea(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home, color: Colors.green,size: 12,),
                      title: Text('Home',),
                      tileColor: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.settings, color: Colors.green,size: 12,),
                      title: Text('Settings',),
                    ),
                    ListTile(
                      leading: Icon(Icons.add, color: Colors.green,size: 12),
                      title: Text('Products'),
                    ),
                    ListTile(
                      leading: Icon(Icons.print, color: Colors.green,size: 12),
                      title: Text('Profile'),
                    ),

                  ],
                ),
              ),
            ),
            body: const ResponsiveBuilder(
              mobile: Center(
                child: Text('this is from Mobile'),
              ),
              tablet: Center(
                child: Text('this is from Tablet'),
              ),
              desktop: Center(
                child: Text('This os from Desktop'),
              ),)
        ),
        desktop: Scaffold(
            appBar: AppBar(
              title: const Text('Responsive Design'),
              centerTitle: true,
              backgroundColor: Colors.green,
            ),

            body: const Row(
              children: [
                Drawer(
                  child: SafeArea(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.home, color: Colors.green,size: 12,),
                          title: Text('Home',),
                          tileColor: Colors.grey,
                        ),
                        ListTile(
                          leading: Icon(Icons.settings, color: Colors.green,size: 12,),
                          title: Text('Settings',),
                        ),
                        ListTile(
                          leading: Icon(Icons.add, color: Colors.green,size: 12),
                          title: Text('Products'),
                        ),
                        ListTile(
                          leading: Icon(Icons.print, color: Colors.green,size: 12),
                          title: Text('Profile'),
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(child: Center(child: Text('This Is from Desktop'),))
              ],
            )
        ),);
  }
}
