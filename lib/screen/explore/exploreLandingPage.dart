import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ExploreLandingPage extends StatefulWidget {
  const ExploreLandingPage({super.key});

  @override
  State<ExploreLandingPage> createState() => _ExploreLandingPageState();
}

class _ExploreLandingPageState extends State<ExploreLandingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
              child: Center(child: Text("RAPTEE DINO")),
            ),
            SizedBox(
              height: 500, // Adjust the height of the ModelViewer as needed
              child: ModelViewer(
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  src: 'assets/car2.glb',
                  animationCrossfadeDuration: 300,
                  alt: 'DINO',
                  id: "reveal",
                  cameraOrbit: "360deg 90deg 1.5m",
                  maxCameraOrbit: "infinity 90deg 2 bm",
                  minCameraOrbit: "infinity 20deg 1m",
                  loading: Loading.auto,
                  autoRotate: true,
                  cameraControls: true,
                  touchAction: TouchAction.panY,
                  orbitSensitivity: 1,
                  rotationPerSecond: "5deg",
                  shadowIntensity: 1,
                  shadowSoftness: 1,
                  autoRotateDelay: 0,
                  debugLogging: false,
                  disablePan: true,
                  skyboxImage: String.fromEnvironment('assets/sky.jpg')),
            ),
          ],
        ),
      ),
    );
  }
}
