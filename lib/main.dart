import 'package:flutter/material.dart';
import 'package:watch_ui/helpers.dart';

import 'products.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: WatchDetailScreen(),
      ),
    ),
  );
}

class WatchDetailScreen extends StatefulWidget {
  const WatchDetailScreen({super.key});
  @override
  State<WatchDetailScreen> createState() => _WatchDetailScreenState();
}

class _WatchDetailScreenState extends State<WatchDetailScreen> {
  final Color backgroundColor = const Color.fromARGB(234, 11, 3, 70);
  final Color accentColor = const Color(0xFFCC8E52);

  // Track the index of the selected button
  int selectedIndex = -1; // -1 means no button is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: backgroundColor,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: 200,
                  decoration: BoxDecoration(
                    color: accentColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildFeatureIconCircle(
                    Icons.menu,
                  ),
                  neumorphicButton(
                    icon: Icons.shopping_cart,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 100,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.0,
                  top: 16,
                ),
                child: Text(
                  'Featured',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 120,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  top: 24,
                ),
                child: Stack(
                  children: [
                    Text(
                      'Products',
                      style: const TextStyle().copyWith(
                        fontSize: 40,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3
                          ..color = Colors.white,
                      ),
                    ),
                    const Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 200,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  top: 24,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.filter_list_alt,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis
                            .horizontal, // Set scroll direction to horizontal
                        child: Row(
                          children: [
                            buildFeatureIconCustom(
                                Icons.battery_charging_full, 0),
                            const SizedBox(width: 10),
                            buildFeatureIconCustom(Icons.water_drop, 1),
                            const SizedBox(width: 10),
                            buildFeatureIconCustom(Icons.monitor_heart, 2),
                            const SizedBox(width: 10),
                            buildFeatureIconCustom(Icons.wifi, 3),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // const Positioned(
            //     top: 340,
            //     left: 30,
            //     child: DiagonalContainer(
            //       color: Colors.black,
            //       width: 290,
            //       height: 330,
            //     )),
            Positioned(
                top: 340,
                left: 30,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductsScreen()),
                          ),
                          child: DiagonalContainer(
                            width: 240,
                            height: 320,
                            color: Colors.red,
                            child: Image.network(
                              //height: 50,
                              //width: 50,
                              alignment: Alignment.center,
                              'https://citizenwatch.widen.net/content/a6jc8c860m/png/TSUYOSA.png?u=41zuoe&width=400&height=400&quality=80&crop=false&keep=c&color=FFFFFF00', // Replace with actual image URL
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductsScreen()),
                          ),
                          child: DiagonalContainer(
                            width: 240,
                            height: 320,
                            color: Colors.red,
                            child: Image.network(
                              //height: 50,
                              //width: 50,
                              alignment: Alignment.center,
                              'https://citizenwatch.widen.net/content/a6jc8c860m/png/TSUYOSA.png?u=41zuoe&width=400&height=400&quality=80&crop=false&keep=c&color=FFFFFF00', // Replace with actual image URL
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
              bottom: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                ),
                child: Material(
                  elevation: 8,
                  // shadowColor: Colors.black,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                  child: Container(
                      height: 60,
                      width: 330,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            offset: const Offset(-2, -2),
                            blurRadius: 5,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(1),
                            offset: const Offset(4, 2),
                            blurRadius: 6,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                      255, 219, 127, 57), // Orange color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.home_outlined,
                                      color: Color.fromARGB(174, 255, 255, 255),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4.0, right: 4),
                                      child: Container(
                                        color: const Color.fromARGB(
                                            43, 71, 71, 71),
                                        height: 44,
                                        width: 3,
                                      ),
                                    ),
                                    const Text(
                                      "Home",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.0),
                                child: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(174, 255, 255, 255),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Icon(
                                  Icons.settings,
                                  color: Color.fromARGB(174, 255, 255, 255),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Icon(
                                  Icons.bookmark,
                                  color: Color.fromARGB(174, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget neumorphicButton(
      {required IconData icon, required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: backgroundColor.withOpacity(0.8),
              offset: const Offset(4, 3),
              blurRadius: 6,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(4, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }

  // Updated buildFeatureIconCustom to accept an index
  Widget buildFeatureIconCustom(IconData iconData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index; // Update selected index
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 8,
          shadowColor: Colors.black,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          child: Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: selectedIndex == index ? accentColor : backgroundColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.8),
                  offset: const Offset(-2, -2),
                  blurRadius: 5,
                ),
                BoxShadow(
                  color: selectedIndex == index
                      ? accentColor
                      : const Color.fromARGB(255, 0, 0, 0).withOpacity(1),
                  offset: const Offset(2, 2),
                  blurRadius: 6,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Icon(iconData,
                color: selectedIndex != index
                    ? const Color(0xFFE3CBB9)
                    : const Color.fromARGB(255, 248, 248, 248).withOpacity(1)),
          ),
        ),
      ),
    );
  }

  Widget buildFeatureIconCircle(IconData iconData) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 8,
            shadowColor: Colors.black,
            borderRadius: const BorderRadius.all(
              Radius.circular(32),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.8),
                    offset: const Offset(-2, -2),
                    blurRadius: 5,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    offset: const Offset(4, 2),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Icon(iconData, color: const Color(0xFFE3CBB9)),
            ),
          ),
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
