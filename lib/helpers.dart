import 'package:flutter/material.dart';

// class DiagonalContainer extends StatelessWidget {
//   final double width;
//   final double height;
//   final Color color;
//   final Widget? child;

//   const DiagonalContainer({
//     super.key,
//     required this.width,
//     required this.height,
//     required this.color,
//     this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: DiagonalClipper(),
//       child: Container(
//         width: width,
//         height: height,
//         color: color,
//         child: child,
//       ),
//     );
//   }
// }

// class DiagonalClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.moveTo(0, size.height * 0.2); // Start from the top left, lower point
//     path.lineTo(size.width, 0); // Diagonal to the top right corner
//     path.lineTo(size.width, size.height); // Down to bottom right corner
//     path.lineTo(0, size.height); // Back to bottom left corner
//     path.close(); // Close the path
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

// class DiagonalContainer extends StatelessWidget {
//   final double width;
//   final double height;
//   final Color color;
//   final Widget? child;

//   const DiagonalContainer({
//     super.key,
//     required this.width,
//     required this.height,
//     required this.color,
//     this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: DiagonalClipper(),
//       child: Material(
//         elevation: 8,
//         borderRadius: const BorderRadius.all(Radius.circular(12)),
//         shadowColor: Colors.black,
//         child: Container(
//           width: width,
//           height: height,
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             borderRadius: const BorderRadius.all(Radius.circular(12)),
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Colors.white.withOpacity(0.8),
//                 color,
//                 Colors.black,
//               ],
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.white.withOpacity(0.8),
//                 offset: const Offset(-2, -2),
//                 blurRadius: 5,
//               ),
//               BoxShadow(
//                 color: Colors.black.withOpacity(1),
//                 offset: const Offset(4, 2),
//                 blurRadius: 6,
//                 spreadRadius: 2,
//               ),
//             ],
//           ),
//           child: child,
//         ),
//       ),
//     );
//   }
// }

// class DiagonalClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double radius = 24.0; // Adjust the corner radius here

//     final path = Path();
//     path.moveTo(
//         0, size.height * 0.2 + radius); // Start with rounded edge on top left
//     path.arcToPoint(
//       Offset(radius, size.height * 0.2),
//       radius: Radius.circular(radius),
//       clockwise: false,
//     );

//     path.lineTo(size.width - radius, 0); // Top diagonal edge
//     path.arcToPoint(
//       Offset(size.width, radius),
//       radius: Radius.circular(radius),
//       clockwise: true,
//     );

//     path.lineTo(size.width, size.height - radius); // Right vertical edge
//     path.arcToPoint(
//       Offset(size.width - radius, size.height),
//       radius: Radius.circular(radius),
//       clockwise: false,
//     );

//     path.lineTo(radius, size.height); // Bottom edge
//     path.arcToPoint(
//       Offset(0, size.height - radius),
//       radius: Radius.circular(radius),
//       clockwise: false,
//     );

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

// class DiagonalContainer extends StatelessWidget {
//   final double width;
//   final double height;
//   final Color color;
//   final Widget? child;

//   const DiagonalContainer({
//     super.key,
//     required this.width,
//     required this.height,
//     required this.color,
//     this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: DiagonalClipper(),
//       child: Material(
//         elevation: 8,
//         child: Container(
//           width: width,
//           height: height,
//           decoration: BoxDecoration(
//             gradient: const LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color.fromARGB(255, 30, 50, 150),
//                 Color.fromARGB(255, 11, 3, 70),
//                 Color.fromARGB(255, 5, 2, 40),
//               ],
//             ),
//             borderRadius: BorderRadius.circular(16),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.white.withOpacity(0.2),
//                 offset: const Offset(-40, -4), // Top-left offset
//                 blurRadius: 8,
//                 spreadRadius: 1,
//               ),
//               // Dark shadow for the bottom and right
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.4),
//                 offset: const Offset(8, 8), // Bottom-right offset
//                 blurRadius: 12,
//                 spreadRadius: 2,
//               ),
//             ],
//           ),
//           child: child,
//         ),
//       ),
//     );
//   }
// }

class DiagonalContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget? child;

  const DiagonalContainer({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 3,
          top: 1,
          child: ClipPath(
            clipper: DiagonalClipper(),
            child: Container(
              width: width,
              height: height + 2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(193, 255, 255, 255)
                        .withOpacity(0.2),
                    offset: const Offset(4, 4),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                  // Darker shadow for bottom and right
                ],
                //  color: Colors.white.withOpacity(0.2), // Light top-left shadow
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),

        ClipPath(
          clipper: DiagonalClipper(),
          child: Container(
            width: width + 2,
            height: height + 2,
            decoration: BoxDecoration(
              //color: const Color.fromARGB(106, 46, 46, 46).withOpacity(0.6),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  offset: const Offset(-8, -8),
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
                // Darker shadow for bottom and right
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: const Offset(8, 8),
                  blurRadius: 12,
                  spreadRadius: 2,
                ),
              ],
            ),
          ),
        ),

        // Main diagonal container with gradient and actual content
        ClipPath(
          clipper: DiagonalClipper(),
          child: Container(
            width: width,
            height: height,
            decoration: color == Colors.black
                ? const BoxDecoration()
                : BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 30, 50, 150),
                        Color.fromARGB(255, 11, 3, 70),
                        Color.fromARGB(255, 5, 2, 40),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      // Light shadow for top and left
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        offset: const Offset(-8, -8),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                      // Darker shadow for bottom and right
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: const Offset(8, 8),
                        blurRadius: 12,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
            child: child,
          ),
        ),
      ],
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double radius = 16.0;
    double diagonalHeight = 40.0; // Controls the diagonal slope

    // Start from the bottom left corner
    path.moveTo(0, size.height - radius);

    // Bottom left rounded corner
    path.arcToPoint(
      Offset(radius, size.height),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    // Bottom edge to the bottom right corner
    path.lineTo(size.width - radius, size.height);
    path.arcToPoint(
      Offset(size.width, size.height - radius),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    // Move vertically up to the top right corner with a rounded corner
    path.lineTo(size.width, radius);
    path.arcToPoint(
      Offset(size.width - radius, 0),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    // Diagonal line from top right to a lower point on the top left, maintaining a rounded corner
    path.lineTo(radius, diagonalHeight);
    path.arcToPoint(
      Offset(0, diagonalHeight + radius),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
