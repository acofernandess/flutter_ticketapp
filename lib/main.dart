import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? primaryColor = Colors.red.shade600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Icon(
              Icons.menu_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 225,
            width: double.infinity,
            color: primaryColor,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),

                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.red.shade600,
                    size: 115,
                  ),
                  // backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                // CircleAvatar(
                //   radius: 65,
                //   backgroundColor: Colors.white,
                //   child: Icon(
                //     Icons.person_3_outlined,
                //     size: 100,
                //     color: primaryColor,
                //   ),
                // ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Joalysson Fernandes',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet,',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    Text(
                      'consectetur adipiscing elit. Sed',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    Text(
                      'eiusmod tempor incididunt ut',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 380,
            child: Column(
              children: [
                Divider(),
                ListTile(
                  title: Text('From'),
                  subtitle: Text('Your location'),
                  leading: Icon(
                    Icons.my_location,
                    color: primaryColor,
                    size: 35,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('To'),
                  subtitle: Text('Your Destiny'),
                  leading: Icon(
                    Icons.location_on_outlined,
                    color: primaryColor,
                    size: 35,
                  ),
                ),
                Divider(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TRANSPORT',
                style: TextStyle(fontSize: 25, color: primaryColor),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.local_taxi_rounded,
                color: primaryColor,
                size: 120,
              ),
              Icon(
                Icons.directions_bus,
                color: primaryColor,
                size: 120,
              ),
              Icon(
                Icons.directions_subway,
                color: primaryColor,
                size: 120,
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            color: primaryColor,
            width: 200,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Find Ticket',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: '',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on,
              ),
              label: '',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_sharp,
              ),
              label: '',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: '',
              backgroundColor: primaryColor),
        ],
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.white,
        useLegacyColorScheme: false,
        showUnselectedLabels: false,
        iconSize: 40,
      ),
    );
  }
}
