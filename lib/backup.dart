import 'package:flutter/material.dart';

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

class WatchDetailScreen extends StatelessWidget {
  final Color backgroundColor = const Color(0xFFE3CBB9); // Light beige background
  final Color accentColor = const Color(0xFFCC8E52);

  const WatchDetailScreen({super.key}); // Orange accent color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            // Back button and cart icon
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  neumorphicButton(
                    icon: Icons.arrow_back,
                    onPressed: () {},
                  ),
                  neumorphicButton(
                    icon: Icons.shopping_cart,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Watch image
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.8),
                    offset: const Offset(-6, -6),
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(6, 6),
                    blurRadius: 10,
                  ),
                ],
              ),
              height: 250,
              child: Image.network(
                alignment: Alignment.center,
                'https://citizenwatch.widen.net/content/a6jc8c860m/png/TSUYOSA.png?u=41zuoe&width=400&height=400&quality=80&crop=false&keep=c&color=FFFFFF00', // Replace with actual image URL
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            // Watch details
            const Text(
              "Iwc Portugieser",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Dec 2023",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "\$199",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),

            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            // Feature icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildFeatureIcon(Icons.backup, "Backup"),
                buildFeatureIcon(Icons.water, "Waterproof"),
                buildFeatureIcon(Icons.favorite, "Heart Rate"),
                buildFeatureIcon(Icons.wb_sunny, "Weather"),
              ],
            ),
            const SizedBox(height: 20),

            // Price and Preorder Button
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.8),
                    offset: const Offset(-4, -4),
                    blurRadius: 6,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(4, 4),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\$199",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: accentColor, // Orange color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
            ),
          ],
        ),
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
          color: const Color(0xFFE3CBB9),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.8),
              offset: const Offset(-4, -4),
              blurRadius: 6,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(4, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Icon(icon, color: const Color(0xFFCC8E52)),
      ),
    );
  }

  // Helper widget for feature icons with neumorphic effect
  Widget buildFeatureIcon(IconData iconData, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xFFE3CBB9),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.8),
                offset: const Offset(-4, -4),
                blurRadius: 6,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(4, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: Icon(iconData, color: const Color(0xFFCC8E52)),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
