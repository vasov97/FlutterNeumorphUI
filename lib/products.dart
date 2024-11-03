import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  final Color backgroundColor = const Color.fromARGB(234, 11, 3, 70);
  // Color(0xFFE3CBB9); // Light beige background
  final Color accentColor = const Color(0xFFCC8E52);

  const ProductsScreen({super.key}); // Orange accent color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: accentColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                width: double.infinity,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 228, 139, 71),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                              Positioned(
                                child: neumorphicButton(
                                  icon: Icons.shopping_cart,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Name:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        'Citizen Watch',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        'Date:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        'Nov 2024',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        'Price:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        '\$199',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.only(
                  left: 32,
                ),
                child: Text(
                  "Citizen Watch",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.only(left: 32.0, bottom: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 136, 136, 136),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: buildFeatureIcon(Icons.backup, "Backup"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: buildFeatureIcon(Icons.water, "Waterproof"),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: buildFeatureIcon(Icons.favorite, "Heart Rate"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: buildFeatureIcon(Icons.wb_sunny, "Weather"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
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
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text(
                                  '\$',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.0,
                                  bottom: 4,
                                ),
                                child: Text('199',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24)),
                              ),
                            ],
                          ),
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
                                child: const Text(
                                  "Preorder",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 128.0, right: 16),
                child: Image.network(
                  height: 200,
                  width: 120,
                  alignment: Alignment.center,
                  'https://citizenwatch.widen.net/content/a6jc8c860m/png/TSUYOSA.png?u=41zuoe&width=400&height=400&quality=80&crop=false&keep=c&color=FFFFFF00', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper widget for neumorphic button effect
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

  // Helper widget for feature icons with neumorphic effect
  Widget buildFeatureIcon(IconData iconData, String label) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 8,
            shadowColor: Colors.black,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: backgroundColor,
                // gradient: LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [
                //     Colors.white.withOpacity(0.8),
                //     backgroundColor,
                //     Colors.black,
                //   ],
                // ),
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
              child: Icon(iconData, color: const Color(0xFFE3CBB9)),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
