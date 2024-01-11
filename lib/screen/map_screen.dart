import 'package:dino/secrete/map_my_india_key.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:location/location.dart';
import 'package:mappls_gl/mappls_gl.dart';
import 'package:mappls_place_widget/mappls_place_widget.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    MapMyIndiaKey.setKey();
    setPermission();
  }

  void setPermission() async {
    if (!kIsWeb) {
      final location = Location();
      final hasPermissions = await location.hasPermission();
      if (hasPermissions != PermissionStatus.granted) {
        await location.requestPermission();
      }
    }
  }

  static const CameraPosition _kInitialPosition = CameraPosition(
    target: LatLng(13.017885, 80.173810),
    zoom: 14.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapplsMap(
        initialCameraPosition: _kInitialPosition,
        myLocationEnabled: true,
        myLocationTrackingMode: MyLocationTrackingMode.NoneCompass,
        onMapClick: (point, latlng) =>
            {Fluttertoast.showToast(msg: latlng.toString())},
      ),
    );
  }
}
