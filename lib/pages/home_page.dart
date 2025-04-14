import 'package:flutter/material.dart';
import 'package:smarthome/pages/profile_page.dart';
import 'package:smarthome/utils/smart_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 40.0;
  final double verticalPadding = 25.0;

  //List of smart deivices
  List mySmartDevices = [
    ["Smart Light", "lib/icons/idea.png", true],
    ["Smart AC", "lib/icons/air-conditioner.png", true],
    ["Smart TV", "lib/icons/smart-tv.png", true],
    ["Smart Fan", "lib/icons/fan.png", true],
    ["Smart Fridge", "lib/icons/refrigerator.png", true],
    ["Smart ", "lib/icons/machine.png", true],
  ];

  //power switch changed
  void powerSwitchChanged(bool value, int index) {
    setState(() {
      //toggle the power state of the device
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Custom APP BAR
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //menu icon
                  Image.asset(
                    'lib/icons/menu-button.png',
                    height: 45,
                    color: Colors.grey[800],
                  ),



                  //account icon
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()),
                      );
                    },
                    child: Icon(
                      Icons.person,
                      size: 45,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),



            SizedBox(height: 25),

            //Welcome home Varshith Kommi
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Home,",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text("VARSHITH KOMMI",
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.grey[800],
                      )),
                ],
              ),
            ),

            SizedBox(height: 25),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Divider(
                color: Colors.grey[400],
                thickness: 1,
              ),
            ),

            SizedBox(height: 25),

            // smart devices grid
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                "Smart Devices",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: 24),
              ),
            ),

            Expanded(
                child: GridView.builder(
                    itemCount: mySmartDevices.length,
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.all(20),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                    itemBuilder: (context, index) {
                      return SmartBox(
                        smartDeviceName: mySmartDevices[index][0],
                        iconPath: mySmartDevices[index][1],
                        powerOn: mySmartDevices[index][2],
                        onChanged: (value) => powerSwitchChanged(value, index),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
